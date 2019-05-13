

### Testing Erally against Elasticsearch Node

#### Test 

Identify and Exec into estrally pod

```
kubectl get pods
kubectl exec -it esrally-6c767c85f9-dnpgj tmux
```

```
esrally configure
esrally --track=geonames --target-hosts=datastore-elasticsearch:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```


Between each run deleted the esrally pod (e.g. ```kubectl delete pod esrally-6c767c85f9-bm8bp```)


Move report down from pod to local machine if needed.

```
kubectl cp esrally-6c767c85f9-dnpgj:report.md .
```


#### Testing One Elasticsearch Node


|   Lap |                                                         Metric |         Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |              |   28.2006 |    min |
|   All |             Min cumulative indexing time across primary shards |              |   5.48338 |    min |
|   All |          Median cumulative indexing time across primary shards |              |    5.6244 |    min |
|   All |             Max cumulative indexing time across primary shards |              |   5.90198 |    min |
|   All |            Cumulative indexing throttle time of primary shards |              |         0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |                        Cumulative merge time of primary shards |              |   0.87055 |    min |
|   All |                       Cumulative merge count of primary shards |              |         5 |        |
|   All |                Min cumulative merge time across primary shards |              |  0.151983 |    min |
|   All |             Median cumulative merge time across primary shards |              |   0.16195 |    min |
|   All |                Max cumulative merge time across primary shards |              |  0.204283 |    min |
|   All |               Cumulative merge throttle time of primary shards |              | 0.0917833 |    min |
|   All |       Min cumulative merge throttle time across primary shards |              |         0 |    min |
|   All |    Median cumulative merge throttle time across primary shards |              | 0.0197667 |    min |
|   All |       Max cumulative merge throttle time across primary shards |              | 0.0349167 |    min |
|   All |                      Cumulative refresh time of primary shards |              |   0.71885 |    min |
|   All |                     Cumulative refresh count of primary shards |              |        33 |        |
|   All |              Min cumulative refresh time across primary shards |              | 0.0792333 |    min |
|   All |           Median cumulative refresh time across primary shards |              |    0.1061 |    min |
|   All |              Max cumulative refresh time across primary shards |              |  0.238983 |    min |
|   All |                        Cumulative flush time of primary shards |              |    1.1374 |    min |
|   All |                       Cumulative flush count of primary shards |              |         5 |        |
|   All |                Min cumulative flush time across primary shards |              |    0.0836 |    min |
|   All |             Median cumulative flush time across primary shards |              |  0.268183 |    min |
|   All |                Max cumulative flush time across primary shards |              |  0.344167 |    min |
|   All |                                             Total Young Gen GC |              |    11.755 |      s |
|   All |                                               Total Old Gen GC |              |     0.096 |      s |
|   All |                                                     Store size |              |    2.8947 |     GB |
|   All |                                                  Translog size |              |   2.85449 |     GB |
|   All |                                         Heap used for segments |              |    9.3252 |     MB |
|   All |                                       Heap used for doc values |              | 0.0567741 |     MB |
|   All |                                            Heap used for terms |              |   8.41229 |     MB |
|   All |                                            Heap used for norms |              |  0.105408 |     MB |
|   All |                                           Heap used for points |              |  0.196045 |     MB |
|   All |                                    Heap used for stored fields |              |   0.55468 |     MB |
|   All |                                                  Segment count |              |       135 |        |
|   All |                                                 Min Throughput | index-append |   76104.9 | docs/s |
|   All |                                              Median Throughput | index-append |   78191.5 | docs/s |
|   All |                                                 Max Throughput | index-append |   78751.7 | docs/s |
|   All |                                        50th percentile latency | index-append |   319.113 |     ms |
|   All |                                        90th percentile latency | index-append |   534.124 |     ms |
|   All |                                        99th percentile latency | index-append |   769.108 |     ms |
|   All |                                       100th percentile latency | index-append |   1036.35 |     ms |
|   All |                                   50th percentile service time | index-append |   319.113 |     ms |
|   All |                                   90th percentile service time | index-append |   534.124 |     ms |
|   All |                                   99th percentile service time | index-append |   769.108 |     ms |
|   All |                                  100th percentile service time | index-append |   1036.35 |     ms |
|   All |                                                     error rate | index-append |         0 |      % |


#### Repeat Test One Elasticsearch Node

|   Lap |                                                         Metric |         Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |              |   27.9345 |    min |
|   All |             Min cumulative indexing time across primary shards |              |   5.49012 |    min |
|   All |          Median cumulative indexing time across primary shards |              |    5.5746 |    min |
|   All |             Max cumulative indexing time across primary shards |              |   5.70408 |    min |
|   All |            Cumulative indexing throttle time of primary shards |              |         0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |                        Cumulative merge time of primary shards |              |    1.3321 |    min |
|   All |                       Cumulative merge count of primary shards |              |         9 |        |
|   All |                Min cumulative merge time across primary shards |              |  0.191733 |    min |
|   All |             Median cumulative merge time across primary shards |              |  0.272133 |    min |
|   All |                Max cumulative merge time across primary shards |              |   0.32215 |    min |
|   All |               Cumulative merge throttle time of primary shards |              |  0.187467 |    min |
|   All |       Min cumulative merge throttle time across primary shards |              | 0.0322667 |    min |
|   All |    Median cumulative merge throttle time across primary shards |              | 0.0334333 |    min |
|   All |       Max cumulative merge throttle time across primary shards |              | 0.0555833 |    min |
|   All |                      Cumulative refresh time of primary shards |              |  0.561367 |    min |
|   All |                     Cumulative refresh count of primary shards |              |        41 |        |
|   All |              Min cumulative refresh time across primary shards |              | 0.0834333 |    min |
|   All |           Median cumulative refresh time across primary shards |              | 0.0903167 |    min |
|   All |              Max cumulative refresh time across primary shards |              |   0.20685 |    min |
|   All |                        Cumulative flush time of primary shards |              |   1.18693 |    min |
|   All |                       Cumulative flush count of primary shards |              |         5 |        |
|   All |                Min cumulative flush time across primary shards |              | 0.0952833 |    min |
|   All |             Median cumulative flush time across primary shards |              |   0.27815 |    min |
|   All |                Max cumulative flush time across primary shards |              |  0.315483 |    min |
|   All |                                             Total Young Gen GC |              |    10.541 |      s |
|   All |                                               Total Old Gen GC |              |     0.078 |      s |
|   All |                                                     Store size |              |   3.05283 |     GB |
|   All |                                                  Translog size |              |   2.91784 |     GB |
|   All |                                         Heap used for segments |              |   8.96081 |     MB |
|   All |                                       Heap used for doc values |              | 0.0434875 |     MB |
|   All |                                            Heap used for terms |              |   8.11133 |     MB |
|   All |                                            Heap used for norms |              | 0.0988159 |     MB |
|   All |                                           Heap used for points |              |  0.182682 |     MB |
|   All |                                    Heap used for stored fields |              |  0.524498 |     MB |
|   All |                                                  Segment count |              |       126 |        |
|   All |                                                 Min Throughput | index-append |     80108 | docs/s |
|   All |                                              Median Throughput | index-append |   80873.8 | docs/s |
|   All |                                                 Max Throughput | index-append |   81553.6 | docs/s |
|   All |                                        50th percentile latency | index-append |   337.305 |     ms |
|   All |                                        90th percentile latency | index-append |   590.063 |     ms |
|   All |                                        99th percentile latency | index-append |   1543.78 |     ms |
|   All |                                       100th percentile latency | index-append |   1606.83 |     ms |
|   All |                                   50th percentile service time | index-append |   337.305 |     ms |
|   All |                                   90th percentile service time | index-append |   590.063 |     ms |
|   All |                                   99th percentile service time | index-append |   1543.78 |     ms |
|   All |                                  100th percentile service time | index-append |   1606.83 |     ms |
|   All |                                                     error rate | index-append |         0 |      % |





#### NOAA Data

This data set as more lines (34 million) where geonames has 11 million.  


```
esrally list tracks
```


```
esrally configure
esrally --track=noaa --target-hosts=datastore-elasticsearch:9200 --pipeline=benchmark-only --include-tasks="index" --report-file=report.md
```

##### 1 ES Node


|   Lap |                                                         Metric |   Task |    Value |   Unit |
|------:|---------------------------------------------------------------:|-------:|---------:|-------:|
|   All |                     Cumulative indexing time of primary shards |        |  59.9141 |    min |
|   All |             Min cumulative indexing time across primary shards |        |  59.9141 |    min |
|   All |          Median cumulative indexing time across primary shards |        |  59.9141 |    min |
|   All |             Max cumulative indexing time across primary shards |        |  59.9141 |    min |
|   All |            Cumulative indexing throttle time of primary shards |        |        0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |        |        0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |        |        0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |        |        0 |    min |
|   All |                        Cumulative merge time of primary shards |        |  14.5871 |    min |
|   All |                       Cumulative merge count of primary shards |        |       54 |        |
|   All |                Min cumulative merge time across primary shards |        |  14.5871 |    min |
|   All |             Median cumulative merge time across primary shards |        |  14.5871 |    min |
|   All |                Max cumulative merge time across primary shards |        |  14.5871 |    min |
|   All |               Cumulative merge throttle time of primary shards |        |  5.46952 |    min |
|   All |       Min cumulative merge throttle time across primary shards |        |  5.46952 |    min |
|   All |    Median cumulative merge throttle time across primary shards |        |  5.46952 |    min |
|   All |       Max cumulative merge throttle time across primary shards |        |  5.46952 |    min |
|   All |                      Cumulative refresh time of primary shards |        | 0.485317 |    min |
|   All |                     Cumulative refresh count of primary shards |        |       45 |        |
|   All |              Min cumulative refresh time across primary shards |        | 0.485317 |    min |
|   All |           Median cumulative refresh time across primary shards |        | 0.485317 |    min |
|   All |              Max cumulative refresh time across primary shards |        | 0.485317 |    min |
|   All |                        Cumulative flush time of primary shards |        |   2.7071 |    min |
|   All |                       Cumulative flush count of primary shards |        |       23 |        |
|   All |                Min cumulative flush time across primary shards |        |   2.7071 |    min |
|   All |             Median cumulative flush time across primary shards |        |   2.7071 |    min |
|   All |              Max cumulative refresh time across primary shards |        | 0.485317 |    min |
|   All |                        Cumulative flush time of primary shards |        |   2.7071 |    min |
|   All |                       Cumulative flush count of primary shards |        |       23 |        |
|   All |                Min cumulative flush time across primary shards |        |   2.7071 |    min |
|   All |             Median cumulative flush time across primary shards |        |   2.7071 |    min |
|   All |                Max cumulative flush time across primary shards |        |   2.7071 |    min |
|   All |                                             Total Young Gen GC |        |   34.268 |      s |
|   All |                                               Total Old Gen GC |        |    0.109 |      s |
|   All |                                                     Store size |        |  8.00111 |     GB |
|   All |                                                  Translog size |        | 0.557948 |     GB |
|   All |                                         Heap used for segments |        |  18.1964 |     MB |
|   All |                                       Heap used for doc values |        | 0.470894 |     MB |
|   All |                                            Heap used for terms |        |  14.4009 |     MB |
|   All |                                            Heap used for norms |        | 0.233154 |     MB |
|   All |                                           Heap used for points |        |  1.32229 |     MB |
|   All |                                    Heap used for stored fields |        |  1.76917 |     MB |
|   All |                                                  Segment count |        |       74 |        |
|   All |                                                 Min Throughput |  index |  33624.3 | docs/s |
|   All |                                              Median Throughput |  index |    59152 | docs/s |
|   All |                                                 Max Throughput |  index |  60673.7 | docs/s |
|   All |                                        50th percentile latency |  index |  542.033 |     ms |
|   All |                                        90th percentile latency |  index |  940.927 |     ms |
|   All |                                        99th percentile latency |  index |   3043.7 |     ms |
|   All |                                      99.9th percentile latency |  index |  5767.86 |     ms |
|   All |                                       100th percentile latency |  index |  6086.97 |     ms |
|   All |                                   50th percentile service time |  index |  542.033 |     ms |
|   All |                                   90th percentile service time |  index |  940.927 |     ms |
|   All |                                   99th percentile service time |  index |   3043.7 |     ms |
|   All |                                 99.9th percentile service time |  index |  5767.86 |     ms |
|   All |                                  100th percentile service time |  index |  6086.97 |     ms |
|   All |                                                     error rate |  index |        0 |      % |

##### 3 ES Nodes

First Test (no --include-tracks)

|   Lap |               Metric |                                                 Task |     Value |   Unit |
|------:|---------------------:|-----------------------------------------------------:|----------:|-------:|
|   All |       Min Throughput |                                                index |   66064.5 | docs/s |
|   All |    Median Throughput |                                                index |   70277.6 | docs/s |
|   All |       Max Throughput |                                                index |   75130.7 | docs/s |

Second Test (just index)

|   Lap |                                                         Metric |   Task |    Value |   Unit |
|------:|---------------------------------------------------------------:|-------:|---------:|-------:|
|   All |                     Cumulative indexing time of primary shards |        |  53.2248 |    min |
|   All |             Min cumulative indexing time across primary shards |        |  53.2248 |    min |
|   All |          Median cumulative indexing time across primary shards |        |  53.2248 |    min |
|   All |             Max cumulative indexing time across primary shards |        |  53.2248 |    min |
|   All |            Cumulative indexing throttle time of primary shards |        |        0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |        |        0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |        |        0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |        |        0 |    min |
|   All |                        Cumulative merge time of primary shards |        |  15.1344 |    min |
|   All |                       Cumulative merge count of primary shards |        |       51 |        |
|   All |                Min cumulative merge time across primary shards |        |  15.1344 |    min |
|   All |             Median cumulative merge time across primary shards |        |  15.1344 |    min |
|   All |                Max cumulative merge time across primary shards |        |  15.1344 |    min |
|   All |               Cumulative merge throttle time of primary shards |        |   10.062 |    min |
|   All |       Min cumulative merge throttle time across primary shards |        |   10.062 |    min |
|   All |    Median cumulative merge throttle time across primary shards |        |   10.062 |    min |
|   All |       Max cumulative merge throttle time across primary shards |        |   10.062 |    min |
|   All |                      Cumulative refresh time of primary shards |        |   0.3789 |    min |
|   All |                     Cumulative refresh count of primary shards |        |       49 |        |
|   All |              Min cumulative refresh time across primary shards |        |   0.3789 |    min |
|   All |           Median cumulative refresh time across primary shards |        |   0.3789 |    min |
|   All |              Max cumulative refresh time across primary shards |        |   0.3789 |    min |
|   All |                        Cumulative flush time of primary shards |        |  2.54447 |    min |
|   All |                       Cumulative flush count of primary shards |        |       23 |        |
|   All |                Min cumulative flush time across primary shards |        |  2.54447 |    min |
|   All |             Median cumulative flush time across primary shards |        |  2.54447 |    min |
|   All |                Max cumulative flush time across primary shards |        |  2.54447 |    min |
|   All |                                             Total Young Gen GC |        |   67.524 |      s |
|   All |                                               Total Old Gen GC |        |    0.221 |      s |
|   All |                                                     Store size |        |  19.2726 |     GB |
|   All |                                                  Translog size |        |  1.10528 |     GB |
|   All |                                         Heap used for segments |        |  20.1338 |     MB |
|   All |                                       Heap used for doc values |        | 0.570747 |     MB |
|   All |                                            Heap used for terms |        |  16.1568 |     MB |
|   All |                                            Heap used for norms |        | 0.255249 |     MB |
|   All |                                           Heap used for points |        |  1.38361 |     MB |
|   All |                                    Heap used for stored fields |        |  1.76745 |     MB |
|   All |                                                  Segment count |        |       82 |        |
|   All |                                                 Min Throughput |  index |  23445.8 | docs/s |
|   All |                                              Median Throughput |  index |  34857.7 | docs/s |
|   All |                                                 Max Throughput |  index |  35532.7 | docs/s |
|   All |                                        50th percentile latency |  index |  979.243 |     ms |
|   All |                                        90th percentile latency |  index |  1711.08 |     ms |
|   All |                                        99th percentile latency |  index |  3885.29 |     ms |
|   All |                                      99.9th percentile latency |  index |   7159.9 |     ms |
|   All |                                       100th percentile latency |  index |  7238.61 |     ms |
|   All |                                   50th percentile service time |  index |  979.243 |     ms |
|   All |                                   90th percentile service time |  index |  1711.08 |     ms |
|   All |                                   99th percentile service time |  index |  3885.29 |     ms |
|   All |                                 99.9th percentile service time |  index |   7159.9 |     ms |
|   All |                                  100th percentile service time |  index |  7238.61 |     ms |
|   All |                                                     error rate |  index |        0 |      % |


