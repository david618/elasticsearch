#### 3 Node ES 6.7.0

Installed using [Helm Stable Elasticsearch Chart](https://github.com/helm/charts/tree/master/stable/elasticsearch)

- 3 masters
- 2 data
- 2 client

Esrally using noaa track.

```
esrally configure
esrally --track=noaa --target-hosts=datastore-elasticsearch:9200 --pipeline=benchmark-only --include-tasks="index" --report-file=report.md
```


|   Lap |                                                         Metric |   Task |    Value |   Unit |
|------:|---------------------------------------------------------------:|-------:|---------:|-------:|
|   All |                                                 Min Throughput |  index |   4439.2 | docs/s |
|   All |                                              Median Throughput |  index |  47524.7 | docs/s |
|   All |                                                 Max Throughput |  index |  51563.8 | docs/s |



#### 3 Node ES 7.0.1

Using latest [Elasticsearch Helm Chart](https://github.com/elastic/helm-charts/tree/master/elasticsearch)

- 3 node with 14 cpu and 50Gi mem each 

Esrally results from running noaa track with index task.


|   Lap |                                                         Metric |   Task |    Value |   Unit |
|------:|---------------------------------------------------------------:|-------:|---------:|-------:|
|   All |                     Cumulative indexing time of primary shards |        |  52.8259 |    min |
|   All |             Min cumulative indexing time across primary shards |        |  52.8259 |    min |
|   All |          Median cumulative indexing time across primary shards |        |  52.8259 |    min |
|   All |             Max cumulative indexing time across primary shards |        |  52.8259 |    min |
|   All |            Cumulative indexing throttle time of primary shards |        |        0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |        |        0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |        |        0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |        |        0 |    min |
|   All |                        Cumulative merge time of primary shards |        |  25.2918 |    min |
|   All |                       Cumulative merge count of primary shards |        |       52 |        |
|   All |                Min cumulative merge time across primary shards |        |  25.2918 |    min |
|   All |             Median cumulative merge time across primary shards |        |  25.2918 |    min |
|   All |                Max cumulative merge time across primary shards |        |  25.2918 |    min |
|   All |               Cumulative merge throttle time of primary shards |        |  17.3073 |    min |
|   All |       Min cumulative merge throttle time across primary shards |        |  17.3073 |    min |
|   All |    Median cumulative merge throttle time across primary shards |        |  17.3073 |    min |
|   All |       Max cumulative merge throttle time across primary shards |        |  17.3073 |    min |
|   All |                      Cumulative refresh time of primary shards |        |  0.48365 |    min |
|   All |                     Cumulative refresh count of primary shards |        |       47 |        |
|   All |              Min cumulative refresh time across primary shards |        |  0.48365 |    min |
|   All |           Median cumulative refresh time across primary shards |        |  0.48365 |    min |
|   All |              Max cumulative refresh time across primary shards |        |  0.48365 |    min |
|   All |                        Cumulative flush time of primary shards |        |  3.20255 |    min |
|   All |                       Cumulative flush count of primary shards |        |       22 |        |
|   All |                Min cumulative flush time across primary shards |        |  3.20255 |    min |
|   All |             Median cumulative flush time across primary shards |        |  3.20255 |    min |
|   All |                Max cumulative flush time across primary shards |        |  3.20255 |    min |
|   All |                                             Total Young Gen GC |        |   67.616 |      s |
|   All |                                               Total Old Gen GC |        |    0.212 |      s |
|   All |                                                     Store size |        |  18.7468 |     GB |
|   All |                                                  Translog size |        |  1.10807 |     GB |
|   All |                                         Heap used for segments |        |  16.5418 |     MB |
|   All |                                       Heap used for doc values |        | 0.383331 |     MB |
|   All |                                            Heap used for terms |        |  13.0453 |     MB |
|   All |                                            Heap used for norms |        | 0.176697 |     MB |
|   All |                                           Heap used for points |        |  1.22457 |     MB |
|   All |                                    Heap used for stored fields |        |  1.71194 |     MB |
|   All |                                                  Segment count |        |       58 |        |
|   All |                                                 Min Throughput |  index |  13689.9 | docs/s |
|   All |                                              Median Throughput |  index |    31757 | docs/s |
|   All |                                                 Max Throughput |  index |  33110.2 | docs/s |
|   All |                                        50th percentile latency |  index |  1027.15 |     ms |
|   All |                                        90th percentile latency |  index |   2424.6 |     ms |
|   All |                                        99th percentile latency |  index |  5495.86 |     ms |
|   All |                                      99.9th percentile latency |  index |  9546.38 |     ms |
|   All |                                       100th percentile latency |  index |  9823.98 |     ms |
|   All |                                   50th percentile service time |  index |  1027.15 |     ms |
|   All |                                   90th percentile service time |  index |   2424.6 |     ms |
|   All |                                   99th percentile service time |  index |  5495.86 |     ms |
|   All |                                 99.9th percentile service time |  index |  9546.38 |     ms |
|   All |                                  100th percentile service time |  index |  9823.98 |     ms |
|   All |                                                     error rate |  index |        0 |      % |

Rate of 32k/s is better than previous aks tests 
- geonames 9.1k/s
- nyc_taxis 8.3k/s

### Testing Elasticsearch on Mac

#### Installed esrally on my mac

#### Test Elasticsearch 7.0.1

```
esrally configure
esrally --distribution-version=7.0.1 --track=geonames  --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```

Downloads and runs Elasticsearch Locally and runs geonames track tests.

- Downloads 252.4MB bz2 file expands to 3.30GB json files.
- Runs geonames tests delete-index, create-index, ...
- Outputs results

|   Lap |                                                         Metric |         Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |              |   32.7889 |    min |
|   All |             Min cumulative indexing time across primary shards |              |   6.45795 |    min |
|   All |          Median cumulative indexing time across primary shards |              |   6.55853 |    min |
|   All |             Max cumulative indexing time across primary shards |              |   6.65078 |    min |
|   All |            Cumulative indexing throttle time of primary shards |              |   6.10153 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |              |   1.10765 |    min |
|   All | Median cumulative indexing throttle time across primary shards |              |   1.26612 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |              |   1.27458 |    min |
|   All |                        Cumulative merge time of primary shards |              |   8.90988 |    min |
|   All |                       Cumulative merge count of primary shards |              |       111 |        |
|   All |                Min cumulative merge time across primary shards |              |    1.7332 |    min |
|   All |             Median cumulative merge time across primary shards |              |   1.74852 |    min |
|   All |                Max cumulative merge time across primary shards |              |   1.87337 |    min |
|   All |               Cumulative merge throttle time of primary shards |              |  0.987267 |    min |
|   All |       Min cumulative merge throttle time across primary shards |              |    0.1276 |    min |
|   All |    Median cumulative merge throttle time across primary shards |              |  0.207483 |    min |
|   All |       Max cumulative merge throttle time across primary shards |              |  0.238417 |    min |
|   All |                      Cumulative refresh time of primary shards |              |   6.06147 |    min |
|   All |                     Cumulative refresh count of primary shards |              |       735 |        |
|   All |              Min cumulative refresh time across primary shards |              |   1.09648 |    min |
|   All |           Median cumulative refresh time across primary shards |              |    1.2196 |    min |
|   All |              Max cumulative refresh time across primary shards |              |   1.40073 |    min |
|   All |                        Cumulative flush time of primary shards |              |    0.1222 |    min |
|   All |                       Cumulative flush count of primary shards |              |         5 |        |
|   All |                Min cumulative flush time across primary shards |              |    0.0166 |    min |
|   All |             Median cumulative flush time across primary shards |              |    0.0231 |    min |
|   All |                Max cumulative flush time across primary shards |              | 0.0399667 |    min |
|   All |                                               Median CPU usage |              |       642 |      % |
|   All |                                             Total Young Gen GC |              |    14.342 |      s |
|   All |                                               Total Old Gen GC |              |     4.517 |      s |
|   All |                                                     Store size |              |   4.28607 |     GB |
|   All |                                                  Translog size |              |   2.91857 |     GB |
|   All |                                                     Index size |              |   5.93874 |     GB |
|   All |                                                  Total written |              |   14.6337 |     GB |
|   All |                                         Heap used for segments |              |   19.6428 |     MB |
|   All |                                       Heap used for doc values |              | 0.0933647 |     MB |
|   All |                                            Heap used for terms |              |   18.2367 |     MB |
|   All |                                            Heap used for norms |              |  0.165283 |     MB |
|   All |                                           Heap used for points |              |  0.285135 |     MB |
|   All |                                    Heap used for stored fields |              |   0.86232 |     MB |
|   All |                                                  Segment count |              |       213 |        |
|   All |                                                 Min Throughput | index-append |   43387.9 | docs/s |
|   All |                                              Median Throughput | index-append |   44793.1 | docs/s |
|   All |                                                 Max Throughput | index-append |   46191.1 | docs/s |
|   All |                                        50th percentile latency | index-append |   709.668 |     ms |
|   All |                                        90th percentile latency | index-append |   1343.82 |     ms |
|   All |                                        99th percentile latency | index-append |   3777.41 |     ms |
|   All |                                      99.9th percentile latency | index-append |   7767.88 |     ms |
|   All |                                       100th percentile latency | index-append |   9752.37 |     ms |
|   All |                                   50th percentile service time | index-append |   709.668 |     ms |
|   All |                                   90th percentile service time | index-append |   1343.82 |     ms |
|   All |                                   99th percentile service time | index-append |   3777.41 |     ms |
|   All |                                 99.9th percentile service time | index-append |   7767.88 |     ms |
|   All |                                  100th percentile service time | index-append |   9752.37 |     ms |
|   All |                                                     error rate | index-append |         0 |      % |


#### Test Existing Cluster

```
esrally --track=geonames --target-hosts=localhost:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```

Against Docker image running locally limited to 2G mem.  

|   Lap |                                                         Metric |         Task |       Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|------------:|-------:|
|   All |                     Cumulative indexing time of primary shards |              |     20.9866 |    min |
|   All |             Min cumulative indexing time across primary shards |              |           0 |    min |
|   All |          Median cumulative indexing time across primary shards |              |     4.17847 |    min |
|   All |             Max cumulative indexing time across primary shards |              |     4.26562 |    min |
|   All |            Cumulative indexing throttle time of primary shards |              |           0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |              |           0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |              |           0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |              |           0 |    min |
|   All |                        Cumulative merge time of primary shards |              |     7.10307 |    min |
|   All |                       Cumulative merge count of primary shards |              |          39 |        |
|   All |                Min cumulative merge time across primary shards |              |           0 |    min |
|   All |             Median cumulative merge time across primary shards |              |     1.45916 |    min |
|   All |                Max cumulative merge time across primary shards |              |      1.5949 |    min |
|   All |               Cumulative merge throttle time of primary shards |              |    0.913017 |    min |
|   All |       Min cumulative merge throttle time across primary shards |              |           0 |    min |
|   All |    Median cumulative merge throttle time across primary shards |              |    0.175342 |    min |
|   All |       Max cumulative merge throttle time across primary shards |              |    0.223067 |    min |
|   All |                      Cumulative refresh time of primary shards |              |     4.04452 |    min |
|   All |                     Cumulative refresh count of primary shards |              |         250 |        |
|   All |              Min cumulative refresh time across primary shards |              |           0 |    min |
|   All |           Median cumulative refresh time across primary shards |              |      0.7913 |    min |
|   All |              Max cumulative refresh time across primary shards |              |    0.857717 |    min |
|   All |                        Cumulative flush time of primary shards |              |   0.0715167 |    min |
|   All |                       Cumulative flush count of primary shards |              |           6 |        |
|   All |                Min cumulative flush time across primary shards |              | 1.66667e-05 |    min |
|   All |             Median cumulative flush time across primary shards |              |     0.01375 |    min |
|   All |                Max cumulative flush time across primary shards |              |   0.0182167 |    min |
|   All |                                             Total Young Gen GC |              |      17.615 |      s |
|   All |                                               Total Old Gen GC |              |       3.032 |      s |
|   All |                                                     Store size |              |     3.70273 |     GB |
|   All |                                                  Translog size |              |     2.85637 |     GB |
|   All |                                         Heap used for segments |              |     18.5787 |     MB |
|   All |                                       Heap used for doc values |              |   0.0864258 |     MB |
|   All |                                            Heap used for terms |              |     17.2706 |     MB |
|   All |                                            Heap used for norms |              |    0.127075 |     MB |
|   All |                                           Heap used for points |              |    0.272085 |     MB |
|   All |                                    Heap used for stored fields |              |    0.822464 |     MB |
|   All |                                                  Segment count |              |         164 |        |
|   All |                                                 Min Throughput | index-append |     29377.2 | docs/s |
|   All |                                              Median Throughput | index-append |       30617 | docs/s |
|   All |                                                 Max Throughput | index-append |     31648.4 | docs/s |
|   All |                                        50th percentile latency | index-append |      1126.7 |     ms |
|   All |                                        90th percentile latency | index-append |     1609.85 |     ms |
|   All |                                        99th percentile latency | index-append |     2366.86 |     ms |
|   All |                                      99.9th percentile latency | index-append |     2887.79 |     ms |
|   All |                                       100th percentile latency | index-append |     3099.26 |     ms |
|   All |                                   50th percentile service time | index-append |      1126.7 |     ms |
|   All |                                   90th percentile service time | index-append |     1609.85 |     ms |
|   All |                                   99th percentile service time | index-append |     2366.86 |     ms |
|   All |                                 99.9th percentile service time | index-append |     2887.79 |     ms |
|   All |                                  100th percentile service time | index-append |     3099.26 |     ms |
|   All |                                                     error rate | index-append |           0 |      % |



### Test ES 7 david62243/elasticsearch:7-3node

The docker image was created by me based on CentOS 7.5 and as close as possible to what we did on VM's.

The Docker image and the Kubernetes are pretty rough; this is my first attempt to create these on my Own.

The Dockerfile contains are install.

The manifests 
- es-svcs.yaml (Creates services)
- es3.yaml (Creates a stateful set)


```
esrally configure
esrally --track=geonames --target-hosts=es:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```

Not using any Persistent Storage


|   Lap |                                                         Metric |         Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|----------:|-------:|
|   All |                                                 Min Throughput | index-append |   83768.6 | docs/s |
|   All |                                              Median Throughput | index-append |   85640.7 | docs/s |
|   All |                                                 Max Throughput | index-append |   86093.2 | docs/s |

These are best numbers I've seen.

```
esrally configure
esrally --track=nyc_taxis --target-hosts=es-0:9200,es-1:9200,es-2:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index" --report-file=report.md
```

The drive I/O could be the biggest impact on throughtput.

Next step is add persistent volume to by deployment and test again.
