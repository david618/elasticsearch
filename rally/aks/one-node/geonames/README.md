#### Geonames delete,create,append 

```
esrally configure
esrally --track=geonames --target-hosts=datastore-elasticsearch-headless:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```

##### Results One Node Elasticsearch

|   Lap |                                                         Metric |         Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |              |   17.6835 |    min |
|   All |             Min cumulative indexing time across primary shards |              |   3.33935 |    min |
|   All |          Median cumulative indexing time across primary shards |              |   3.40597 |    min |
|   All |             Max cumulative indexing time across primary shards |              |    4.1218 |    min |
|   All |            Cumulative indexing throttle time of primary shards |              |         0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |                        Cumulative merge time of primary shards |              |         0 |    min |
|   All |                       Cumulative merge count of primary shards |              |         0 |        |
|   All |                Min cumulative merge time across primary shards |              |         0 |    min |
|   All |             Median cumulative merge time across primary shards |              |         0 |    min |
|   All |                Max cumulative merge time across primary shards |              |         0 |    min |
|   All |               Cumulative merge throttle time of primary shards |              |         0 |    min |
|   All |       Min cumulative merge throttle time across primary shards |              |         0 |    min |
|   All |    Median cumulative merge throttle time across primary shards |              |         0 |    min |
|   All |       Max cumulative merge throttle time across primary shards |              |         0 |    min |
|   All |                      Cumulative refresh time of primary shards |              |   2.03695 |    min |
|   All |                     Cumulative refresh count of primary shards |              |        54 |        |
|   All |              Min cumulative refresh time across primary shards |              |    0.0981 |    min |
|   All |           Median cumulative refresh time across primary shards |              |  0.115783 |    min |
|   All |              Max cumulative refresh time across primary shards |              |  0.938017 |    min |
|   All |                        Cumulative flush time of primary shards |              |   3.86323 |    min |
|   All |                       Cumulative flush count of primary shards |              |         5 |        |
|   All |                Min cumulative flush time across primary shards |              |  0.131367 |    min |
|   All |             Median cumulative flush time across primary shards |              |   1.09265 |    min |
|   All |                Max cumulative flush time across primary shards |              |   1.18615 |    min |
|   All |                                             Total Young Gen GC |              |   533.376 |      s |
|   All |                                               Total Old Gen GC |              |     0.206 |      s |
|   All |                                                     Store size |              |   2.30728 |     GB |
|   All |                                                  Translog size |              |   2.85637 |     GB |
|   All |                                         Heap used for segments |              |   7.76826 |     MB |
|   All |                                       Heap used for doc values |              | 0.0291023 |     MB |
|   All |                                            Heap used for terms |              |   6.99835 |     MB |
|   All |                                            Heap used for norms |              | 0.0371094 |     MB |
|   All |                                           Heap used for points |              |  0.183057 |     MB |
|   All |                                    Heap used for stored fields |              |  0.520638 |     MB |
|   All |                                                  Segment count |              |        49 |        |
|   All |                                                 Min Throughput | index-append |   7824.66 | docs/s |
|   All |                                              Median Throughput | index-append |   8355.31 | docs/s |
|   All |                                                 Max Throughput | index-append |   8785.04 | docs/s |
|   All |                                        50th percentile latency | index-append |   4440.08 |     ms |
|   All |                                        90th percentile latency | index-append |   6463.93 |     ms |
|   All |                                        99th percentile latency | index-append |   10115.1 |     ms |
|   All |                                      99.9th percentile latency | index-append |   12191.9 |     ms |
|   All |                                       100th percentile latency | index-append |   12667.5 |     ms |
|   All |                                   50th percentile service time | index-append |   4440.08 |     ms |
|   All |                                   90th percentile service time | index-append |   6463.93 |     ms |
|   All |                                   99th percentile service time | index-append |   10115.1 |     ms |
|   All |                                 99.9th percentile service time | index-append |   12191.9 |     ms |
|   All |                                  100th percentile service time | index-append |   12667.5 |     ms |
|   All |                                                     error rate | index-append |         0 |      % |


