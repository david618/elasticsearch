

#### Esrally Test on Datastore 

**10May19**

Ran Esrally geonames track against datastore created by A4IOT install. 

Datastore (Elasticsearch 7.0.0)
- 3 Masters
- 3 Client (Data/Ingest)

##### Deployed Pod for Esrally

Exec into the Esrally pod

```
esrally configure
esrally --track=geonames --target-hosts=datastore-elasticsearch-client:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```


##### Results

|   Lap |                                                         Metric |         Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|----------:|-------:|
|   All |                                                 Min Throughput | index-append |   15767.2 | docs/s |
|   All |                                              Median Throughput | index-append |   16962.8 | docs/s |
|   All |                                                 Max Throughput | index-append |   18021.6 | docs/s |
|   All |                                        50th percentile latency | index-append |   2037.93 |     ms |
|   All |                                        90th percentile latency | index-append |   3724.79 |     ms |
|   All |                                        99th percentile latency | index-append |   4842.05 |     ms |
|   All |                                      99.9th percentile latency | index-append |   5124.87 |     ms |
|   All |                                       100th percentile latency | index-append |    5326.7 |     ms |
|   All |                                   50th percentile service time | index-append |   2037.93 |     ms |
|   All |                                   90th percentile service time | index-append |   3724.79 |     ms |
|   All |                                   99th percentile service time | index-append |   4842.05 |     ms |
|   All |                                 99.9th percentile service time | index-append |   5124.87 |     ms |
|   All |                                  100th percentile service time | index-append |    5326.7 |     ms |
|   All |                                                     error rate | index-append |         0 |      % |


#### Tried Running Esrally Default Test

This test downloads and installs Elasticsearch and performance tests itself.

**NOTE:** Discovered the Dockerfile was not setting Java Path Correctly


```
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
esrally configure
esrally --track=geonames --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```

This was generated an error about JDK saying I needed JDK 12 not JDK 8.

Tried JDK 11

```
apt-get udpate
apt-get install openjdk-11-jre
export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64
```

Same error.  Google search results said the issue was in the esrally command. 

**NOTE:** Sometimes rally processes don't stop and esrally will not run a second time.  Workaround; delete the Esrally pod and the deployment will spin up a new pod.

Tried this variant;

```
esrally --distribution-version=7.0.0  --include-tasks="delete-index,create-index,index-append"
```

New error; Esrally says you can't run as root.


#### Running Esrally Test from one of AKS Nodes

Added inbound rule to allow port 22.  Added a public ip to node 0.  Secure shelled into node 0.


##### Installed Esrally


```
sudo apt-get update
sudo apt-get install -y gcc python3-pip python3-dev git openjdk-8-jre tmux curl vim
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
pip3 install esrally
```

Ran Test

```
esrally --distribution-version=7.0.0  --include-tasks="delete-index,create-index,index-append"
```

|   Lap |                                                         Metric |         Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|----------:|-------:|
|   All |                                                 Min Throughput | index-append |   47528.9 | docs/s |
|   All |                                              Median Throughput | index-append |   50212.3 | docs/s |
|   All |                                                 Max Throughput | index-append |     53890 | docs/s |
|   All |                                        50th percentile latency | index-append |   549.946 |     ms |
|   All |                                        90th percentile latency | index-append |   1464.17 |     ms |
|   All |                                        99th percentile latency | index-append |   5195.47 |     ms |
|   All |                                       100th percentile latency | index-append |   8705.36 |     ms |
|   All |                                   50th percentile service time | index-append |   549.946 |     ms |
|   All |                                   90th percentile service time | index-append |   1464.17 |     ms |
|   All |                                   99th percentile service time | index-append |   5195.47 |     ms |
|   All |                                  100th percentile service time | index-append |   8705.36 |     ms |
|   All |                                                     error rate | index-append |         0 |      % |


Results single node (no AKS) were 50k/s; results on AKS were with three nodes 17k/s. 
