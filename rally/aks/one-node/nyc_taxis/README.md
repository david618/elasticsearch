
#### NYC Taxis delete,create,index

```
esrally configure
esrally --track=nyc_taxis --target-hosts=datastore-elasticsearch-headless:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index" --report-file=report.md
```

##### One Node Elasticsearch

|   Lap |                                                         Metric |   Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |        |   272.593 |    min |
|   All |             Min cumulative indexing time across primary shards |        |   272.593 |    min |
|   All |          Median cumulative indexing time across primary shards |        |   272.593 |    min |
|   All |             Max cumulative indexing time across primary shards |        |   272.593 |    min |
|   All |            Cumulative indexing throttle time of primary shards |        |         0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |        |         0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |        |         0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |        |         0 |    min |
|   All |                        Cumulative merge time of primary shards |        |   400.129 |    min |
|   All |                       Cumulative merge count of primary shards |        |        54 |        |
|   All |                Min cumulative merge time across primary shards |        |   400.129 |    min |
|   All |             Median cumulative merge time across primary shards |        |   400.129 |    min |
|   All |                Max cumulative merge time across primary shards |        |   400.129 |    min |
|   All |               Cumulative merge throttle time of primary shards |        |    118.26 |    min |
|   All |       Min cumulative merge throttle time across primary shards |        |    118.26 |    min |
|   All |    Median cumulative merge throttle time across primary shards |        |    118.26 |    min |
|   All |       Max cumulative merge throttle time across primary shards |        |    118.26 |    min |
|   All |                      Cumulative refresh time of primary shards |        |   59.6214 |    min |
|   All |                     Cumulative refresh count of primary shards |        |       514 |        |
|   All |              Min cumulative refresh time across primary shards |        |   59.6214 |    min |
|   All |           Median cumulative refresh time across primary shards |        |   59.6214 |    min |
|   All |              Max cumulative refresh time across primary shards |        |   59.6214 |    min |
|   All |                        Cumulative flush time of primary shards |        |   2.30823 |    min |
|   All |                       Cumulative flush count of primary shards |        |        21 |        |
|   All |                Min cumulative flush time across primary shards |        |   2.30823 |    min |
|   All |             Median cumulative flush time across primary shards |        |   2.30823 |    min |
|   All |                Max cumulative flush time across primary shards |        |   2.30823 |    min |
|   All |                                             Total Young Gen GC |        |    9417.8 |      s |
|   All |                                               Total Old Gen GC |        |     1.147 |      s |
|   All |                                                     Store size |        |   27.6635 |     GB |
|   All |                                                  Translog size |        |   1.07477 |     GB |
|   All |                                         Heap used for segments |        |   65.4004 |     MB |
|   All |                                       Heap used for doc values |        | 0.0584755 |     MB |
|   All |                                            Heap used for terms |        |   51.2956 |     MB |
|   All |                                            Heap used for norms |        |         0 |     MB |
|   All |                                           Heap used for points |        |   9.87648 |     MB |
|   All |                                    Heap used for stored fields |        |   4.16978 |     MB |
|   All |                                                  Segment count |        |        47 |        |
|   All |                                                 Min Throughput |  index |   8944.23 | docs/s |
|   All |                                              Median Throughput |  index |   9058.04 | docs/s |
|   All |                                                 Max Throughput |  index |    9935.8 | docs/s |
|   All |                                        50th percentile latency |  index |   8134.05 |     ms |
|   All |                                        90th percentile latency |  index |     10458 |     ms |
|   All |                                        99th percentile latency |  index |   19377.7 |     ms |
|   All |                                      99.9th percentile latency |  index |   21828.3 |     ms |
|   All |                                     99.99th percentile latency |  index |     23934 |     ms |
|   All |                                       100th percentile latency |  index |   24163.2 |     ms |
|   All |                                   50th percentile service time |  index |   8134.05 |     ms |
|   All |                                   90th percentile service time |  index |     10458 |     ms |
|   All |                                   99th percentile service time |  index |   19377.7 |     ms |
|   All |                                 99.9th percentile service time |  index |   21828.3 |     ms |
|   All |                                99.99th percentile service time |  index |     23934 |     ms |
|   All |                                  100th percentile service time |  index |   24163.2 |     ms |
|   All |                                                     error rate |  index |         0 |      % |

