#### Geonames delete,create,index

```
esrally configure
esrally --track=geonames --target-hosts=datastore-elasticsearch-headless:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```


##### Three Node Elasticsearch Results

|   Lap |                                                         Metric |         Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |              |   17.3856 |    min |
|   All |             Min cumulative indexing time across primary shards |              |   3.35278 |    min |
|   All |          Median cumulative indexing time across primary shards |              |   3.48622 |    min |
|   All |             Max cumulative indexing time across primary shards |              |   3.59405 |    min |
|   All |            Cumulative indexing throttle time of primary shards |              |         0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |                        Cumulative merge time of primary shards |              |  0.287517 |    min |
|   All |                       Cumulative merge count of primary shards |              |         5 |        |
|   All |                Min cumulative merge time across primary shards |              |   0.04405 |    min |
|   All |             Median cumulative merge time across primary shards |              | 0.0467667 |    min |
|   All |                Max cumulative merge time across primary shards |              | 0.0760333 |    min |
|   All |               Cumulative merge throttle time of primary shards |              |         0 |    min |
|   All |       Min cumulative merge throttle time across primary shards |              |         0 |    min |
|   All |    Median cumulative merge throttle time across primary shards |              |         0 |    min |
|   All |       Max cumulative merge throttle time across primary shards |              |         0 |    min |
|   All |                      Cumulative refresh time of primary shards |              |  0.790117 |    min |
|   All |                     Cumulative refresh count of primary shards |              |        86 |        |
|   All |              Min cumulative refresh time across primary shards |              |  0.142883 |    min |
|   All |           Median cumulative refresh time across primary shards |              |   0.15555 |    min |
|   All |              Max cumulative refresh time across primary shards |              |  0.177433 |    min |
|   All |                        Cumulative flush time of primary shards |              |   5.15055 |    min |
|   All |                       Cumulative flush count of primary shards |              |         5 |        |
|   All |                Min cumulative flush time across primary shards |              |  0.978283 |    min |
|   All |             Median cumulative flush time across primary shards |              |   1.01085 |    min |
|   All |                Max cumulative flush time across primary shards |              |   1.09438 |    min |
|   All |                                             Total Young Gen GC |              |   605.559 |      s |
|   All |                                               Total Old Gen GC |              |     0.197 |      s |
|   All |                                                     Store size |              |   2.41771 |     GB |
|   All |                                                  Translog size |              |   2.79313 |     GB |
|   All |                                         Heap used for segments |              |   8.61761 |     MB |
|   All |                                       Heap used for doc values |              | 0.0352859 |     MB |
|   All |                                            Heap used for terms |              |   7.78443 |     MB |
|   All |                                            Heap used for norms |              | 0.0510254 |     MB |
|   All |                                           Heap used for points |              |  0.192371 |     MB |
|   All |                                    Heap used for stored fields |              |  0.554497 |     MB |
|   All |                                                  Segment count |              |        66 |        |
|   All |                                                 Min Throughput | index-append |   16215.6 | docs/s |
|   All |                                              Median Throughput | index-append |   17139.2 | docs/s |
|   All |                                                 Max Throughput | index-append |   18133.2 | docs/s |
|   All |                                        50th percentile latency | index-append |   2079.31 |     ms |
|   All |                                        90th percentile latency | index-append |   2637.27 |     ms |
|   All |                                        99th percentile latency | index-append |   5567.12 |     ms |
|   All |                                      99.9th percentile latency | index-append |   12802.7 |     ms |
|   All |                                       100th percentile latency | index-append |   12970.1 |     ms |
|   All |                                   50th percentile service time | index-append |   2079.31 |     ms |
|   All |                                   90th percentile service time | index-append |   2637.27 |     ms |
|   All |                                   99th percentile service time | index-append |   5567.12 |     ms |
|   All |                                 99.9th percentile service time | index-append |   12802.7 |     ms |
|   All |                                  100th percentile service time | index-append |   12970.1 |     ms |
|   All |                                                     error rate | index-append |         0 |      % |

