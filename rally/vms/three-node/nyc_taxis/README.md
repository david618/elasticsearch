#### Nyc_taxis delete,create,index

```
esrally configure
esrally --track=nyc_taxis --target-hosts=a1:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index" --report-file=report.md
```

##### Three Node Elasticsearch

|   Lap |                                                         Metric |                Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|--------------------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |                     |   325.824 |    min |
|   All |             Min cumulative indexing time across primary shards |                     |   3.60062 |    min |
|   All |          Median cumulative indexing time across primary shards |                     |   4.83853 |    min |
|   All |             Max cumulative indexing time across primary shards |                     |   302.823 |    min |
|   All |            Cumulative indexing throttle time of primary shards |                     |         0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |                     |         0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |                     |         0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |                     |         0 |    min |
|   All |                        Cumulative merge time of primary shards |                     |   92.6616 |    min |
|   All |                       Cumulative merge count of primary shards |                     |       175 |        |
|   All |                Min cumulative merge time across primary shards |                     |  0.782283 |    min |
|   All |             Median cumulative merge time across primary shards |                     |   1.14697 |    min |
|   All |                Max cumulative merge time across primary shards |                     |   87.5916 |    min |
|   All |               Cumulative merge throttle time of primary shards |                     |   7.90008 |    min |
|   All |       Min cumulative merge throttle time across primary shards |                     |  0.115067 |    min |
|   All |    Median cumulative merge throttle time across primary shards |                     |  0.234292 |    min |
|   All |       Max cumulative merge throttle time across primary shards |                     |   6.89797 |    min |
|   All |                      Cumulative refresh time of primary shards |                     |   6.50067 |    min |
|   All |                     Cumulative refresh count of primary shards |                     |       244 |        |
|   All |              Min cumulative refresh time across primary shards |                     |  0.284917 |    min |
|   All |           Median cumulative refresh time across primary shards |                     |  0.305567 |    min |
|   All |              Max cumulative refresh time across primary shards |                     |   4.99043 |    min |
|   All |                        Cumulative flush time of primary shards |                     |   3.44357 |    min |
|   All |                       Cumulative flush count of primary shards |                     |        32 |        |
|   All |                Min cumulative flush time across primary shards |                     |    0.0922 |    min |
|   All |             Median cumulative flush time across primary shards |                     |  0.110458 |    min |
|   All |                Max cumulative flush time across primary shards |                     |   2.90688 |    min |
|   All |                                             Total Young Gen GC |                     |   223.559 |      s |
|   All |                                               Total Old Gen GC |                     |     1.189 |      s |
|   All |                                                     Store size |                     |   29.0668 |     GB |
|   All |                                                  Translog size |                     |    3.2952 |     GB |
|   All |                                         Heap used for segments |                     |    91.318 |     MB |
|   All |                                       Heap used for doc values |                     | 0.0607033 |     MB |
|   All |                                            Heap used for terms |                     |   75.7265 |     MB |
|   All |                                            Heap used for norms |                     | 0.0720825 |     MB |
|   All |                                           Heap used for points |                     |   10.6301 |     MB |
|   All |                                    Heap used for stored fields |                     |   4.82856 |     MB |
|   All |                                                  Segment count |                     |       115 |        |
|   All |                                                 Min Throughput |               index |   52335.8 | docs/s |
|   All |                                              Median Throughput |               index |   53557.1 | docs/s |
|   All |                                                 Max Throughput |               index |   58962.1 | docs/s |
|   All |                                        50th percentile latency |               index |   1263.25 |     ms |
|   All |                                        90th percentile latency |               index |   2068.02 |     ms |
|   All |                                        99th percentile latency |               index |   5600.74 |     ms |
|   All |                                      99.9th percentile latency |               index |   7997.05 |     ms |
|   All |                                     99.99th percentile latency |               index |   9346.68 |     ms |
|   All |                                       100th percentile latency |               index |   9910.93 |     ms |
|   All |                                   50th percentile service time |               index |   1263.25 |     ms |
|   All |                                   90th percentile service time |               index |   2068.02 |     ms |
|   All |                                   99th percentile service time |               index |   5600.74 |     ms |
|   All |                                 99.9th percentile service time |               index |   7997.05 |     ms |
|   All |                                99.99th percentile service time |               index |   9346.68 |     ms |
|   All |                                  100th percentile service time |               index |   9910.93 |     ms |
|   All |                                                     error rate |               index |         0 |      % |
|   All |                                                 Min Throughput |             default |      3.02 |  ops/s |
|   All |                                              Median Throughput |             default |      3.03 |  ops/s |
|   All |                                                 Max Throughput |             default |      3.06 |  ops/s |
|   All |                                        50th percentile latency |             default |   5.21498 |     ms |
|   All |                                        90th percentile latency |             default |   5.64769 |     ms |
|   All |                                        99th percentile latency |             default |     6.492 |     ms |
|   All |                                       100th percentile latency |             default |   23.2527 |     ms |
|   All |                                   50th percentile service time |             default |   4.81311 |     ms |
|   All |                                   90th percentile service time |             default |   5.27583 |     ms |
|   All |                                   99th percentile service time |             default |   6.09997 |     ms |
|   All |                                  100th percentile service time |             default |   22.8666 |     ms |
|   All |                                                     error rate |             default |         0 |      % |
|   All |                                                 Min Throughput |               range |      0.84 |  ops/s |
|   All |                                              Median Throughput |               range |      0.85 |  ops/s |
|   All |                                                 Max Throughput |               range |      0.86 |  ops/s |
|   All |                                        50th percentile latency |               range |   18526.4 |     ms |
|   All |                                        90th percentile latency |               range |   26222.5 |     ms |
|   All |                                        99th percentile latency |               range |   27944.5 |     ms |
|   All |                                       100th percentile latency |               range |   28130.4 |     ms |
|   All |                                   50th percentile service time |               range |   1186.17 |     ms |
|   All |                                   90th percentile service time |               range |   1213.17 |     ms |
|   All |                                   99th percentile service time |               range |   1348.48 |     ms |
|   All |                                  100th percentile service time |               range |   1357.25 |     ms |
|   All |                                                     error rate |               range |         0 |      % |
|   All |                                                 Min Throughput | distance_amount_agg |      1.41 |  ops/s |
|   All |                                              Median Throughput | distance_amount_agg |      1.42 |  ops/s |
|   All |                                                 Max Throughput | distance_amount_agg |      1.42 |  ops/s |
|   All |                                        50th percentile latency | distance_amount_agg |   21169.7 |     ms |
|   All |                                        90th percentile latency | distance_amount_agg |   29181.7 |     ms |
|   All |                                        99th percentile latency | distance_amount_agg |   30985.2 |     ms |
|   All |                                       100th percentile latency | distance_amount_agg |   31183.3 |     ms |
|   All |                                   50th percentile service time | distance_amount_agg |   700.658 |     ms |
|   All |                                   90th percentile service time | distance_amount_agg |   710.524 |     ms |
|   All |                                   99th percentile service time | distance_amount_agg |   719.883 |     ms |
|   All |                                  100th percentile service time | distance_amount_agg |   721.287 |     ms |
|   All |                                                     error rate | distance_amount_agg |         0 |      % |
|   All |                                                 Min Throughput |       autohisto_agg |      1.09 |  ops/s |
|   All |                                              Median Throughput |       autohisto_agg |       1.2 |  ops/s |
|   All |                                                 Max Throughput |       autohisto_agg |      1.24 |  ops/s |
|   All |                                        50th percentile latency |       autohisto_agg |   34378.3 |     ms |
|   All |                                        90th percentile latency |       autohisto_agg |   44273.5 |     ms |
|   All |                                        99th percentile latency |       autohisto_agg |   46495.5 |     ms |
|   All |                                       100th percentile latency |       autohisto_agg |   46729.6 |     ms |
|   All |                                   50th percentile service time |       autohisto_agg |   747.112 |     ms |
|   All |                                   90th percentile service time |       autohisto_agg |   762.133 |     ms |
|   All |                                   99th percentile service time |       autohisto_agg |   778.831 |     ms |
|   All |                                  100th percentile service time |       autohisto_agg |   800.263 |     ms |
|   All |                                                     error rate |       autohisto_agg |         0 |      % |
|   All |                                                 Min Throughput |  date_histogram_agg |      1.37 |  ops/s |
|   All |                                              Median Throughput |  date_histogram_agg |      1.37 |  ops/s |
|   All |                                                 Max Throughput |  date_histogram_agg |      1.37 |  ops/s |
|   All |                                        50th percentile latency |  date_histogram_agg |   23555.2 |     ms |
|   All |                                        90th percentile latency |  date_histogram_agg |   32948.2 |     ms |
|   All |                                        99th percentile latency |  date_histogram_agg |   35033.2 |     ms |
|   All |                                       100th percentile latency |  date_histogram_agg |   35269.4 |     ms |
|   All |                                   50th percentile service time |  date_histogram_agg |   728.887 |     ms |
|   All |                                   90th percentile service time |  date_histogram_agg |   747.665 |     ms |
|   All |                                   99th percentile service time |  date_histogram_agg |   769.811 |     ms |
|   All |                                  100th percentile service time |  date_histogram_agg |   777.893 |     ms |
|   All |                                                     error rate |  date_histogram_agg |         0 |      % |
