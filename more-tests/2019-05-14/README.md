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
