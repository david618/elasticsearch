#### NYC Taxis delete, create, index

```
esrally configure
esrally --track=nyc_taxis --target-hosts=datastore-elasticsearch-headless:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index" --report-file=report.md
```

##### Three Node

|   Lap |                                                         Metric |   Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |        |   276.983 |    min |
|   All |             Min cumulative indexing time across primary shards |        |   276.983 |    min |
|   All |          Median cumulative indexing time across primary shards |        |   276.983 |    min |
|   All |             Max cumulative indexing time across primary shards |        |   276.983 |    min |
|   All |            Cumulative indexing throttle time of primary shards |        |         0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |        |         0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |        |         0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |        |         0 |    min |
|   All |                        Cumulative merge time of primary shards |        |   430.961 |    min |
|   All |                       Cumulative merge count of primary shards |        |        61 |        |
|   All |                Min cumulative merge time across primary shards |        |   430.961 |    min |
|   All |             Median cumulative merge time across primary shards |        |   430.961 |    min |
|   All |                Max cumulative merge time across primary shards |        |   430.961 |    min |
|   All |               Cumulative merge throttle time of primary shards |        |   153.901 |    min |
|   All |       Min cumulative merge throttle time across primary shards |        |   153.901 |    min |
|   All |    Median cumulative merge throttle time across primary shards |        |   153.901 |    min |
|   All |       Max cumulative merge throttle time across primary shards |        |   153.901 |    min |
|   All |                      Cumulative refresh time of primary shards |        |   54.2573 |    min |
|   All |                     Cumulative refresh count of primary shards |        |       577 |        |
|   All |              Min cumulative refresh time across primary shards |        |   54.2573 |    min |
|   All |           Median cumulative refresh time across primary shards |        |   54.2573 |    min |
|   All |              Max cumulative refresh time across primary shards |        |   54.2573 |    min |
|   All |                        Cumulative flush time of primary shards |        |   2.28467 |    min |
|   All |                       Cumulative flush count of primary shards |        |        21 |        |
|   All |                Min cumulative flush time across primary shards |        |   2.28467 |    min |
|   All |             Median cumulative flush time across primary shards |        |   2.28467 |    min |
|   All |                Max cumulative flush time across primary shards |        |   2.28467 |    min |
|   All |                                             Total Young Gen GC |        |   10578.3 |      s |
|   All |                                               Total Old Gen GC |        |     1.566 |      s |
|   All |                                                     Store size |        |   26.6039 |     GB |
|   All |                                                  Translog size |        |   1.06451 |     GB |
|   All |                                         Heap used for segments |        |   68.3401 |     MB |
|   All |                                       Heap used for doc values |        | 0.0502014 |     MB |
|   All |                                            Heap used for terms |        |   54.3821 |     MB |
|   All |                                            Heap used for norms |        |         0 |     MB |
|   All |                                           Heap used for points |        |    9.7417 |     MB |
|   All |                                    Heap used for stored fields |        |   4.16606 |     MB |
|   All |                                                  Segment count |        |        46 |        |
|   All |                                                 Min Throughput |  index |   8284.82 | docs/s |
|   All |                                              Median Throughput |  index |   8329.49 | docs/s |
|   All |                                                 Max Throughput |  index |   9478.82 | docs/s |
|   All |                                        50th percentile latency |  index |   8771.27 |     ms |
|   All |                                        90th percentile latency |  index |   12076.1 |     ms |
|   All |                                        99th percentile latency |  index |   20188.4 |     ms |
|   All |                                      99.9th percentile latency |  index |   26933.9 |     ms |
|   All |                                     99.99th percentile latency |  index |   32306.8 |     ms |
|   All |                                       100th percentile latency |  index |   33588.1 |     ms |
|   All |                                   50th percentile service time |  index |   8771.27 |     ms |
|   All |                                   90th percentile service time |  index |   12076.1 |     ms |
|   All |                                   99th percentile service time |  index |   20188.4 |     ms |
|   All |                                 99.9th percentile service time |  index |   26933.9 |     ms |
|   All |                                99.99th percentile service time |  index |   32306.8 |     ms |
|   All |                                  100th percentile service time |  index |   33588.1 |     ms |
|   All |                                                     error rate |  index |         0 |      % |

