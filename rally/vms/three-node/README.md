#### Geonames delete,index,append

```
esrally configure
esrally --track=geonames --target-hosts=a1:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```

##### Three Elasticsearch Nodes Results

|   Lap |                                                         Metric |         Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|-------------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |              |   18.0229 |    min |
|   All |             Min cumulative indexing time across primary shards |              |   18.0229 |    min |
|   All |          Median cumulative indexing time across primary shards |              |   18.0229 |    min |
|   All |             Max cumulative indexing time across primary shards |              |   18.0229 |    min |
|   All |            Cumulative indexing throttle time of primary shards |              |         0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |              |         0 |    min |
|   All |                        Cumulative merge time of primary shards |              |   3.74657 |    min |
|   All |                       Cumulative merge count of primary shards |              |        24 |        |
|   All |                Min cumulative merge time across primary shards |              |   3.74657 |    min |
|   All |             Median cumulative merge time across primary shards |              |   3.74657 |    min |
|   All |                Max cumulative merge time across primary shards |              |   3.74657 |    min |
|   All |               Cumulative merge throttle time of primary shards |              |   1.34918 |    min |
|   All |       Min cumulative merge throttle time across primary shards |              |   1.34918 |    min |
|   All |    Median cumulative merge throttle time across primary shards |              |   1.34918 |    min |
|   All |       Max cumulative merge throttle time across primary shards |              |   1.34918 |    min |
|   All |                      Cumulative refresh time of primary shards |              |  0.314583 |    min |
|   All |                     Cumulative refresh count of primary shards |              |        30 |        |
|   All |              Min cumulative refresh time across primary shards |              |  0.314583 |    min |
|   All |           Median cumulative refresh time across primary shards |              |  0.314583 |    min |
|   All |              Max cumulative refresh time across primary shards |              |  0.314583 |    min |
|   All |                        Cumulative flush time of primary shards |              |   1.07083 |    min |
|   All |                       Cumulative flush count of primary shards |              |         8 |        |
|   All |                Min cumulative flush time across primary shards |              |   1.07083 |    min |
|   All |             Median cumulative flush time across primary shards |              |   1.07083 |    min |
|   All |                Max cumulative flush time across primary shards |              |   1.07083 |    min |
|   All |                                             Total Young Gen GC |              |    26.276 |      s |
|   All |                                               Total Old Gen GC |              |     0.146 |      s |
|   All |                                                     Store size |              |   7.52231 |     GB |
|   All |                                                  Translog size |              |   1.16102 |     GB |
|   All |                                         Heap used for segments |              |   16.2183 |     MB |
|   All |                                       Heap used for doc values |              | 0.0264473 |     MB |
|   All |                                            Heap used for terms |              |    14.996 |     MB |
|   All |                                            Heap used for norms |              | 0.0543213 |     MB |
|   All |                                           Heap used for points |              |   0.30127 |     MB |
|   All |                                    Heap used for stored fields |              |  0.840263 |     MB |
|   All |                                                  Segment count |              |        69 |        |
|   All |                                                 Min Throughput | index-append |     31921 | docs/s |
|   All |                                              Median Throughput | index-append |   32815.1 | docs/s |
|   All |                                                 Max Throughput | index-append |   33305.9 | docs/s |
|   All |                                        50th percentile latency | index-append |   967.327 |     ms |
|   All |                                        90th percentile latency | index-append |   1638.16 |     ms |
|   All |                                        99th percentile latency | index-append |   5324.11 |     ms |
|   All |                                      99.9th percentile latency | index-append |   6622.19 |     ms |
|   All |                                       100th percentile latency | index-append |   6744.64 |     ms |
|   All |                                   50th percentile service time | index-append |   967.327 |     ms |
|   All |                                   90th percentile service time | index-append |   1638.16 |     ms |
|   All |                                   99th percentile service time | index-append |   5324.11 |     ms |
|   All |                                 99.9th percentile service time | index-append |   6622.19 |     ms |
|   All |                                  100th percentile service time | index-append |   6744.64 |     ms |
|   All |                                                     error rate | index-append |         0 |      % |
