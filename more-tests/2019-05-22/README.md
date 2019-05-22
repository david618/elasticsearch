


### Running Elasticsearch on VM's (no k8s)

Created Azure Cluster with 3 D16sv3 nodes and installed Elasticsearch 7.0.0 on those nodes.

#### geonames

```
esrally --track=geonames --target-hosts=a1:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```


```
java -cp target/rttest.jar com.esri.rttest.mon.ElasticIndexMon http://a1:9200/geonames

```

- ElasticIndexMon: 98k/s
- esrally often reports an error: ``[WARNING] No throughput metrics available for [index-append]. Likely cause: The benchmark ended already during warmup. ``

```
curl -XDELETE a1:9200/geonames
```

#### noaa

```
java -cp target/rttest.jar com.esri.rttest.mon.ElasticIndexMon http://a1:9200/weather-data-2016
```

```
esrally --track=noaa --target-hosts=a1:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index" --report-file=report.md
```

- ElasticIndexMon: 57k/s
- esrally: 59k/s

```
curl -XDELETE a1:9200/weather-data-2016
```

### Observations

Running test on these VM's helped me identify an error I was making when running the tests. Trying to make the tests quicker by only specifing a few tasks (e.g. index-append) impacted the output especially for geonames.   Also geonames index-append often would not give results; perhaps because the data loaded faster than a "warm up" period.  



### Run Esrally from Extra VM on Managed Cluster

Running Esrally from K8S pod works; however, after each run some Esrally processes are left behind in a "defunct" status.  Tried to delete using "kill -9"; however, they would not stop.  Restarting the pod was the only solution.  Therefore, for each test the test data has to be downloaded again. The pod also failed when running very large tracks (e.g. nyc_taxis) which downloads 4.5GB and extracts to 74.3GB.  This filled up the disk of the AKS node and crashed.  The pod would need to be created with persistent data volume and test data would need to be saved to that volume instead of the default .rally folder in the users home directory; this can be done using ```esrally configure --advanced-config```

#### Add another Test VM

- Ubuntu 18.04 Server  
- D16sv3
  - Used AKS vnet.  
  - VM creates with 30G drive.  To small for many tests.  Stopped VM and increased root disk to 512MB; restarted VM.

**Note:** It took a few minutes after increasing disk size before I could ssh into the server.


#### Install Esrally Ubuntu 18.04

```
sudo apt-get install gcc python3-pip python3-dev
sudo apt-get install git
sudo apt-get install openjdk-8-jre
```

```
pip3 install esrally
```

```
sudo vi /etc/environment
```

Add line
```
JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
```

Append to PATH
```
:~/.local/bin/
```

Exit and login again.  

```
esrally configure
```

#### Create Internal Load Balancer

```
kind: Service
metadata:
  name: datastore-elasticsearch-client-ilb
  annotations:
    service.beta.kubernetes.io/azure-load-balancer-internal: "true"
spec:
  type: LoadBalancer
  ports:
  - port: 9200
  selector:
    app: datastore-elasticsearch-client
```


#### Run Tests

##### geonames


```
kubectl get svc | grep datastore-elasticsearch-client-ilb
```

Using "External-IP"

```
curl -XDELETE 10.240.0.11:9200/geonames
```


```
esrally --track=geonames --target-hosts=10.240.0.11:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```

Esrally often outputs this with Geonames:

```
[WARNING] No throughput metrics available for [index-append]. Likely cause: The benchmark ended already during warmup.
```


#### Installed rttest

```
git clone https://github.com/david618/rttest
sudo apt-get install maven
sudo apt install openjdk-8-jdk-headless
cd rttest
mvn install
```

#### Start Monitor

```
java -cp target/rttest.jar com.esri.rttest.mon.ElasticIndexMon http://10.240.0.11:9200/geoname
```

You'll see messages that "Index may not exist";  That's expected at beginning.

Now return esrally track.

The ElasticIndexMon will report rates as the data is loading.

|Query Number|Sample Number|Epoch (ms)    |Time (s) |Count             |Linear Reg. Rate  |Rate From Previous|Rate From First   |
|------------|-------------|--------------|---------|------------------|------------------|------------------|------------------|
|          1 |           1 |1558532512975 |       0 |          485,448 |                  |                  |                  |
|          2 |           2 |1558532522975 |      10 |        1,533,196 |          104,775 |          104,775 |          104,775 |
|          3 |           3 |1558532535451 |      22 |        3,011,689 |          112,645 |          118,507 |          112,397 |
|          4 |           4 |1558532542989 |      30 |        3,851,256 |          112,998 |          111,378 |          112,141 |
|          5 |           5 |1558532552977 |      40 |        4,827,692 |          110,135 |           97,761 |          108,551 |
|          6 |           6 |1558532562976 |      50 |        5,729,747 |          106,422 |           90,215 |          104,884 |
|          7 |           7 |1558532578507 |      65 |        6,723,878 |           97,740 |           64,009 |           95,197 |
|          8 |           8 |1558532582981 |      70 |        7,075,000 |           94,205 |           78,481 |           94,128 |
|          9 |           9 |1558532592976 |      80 |        7,961,760 |           92,058 |           88,720 |           93,453 |
|         10 |          10 |1558532604591 |      91 |        9,191,546 |           91,758 |          105,879 |           95,028 |
|         11 |          11 |1558532612975 |     100 |       10,147,305 |           92,420 |          113,998 |           96,619 |
|         12 |          12 |1558532622978 |     110 |       11,039,292 |           92,690 |           89,172 |           95,941 |
|         13 |          13 |1558532632974 |     119 |       11,391,933 |           90,981 |           35,278 |           90,888 |
|         14 |          14 |1558532642976 |     130 |       11,396,505 |           87,316 |              457 |           83,931 |

The Average Rate was about 91k/s.  

This time Esrally also reported Throughput Median: 92k/s.

##### noaa 

This dataset is larger.

###### Delete Index


```
curl -XDELETE 10.240.0.11:9200/weather-data-2016
```


###### Start rttest


```
java -cp target/rttest.jar com.esri.rttest.mon.ElasticIndexMon http://10.240.0.11:9200/weather-data-2016
```


###### Start Test

All tasks 

```
esrally --track=noaa --target-hosts=10.240.0.11:9200 --pipeline=benchmark-only --report-file=report.md
```

This full test takes a long time. For three node cluster it took:  30  min.


The tasks must include delete-index and create-index; otherwise the index will be created with default shards and replication which will give much worse results.

```
esrally --track=noaa --target-hosts=10.240.0.11:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index" --report-file=report.md
```

- ElasticIndexMon:  57k/s
- esrally: 60k/s


#### Index Settings

These are the index settings created by the tests.

```
curl 10.240.0.11:9200/geonames?pretty
```

```
"settings" : {
      "index" : {
        "number_of_shards" : "5",
        "provided_name" : "geonames",
        "creation_date" : "1558532500890",
        "store" : {
          "type" : "hybridfs"
        },
        "number_of_replicas" : "0",
        "uuid" : "ft20GPdCT02_2ov66F0qxg",
        "version" : {
          "created" : "7000099"
        }
      }
    }
```

```
curl 10.240.0.11:9200/weather-data-2016?pretty
```

```
    "settings" : {
      "index" : {
        "number_of_shards" : "1",
        "provided_name" : "weather-data-2016",
        "merge" : {
          "policy" : {
            "max_merged_segment" : "100GB"
          }
        },
        "creation_date" : "1558533321968",
        "number_of_replicas" : "0",
        "queries" : {
          "cache" : {
            "enabled" : "false"
          }
        },
        "uuid" : "uhJ01tK-Q1WGaRqIPg5XCw",
        "version" : {
          "created" : "7000099"
        }
      }
    }

```



### Updated Esrally Docker Image 

Changed from Deployment to StatefulSet

The image now starts with esrally already configured for /opt/rally

esrally configure --advanced-config
- benchmark root: /opt/rally
- Defaults for rest

I copied the rally.ini file into the docker image; so now it will be configured on startup.

### Using esrally-ss 

This is a Stateful Set version of Esrally; which includes a Persistent Volume

#### Start Monitor

```
kubectl exec -it rttest-mon-0 tmux

curl -XDELETE http://datastore-elasticsearch-client:9200/geonames

java -cp target/rttest.jar com.esri.rttest.mon.ElasticIndexMon http://datastore-elasticsearch-client:9200/geonames
```

### Run Test

```
esrally --track=geonames --target-hosts=datastore-elasticsearch-client:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```

- ElasticIndexMon: 99k/s
- esrally: ``[WARNING] No throughput metrics available for [index-append]. Likely cause: The benchmark ended already during warmup.``

Now you can delete pod and start new test without having to run esrally configure and if data is downloaded it won't need to download again.
