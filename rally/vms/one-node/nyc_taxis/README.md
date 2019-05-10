**NOTE:** The nyc_taxis data creates a 74GB file.  The root drive has only 50GB; and filled up on first attempt.  Stopped a81 and increased the hard drive of the root partition.  Ubuntu immediately recognized and grew the root filesystem to use the entire 512GB.  This larger drive is needed to test with larger datasets like nyc_taxis which has 165 million records and takes up 74GB of disk. 

#### Nyc_taxis delete,create,index

``
esrally configure
esrally --track=nyc_taxis --target-hosts=a1:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index" --report-file=report.md
```

##### One Node Elasticsearch

|   Lap |                                                         Metric |                Task |     Value |   Unit |
|------:|---------------------------------------------------------------:|--------------------:|----------:|-------:|
|   All |                     Cumulative indexing time of primary shards |                     |    338.86 |    min |
|   All |             Min cumulative indexing time across primary shards |                     |   5.32353 |    min |
|   All |          Median cumulative indexing time across primary shards |                     |   5.47006 |    min |
|   All |             Max cumulative indexing time across primary shards |                     |   311.702 |    min |
|   All |            Cumulative indexing throttle time of primary shards |                     |         0 |    min |
|   All |    Min cumulative indexing throttle time across primary shards |                     |         0 |    min |
|   All | Median cumulative indexing throttle time across primary shards |                     |         0 |    min |
|   All |    Max cumulative indexing throttle time across primary shards |                     |         0 |    min |
|   All |                        Cumulative merge time of primary shards |                     |   89.2018 |    min |
|   All |                       Cumulative merge count of primary shards |                     |       121 |        |
|   All |                Min cumulative merge time across primary shards |                     |  0.163183 |    min |
|   All |             Median cumulative merge time across primary shards |                     |  0.198333 |    min |
|   All |                Max cumulative merge time across primary shards |                     |   88.2152 |    min |
|   All |               Cumulative merge throttle time of primary shards |                     |   5.44328 |    min |
|   All |       Min cumulative merge throttle time across primary shards |                     | 0.0273167 |    min |
|   All |    Median cumulative merge throttle time across primary shards |                     | 0.0307417 |    min |
|   All |       Max cumulative merge throttle time across primary shards |                     |   5.27152 |    min |
|   All |                      Cumulative refresh time of primary shards |                     |   6.82395 |    min |
|   All |                     Cumulative refresh count of primary shards |                     |       185 |        |
|   All |              Min cumulative refresh time across primary shards |                     | 0.0769833 |    min |
|   All |           Median cumulative refresh time across primary shards |                     |  0.296883 |    min |
|   All |              Max cumulative refresh time across primary shards |                     |   5.43793 |    min |
|   All |                        Cumulative flush time of primary shards |                     |   4.81805 |    min |
|   All |                       Cumulative flush count of primary shards |                     |        32 |        |
|   All |                Min cumulative flush time across primary shards |                     |    0.2814 |    min |
|   All |             Median cumulative flush time across primary shards |                     |  0.336725 |    min |
|   All |                Max cumulative flush time across primary shards |                     |   3.02252 |    min |
|   All |                                             Total Young Gen GC |                     |   178.471 |      s |
|   All |                                               Total Old Gen GC |                     |     1.153 |      s |
|   All |                                                     Store size |                     |   29.1678 |     GB |
|   All |                                                  Translog size |                     |   3.35171 |     GB |
|   All |                                         Heap used for segments |                     |    84.223 |     MB |
|   All |                                       Heap used for doc values |                     | 0.0607338 |     MB |
|   All |                                            Heap used for terms |                     |   68.8275 |     MB |
|   All |                                            Heap used for norms |                     | 0.0734253 |     MB |
|   All |                                           Heap used for points |                     |   10.5626 |     MB |
|   All |                                    Heap used for stored fields |                     |   4.69869 |     MB |
|   All |                                                  Segment count |                     |       123 |        |
|   All |                                                 Min Throughput |               index |   53733.1 | docs/s |
|   All |                                              Median Throughput |               index |   54553.4 | docs/s |
|   All |                                                 Max Throughput |               index |   60704.1 | docs/s |
|   All |                                        50th percentile latency |               index |    1212.4 |     ms |
|   All |                                        90th percentile latency |               index |   1913.28 |     ms |
|   All |                                        99th percentile latency |               index |   6013.03 |     ms |
|   All |                                      99.9th percentile latency |               index |   8542.89 |     ms |
|   All |                                     99.99th percentile latency |               index |     10123 |     ms |
|   All |                                       100th percentile latency |               index |   11044.6 |     ms |
|   All |                                   50th percentile service time |               index |    1212.4 |     ms |
|   All |                                   90th percentile service time |               index |   1913.28 |     ms |
|   All |                                   99th percentile service time |               index |   6013.03 |     ms |
|   All |                                 99.9th percentile service time |               index |   8542.89 |     ms |
|   All |                                99.99th percentile service time |               index |     10123 |     ms |
|   All |                                  100th percentile service time |               index |   11044.6 |     ms |
|   All |                                                     error rate |               index |         0 |      % |
|   All |                                                 Min Throughput |             default |      3.02 |  ops/s |
|   All |                                              Median Throughput |             default |      3.03 |  ops/s |
|   All |                                                 Max Throughput |             default |      3.06 |  ops/s |
|   All |                                        50th percentile latency |             default |   5.78202 |     ms |
|   All |                                        90th percentile latency |             default |   6.42427 |     ms |
|   All |                                        99th percentile latency |             default |   8.12264 |     ms |
|   All |                                       100th percentile latency |             default |   8.23403 |     ms |
|   All |                                   50th percentile service time |             default |   5.39885 |     ms |
|   All |                                   90th percentile service time |             default |   6.02561 |     ms |
|   All |                                   99th percentile service time |             default |   7.75243 |     ms |
|   All |                                  100th percentile service time |             default |    7.8641 |     ms |
|   All |                                                     error rate |             default |         0 |      % |
|   All |                                                 Min Throughput |               range |      0.98 |  ops/s |
|   All |                                              Median Throughput |               range |         1 |  ops/s |
|   All |                                                 Max Throughput |               range |         1 |  ops/s |
|   All |                                        50th percentile latency |               range |   1043.01 |     ms |
|   All |                                        90th percentile latency |               range |   2768.48 |     ms |
|   All |                                        99th percentile latency |               range |   3075.35 |     ms |
|   All |                                       100th percentile latency |               range |   3117.89 |     ms |
|   All |                                   50th percentile service time |               range |   952.257 |     ms |
|   All |                                   90th percentile service time |               range |   1259.94 |     ms |
|   All |                                   99th percentile service time |               range |   1351.95 |     ms |
|   All |                                  100th percentile service time |               range |   1383.24 |     ms |
|   All |                                                     error rate |               range |         0 |      % |
|   All |                                                 Min Throughput | distance_amount_agg |      2.01 |  ops/s |
|   All |                                              Median Throughput | distance_amount_agg |      2.02 |  ops/s |
|   All |                                                 Max Throughput | distance_amount_agg |      2.04 |  ops/s |
|   All |                                        50th percentile latency | distance_amount_agg |   4.75649 |     ms |
|   All |                                        90th percentile latency | distance_amount_agg |   4.96271 |     ms |
|   All |                                        99th percentile latency | distance_amount_agg |     5.308 |     ms |
|   All |                                       100th percentile latency | distance_amount_agg |   5.71105 |     ms |
|   All |                                   50th percentile service time | distance_amount_agg |   4.16145 |     ms |
|   All |                                   90th percentile service time | distance_amount_agg |   4.39151 |     ms |
|   All |                                   99th percentile service time | distance_amount_agg |   4.73088 |     ms |
|   All |                                  100th percentile service time | distance_amount_agg |    5.1352 |     ms |
|   All |                                                     error rate | distance_amount_agg |         0 |      % |
|   All |                                                 Min Throughput |       autohisto_agg |       1.1 |  ops/s |
|   All |                                              Median Throughput |       autohisto_agg |      1.22 |  ops/s |
|   All |                                                 Max Throughput |       autohisto_agg |      1.28 |  ops/s |
|   All |                                        50th percentile latency |       autohisto_agg |   32368.2 |     ms |
|   All |                                        90th percentile latency |       autohisto_agg |     40849 |     ms |
|   All |                                        99th percentile latency |       autohisto_agg |   42701.9 |     ms |
|   All |                                       100th percentile latency |       autohisto_agg |   42902.8 |     ms |
|   All |                                   50th percentile service time |       autohisto_agg |   713.918 |     ms |
|   All |                                   90th percentile service time |       autohisto_agg |   728.897 |     ms |
|   All |                                   99th percentile service time |       autohisto_agg |   744.736 |     ms |
|   All |                                  100th percentile service time |       autohisto_agg |    746.03 |     ms |
|   All |                                                     error rate |       autohisto_agg |         0 |      % |
|   All |                                                 Min Throughput |  date_histogram_agg |      1.44 |  ops/s |
|   All |                                              Median Throughput |  date_histogram_agg |      1.45 |  ops/s |
|   All |                                                 Max Throughput |  date_histogram_agg |      1.45 |  ops/s |
|   All |                                        50th percentile latency |  date_histogram_agg |   19782.7 |     ms |
|   All |                                        90th percentile latency |  date_histogram_agg |   27294.1 |     ms |
|   All |                                        99th percentile latency |  date_histogram_agg |   28996.9 |     ms |
|   All |                                       100th percentile latency |  date_histogram_agg |   29189.9 |     ms |
|   All |                                   50th percentile service time |  date_histogram_agg |   692.063 |     ms |
|   All |                                   90th percentile service time |  date_histogram_agg |   705.844 |     ms |
|   All |                                   99th percentile service time |  date_histogram_agg |   717.885 |     ms |
|   All |                                  100th percentile service time |  date_histogram_agg |    744.72 |     ms |
|   All |                                                     error rate |  date_histogram_agg |         0 |      % |

