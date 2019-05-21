
## Repeat Tests

### NOAA dataset

- 33 Million Rows
- 947.3MB download (9.0 GB uncompressed)

Creates Index: weather-data-2016


### Delete Index

To clean up after a test

```
kubectl exec -it elasticsearch-master-0 bash

curl localhost:9200/_cat/indices

curl -XDELETE localhost:9200/weather-data-2016
```

### Run Tests from Esrally Pod

```
kubectl apply -f esrally.yal
```

Connect to Pod

```
kubectl get pods
kubectl exec -it esrally-6c767c85f9-msh7l tmux
```


### Elasticsearch No Plugins

Deployed from Elasticsearch Helm with no plugins.

```
esrally configure
esrally --track=noaa --target-hosts=elasticsearch-master:9200 --pipeline=benchmark-only --include-tasks="index" --report-file=report.md
```


|   Lap |                                                         Metric |   Task |    Value |   Unit |
|------:|---------------------------------------------------------------:|-------:|---------:|-------:|
|   All |                                                 Min Throughput |  index |  14994.9 | docs/s |
|   All |                                              Median Throughput |  index |    30630 | docs/s |
|   All |                                                 Max Throughput |  index |  33939.5 | docs/s |


### Elasticsearch no Persistent Storage

Deployed using custom manifests.
- es-svcs.yaml
- es3.yaml

```
esrally configure
esrally --track=noaa --target-hosts=es-0:9200 --pipeline=benchmark-only --include-tasks="index" --report-file=report.md
```


|   Lap |                                                         Metric |   Task |    Value |   Unit |
|------:|---------------------------------------------------------------:|-------:|---------:|-------:|
|   All |                                                 Min Throughput |  index |  13700.7 | docs/s |
|   All |                                              Median Throughput |  index |  28752.9 | docs/s |
|   All |                                                 Max Throughput |  index |  31656.2 | docs/s |


Repeated test sending to all three nodes

```
esrally configure
esrally --track=noaa --target-hosts=es-0:9200,es-1:9200,es-2:9200 --pipeline=benchmark-only --include-tasks="index" --report-file=report.md

```
|   Lap |                                                         Metric |   Task |    Value |   Unit |
|------:|---------------------------------------------------------------:|-------:|---------:|-------:|
|   All |                                                 Min Throughput |  index |  25042.9 | docs/s |
|   All |                                              Median Throughput |  index |  29362.8 | docs/s |
|   All |                                                 Max Throughput |  index |  33221.5 | docs/s |


### A4IOT Install of Elasticsearch

```
esrally configure
esrally --track=noaa --target-hosts=datastore-elasticsearch-client:9200 --pipeline=benchmark-only --include-tasks="index" --report-file=report.md
```

|   Lap |                                                         Metric |   Task |    Value |   Unit |
|------:|---------------------------------------------------------------:|-------:|---------:|-------:|
|   All |                                                 Min Throughput |  index |  12783.6 | docs/s |
|   All |                                              Median Throughput |  index |  34136.9 | docs/s |
|   All |                                                 Max Throughput |  index |  35069.8 | docs/s |


### Summary

All of the tests today were around 30 to 35k/s.  Did not see the faster rates I got at end of last week.





------------------

### Deploy Es 

This deployment did not define resources; it's the same as I deployed and tested on 14th of May.

In Folder: elasticsearch/docker

```
kubectl apply -f es-svcs.yaml
kubectl apply -f es3b.yaml
```


In Folder: elasticsearch/install/aks/esrally
```
kubectl apply -f esrally.yaml
kubectl exec -it  esrally-6c767c85f9-6kkml tmux
```

Ran Test

```
esrally configure
esrally --track=geonames --target-hosts=es:9200 --pipeline=benchmark-only --include-tasks="index-append" --report-file=report.md
```

Also tested

```
esrally --track=noaa --target-hosts=es-0:9200 --pipeline=benchmark-only --include-tasks="index" --report-file=report.md
```

Also monitored using rttest.

```
java -cp target/rttest.jar com.esri.rttest.mon.ElasticIndexMon http://es-0:9200/weather-data-2016
```

Both geonames and noaa gave results in 6-7k/s.   

This is worse than yesterday 30k/s and much less than 14 May 2019 results (80k/s); I'm not sure what changed.


### Elasticstore A4IOT Datastore 

Increased from two to three nodes.  

```
esrally configure
esrally --track=geonames --target-hosts=datastore-elasticsearch-client:9200 --pipeline=benchmark-only --include-tasks="index-append" --report-file=report.md
```

|   Lap |                                                         Metric |          Task |    Value |   Unit |
|------:|---------------------------------------------------------------:|--------------:|---------:|-------:|
|   All |                                                 Min Throughput | index-append |   26823.5 | docs/s |
|   All |                                              Median Throughput | index-append |     28252 | docs/s |
|   All |                                                 Max Throughput | index-append |   29489.2 | docs/s |


### Elasticsearch Operator

Testing Elasticsearch Operator [https://github.com/zalando-incubator/es-operator/blob/master/docs/GETTING_STARTED.md](https://github.com/zalando-incubator/es-operator/blob/master/docs/GETTING_STARTED.md)


Deployed esrally pod to same namespace; I couldn't access the svc from pods in default namespace.

```
kubectl -n es-operator-demo apply -f esrally.yaml
```

Exec'd into the pod

```
kubectl -n es-operator-demo get pods
kubectl -n es-operator-demo exec -it es-operator-7dccbcbc56-chr4j
```

Ran a test

```
esrally configure
esrally --track=geonames --target-hosts=es-data-simple:9200 --pipeline=benchmark-only --include-tasks="index-append" --report-file=report.md
```

|   Lap |                                                         Metric |          Task |    Value |   Unit |
|------:|---------------------------------------------------------------:|--------------:|---------:|-------:|
|   All |                                                 Min Throughput | index-append |   25142.4 | docs/s |
|   All |                                              Median Throughput | index-append |   25596.9 | docs/s |
|   All |                                                 Max Throughput | index-append |   27224.2 | docs/s |

Also monitored rate with rttest.


```
kubectl -n es-operator-demo apply -f rttest-mon.yaml
kubectl -n es-operator-demo exec -it rttest-mon-0 tmux
```


```
cd /opt/rttest
java -cp target/rttest.jar com.esri.rttest.mon.ElasticIndexMon http://es-data-simple:9200/geonames
```

Rate was about the same
Loading at 300k/s

