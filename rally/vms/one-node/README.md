#### Run Rally Test

```
esrally configure
esrally --track=geonames --target-hosts=a1:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```

#### Results One Node


|   Lap |                                                         Metric |         Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |              |   26.8747 |    min |
|   All |             Min cumulative indexing time across primary shards |              |   5.32143 |    min |
|   All |          Median cumulative indexing time across primary shards |              |   5.38105 |    min |
|   All |             Max cumulative indexing time across primary shards |              |   5.42015 |    min |
|   All |            Cumulative indexing throttle time of primary shards |              |         0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |                        Cumulative merge time of primary shards |              |  0.966383 |    min |
|   All |                       Cumulative merge count of primary shards |              |         6 |        |
|   All |                Min cumulative merge time across primary shards |              |   0.15745 |    min |
|   All |             Median cumulative merge time across primary shards |              |   0.19605 |    min |
|   All |                Max cumulative merge time across primary shards |              |  0.246167 |    min |
|   All |               Cumulative merge throttle time of primary shards |              |  0.162817 |    min |
|   All |       Min cumulative merge throttle time across primary shards |              |    0.0274 |    min |
|   All |    Median cumulative merge throttle time across primary shards |              | 0.0338833 |    min |
|   All |       Max cumulative merge throttle time across primary shards |              | 0.0385167 |    min |
|   All |                      Cumulative refresh time of primary shards |              |  0.503633 |    min |
|   All |                     Cumulative refresh count of primary shards |              |        37 |        |
|   All |              Min cumulative refresh time across primary shards |              |    0.0723 |    min |
|   All |           Median cumulative refresh time across primary shards |              | 0.0760333 |    min |
|   All |              Max cumulative refresh time across primary shards |              |  0.188867 |    min |
|   All |                        Cumulative flush time of primary shards |              |   1.23073 |    min |
|   All |                       Cumulative flush count of primary shards |              |         5 |        |
|   All |                Min cumulative flush time across primary shards |              | 0.0994833 |    min |
|   All |             Median cumulative flush time across primary shards |              |  0.283717 |    min |
|   All |                Max cumulative flush time across primary shards |              |    0.2866 |    min |
|   All |                                             Total Young Gen GC |              |     9.875 |      s |
|   All |                                               Total Old Gen GC |              |     0.169 |      s |
|   All |                                                     Store size |              |   2.98833 |     GB |
|   All |                                                  Translog size |              |   2.91794 |     GB |
|   All |                                         Heap used for segments |              |   9.99481 |     MB |
|   All |                                       Heap used for doc values |              | 0.0417557 |     MB |
|   All |                                            Heap used for terms |              |   9.06623 |     MB |
|   All |                                            Heap used for norms |              |  0.105347 |     MB |
|   All |                                           Heap used for points |              |  0.203051 |     MB |
|   All |                                    Heap used for stored fields |              |  0.578423 |     MB |
|   All |                                                  Segment count |              |       134 |        |
|   All |                                                 Min Throughput | index-append |   80560.4 | docs/s |
|   All |                                              Median Throughput | index-append |     81362 | docs/s |
|   All |                                                 Max Throughput | index-append |   82148.5 | docs/s |
|   All |                                        50th percentile latency | index-append |   332.195 |     ms |
|   All |                                        90th percentile latency | index-append |   485.573 |     ms |
|   All |                                        99th percentile latency | index-append |   1984.94 |     ms |
|   All |                                       100th percentile latency | index-append |   2087.59 |     ms |
|   All |                                   50th percentile service time | index-append |   332.195 |     ms |
|   All |                                   90th percentile service time | index-append |   485.573 |     ms |
|   All |                                   99th percentile service time | index-append |   1984.94 |     ms |
|   All |                                  100th percentile service time | index-append |   2087.59 |     ms |
|   All |                                                     error rate | index-append |         0 |      % |
