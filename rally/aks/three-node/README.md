```
esrally --track=geonames --target-hosts=datastore-elasticsearch-headless:9200 --pipeline=benchmark-only
```


```
    ____        ____
   / __ \____ _/ / /_  __
  / /_/ / __ `/ / / / / /
 / _, _/ /_/ / / / /_/ /
/_/ |_|\__,_/_/_/\__, /
                /____/


************************************************************************
************** WARNING: A dark dungeon lies ahead of you  **************
************************************************************************

Rally does not have control over the configuration of the benchmarked
Elasticsearch cluster.

Be aware that results may be misleading due to problems with the setup.
Rally is also not able to gather lots of metrics at all (like CPU usage
of the benchmarked cluster) or may even produce misleading metrics (like
the index size).

************************************************************************
****** Use this pipeline only if you are aware of the tradeoffs.  ******
*************************** Watch your step! ***************************
************************************************************************

[INFO] Racing on track [geonames], challenge [append-no-conflicts] and car ['external'] with version [7.0.0].

[INFO] Downloading data for track geonames (252.4 MB total size)                  [100.0%]
[INFO] Decompressing track data from [/root/.rally/benchmarks/data/geonames/documents-2.json.bz2] to [/root/.rally/benchmarks/data/geonames/documents-2.json] (resulting size: 3.30 GB) ... [OK]
[INFO] Preparing file offset table for [/root/.rally/benchmarks/data/geonames/documents-2.json] ... [OK]
Running delete-index                                                           [100% done]
Running create-index                                                           [100% done]
Running check-cluster-health                                                   [100% done]
Running index-append                                                           [100% done]
Running refresh-after-index                                                    [100% done]
Running force-merge                                                            [100% done]
Running refresh-after-force-merge                                              [100% done]
Running index-stats                                                            [100% done]
Running node-stats                                                             [100% done]
Running default                                                                [100% done]
Running term                                                                   [100% done]
Running phrase                                                                 [100% done]
Running country_agg_uncached                                                   [100% done]
Running country_agg_cached                                                     [100% done]
Running scroll                                                                 [100% done]
Running expression                                                             [100% done]
Running painless_static                                                        [100% done]
Running painless_dynamic                                                       [100% done]
Running decay_geo_gauss_function_score                                         [100% done]
Running decay_geo_gauss_script_score                                           [100% done]
Running field_value_function_score                                             [100% done]
Running field_value_script_score                                               [100% done]
Running random_function_score                                                  [100% done]
Running random_script_score                                                    [100% done]
Running large_terms                                                            [100% done]
Running large_filtered_terms                                                   [100% done]
Running large_prohibited_terms                                                 [100% done]


------------------------------------------------------
    _______             __   _____
   / ____(_)___  ____ _/ /  / ___/_________  ________
  / /_  / / __ \/ __ `/ /   \__ \/ ___/ __ \/ ___/ _ \
 / __/ / / / / / /_/ / /   ___/ / /__/ /_/ / /  /  __/
/_/   /_/_/ /_/\__,_/_/   /____/\___/\____/_/   \___/
------------------------------------------------------
```

|   Lap |                                                         Metric |                           Task |     Value |    Unit |
|------:|---------------------------------------------------------------:|-------------------------------:|----------:|--------:|
|   All |                     Cumulative indexing time of primary shards |                                |   23.3822 |     min |
|   All |             Min cumulative indexing time across primary shards |                                |    4.2357 |     min |
|   All |          Median cumulative indexing time across primary shards |                                |   4.67135 |     min |
|   All |             Max cumulative indexing time across primary shards |                                |   4.99367 |     min |
|   All |            Cumulative indexing throttle time of primary shards |                                |         0 |     min |
|   All |    Min cumulative indexing throttle time across primary shards |                                |         0 |     min |
|   All | Median cumulative indexing throttle time across primary shards |                                |         0 |     min |
|   All |    Max cumulative indexing throttle time across primary shards |                                |         0 |     min |
|   All |                        Cumulative merge time of primary shards |                                | 0.0557167 |     min |
|   All |                       Cumulative merge count of primary shards |                                |         1 |         |
|   All |                Min cumulative merge time across primary shards |                                |         0 |     min |
|   All |             Median cumulative merge time across primary shards |                                |         0 |     min |
|   All |                Max cumulative merge time across primary shards |                                | 0.0557167 |     min |
|   All |               Cumulative merge throttle time of primary shards |                                |         0 |     min |
|   All |       Min cumulative merge throttle time across primary shards |                                |         0 |     min |
|   All |    Median cumulative merge throttle time across primary shards |                                |         0 |     min |
|   All |       Max cumulative merge throttle time across primary shards |                                |         0 |     min |
|   All |                      Cumulative refresh time of primary shards |                                |   2.85053 |     min |
|   All |                     Cumulative refresh count of primary shards |                                |        81 |         |
|   All |              Min cumulative refresh time across primary shards |                                |  0.524533 |     min |
|   All |                     Cumulative refresh count of primary shards |                                |        81 |         |
|   All |              Min cumulative refresh time across primary shards |                                |  0.524533 |     min |
|   All |           Median cumulative refresh time across primary shards |                                |   0.56795 |     min |
|   All |              Max cumulative refresh time across primary shards |                                |    0.5992 |     min |
|   All |                        Cumulative flush time of primary shards |                                |    7.2837 |     min |
|   All |                       Cumulative flush count of primary shards |                                |        10 |         |
|   All |                Min cumulative flush time across primary shards |                                |     1.239 |     min |
|   All |             Median cumulative flush time across primary shards |                                |   1.50397 |     min |
|   All |                Max cumulative flush time across primary shards |                                |   1.58238 |     min |
|   All |                                             Total Young Gen GC |                                |   6596.18 |       s |
|   All |                                               Total Old Gen GC |                                |     0.295 |       s |
|   All |                                                     Store size |                                |   2.94409 |      GB |
|   All |                                                  Translog size |                                |   2.79361 |      GB |
|   All |                                         Heap used for segments |                                |   11.3446 |      MB |
|   All |                                       Heap used for doc values |                                | 0.0207939 |      MB |
|   All |                                            Heap used for terms |                                |   10.2492 |      MB |
|   All |                                            Heap used for norms |                                | 0.0357056 |      MB |
|   All |                                           Heap used for points |                                |  0.270193 |      MB |
|   All |                                    Heap used for stored fields |                                |  0.768753 |      MB |
|   All |                                                  Segment count |                                |        47 |         |
|   All |                                                 Min Throughput |                   index-append |   12729.7 |  docs/s |
|   All |                                              Median Throughput |                   index-append |   13450.5 |  docs/s |
|   All |                                                 Max Throughput |                   index-append |   14359.2 |  docs/s |
|   All |                                        50th percentile latency |                   index-append |   2600.61 |      ms |
|   All |                                        90th percentile latency |                   index-append |      3644 |      ms |
|   All |                                        99th percentile latency |                   index-append |    9608.2 |      ms |
|   All |                                      99.9th percentile latency |                   index-append |   10502.5 |      ms |
|   All |                                       100th percentile latency |                   index-append |   10567.8 |      ms |
|   All |                                   50th percentile service time |                   index-append |   2600.61 |      ms |
|   All |                                   90th percentile service time |                   index-append |      3644 |      ms |
|   All |                                   99th percentile service time |                   index-append |    9608.2 |      ms |
|   All |                                 99.9th percentile service time |                   index-append |   10502.5 |      ms |
|   All |                                  100th percentile service time |                   index-append |   10567.8 |      ms |
|   All |                                                     error rate |                   index-append |         0 |       % |
|   All |                                                 Min Throughput |                    index-stats |     35.33 |   ops/s |
|   All |                                              Median Throughput |                    index-stats |     35.94 |   ops/s |
|   All |                                                 Max Throughput |                    index-stats |     36.48 |   ops/s |
|   All |                                        50th percentile latency |                    index-stats |   17895.6 |      ms |
|   All |                                        90th percentile latency |                    index-stats |   24377.5 |      ms |
|   All |                                        99th percentile latency |                    index-stats |     25925 |      ms |
|   All |                                      99.9th percentile latency |                    index-stats |   26085.7 |      ms |
|   All |                                       100th percentile latency |                    index-stats |   26090.7 |      ms |
|   All |                                   50th percentile service time |                    index-stats |   4.62036 |      ms |
|   All |                                   90th percentile service time |                    index-stats |   198.707 |      ms |
|   All |                                   99th percentile service time |                    index-stats |   225.391 |      ms |
|   All |                                 99.9th percentile service time |                    index-stats |   233.659 |      ms |
|   All |                                  100th percentile service time |                    index-stats |   238.424 |      ms |
|   All |                                                     error rate |                    index-stats |         0 |       % |
|   All |                                                 Min Throughput |                     node-stats |     34.27 |   ops/s |
|   All |                                              Median Throughput |                     node-stats |     34.99 |   ops/s |
|   All |                                                 Max Throughput |                     node-stats |     37.27 |   ops/s |
|   All |                                        50th percentile latency |                     node-stats |   11050.9 |      ms |
|   All |                                        90th percentile latency |                     node-stats |     18346 |      ms |
|   All |                                        99th percentile latency |                     node-stats |   20184.5 |      ms |
|   All |                                      99.9th percentile latency |                     node-stats |   20361.8 |      ms |
|   All |                                       100th percentile latency |                     node-stats |   20365.9 |      ms |
|   All |                                   50th percentile service time |                     node-stats |    5.5828 |      ms |
|   All |                                   90th percentile service time |                     node-stats |   196.161 |      ms |
|   All |                                   99th percentile service time |                     node-stats |   229.801 |      ms |
|   All |                                 99.9th percentile service time |                     node-stats |   238.935 |      ms |
|   All |                                  100th percentile service time |                     node-stats |   243.685 |      ms |
|   All |                                                     error rate |                     node-stats |         0 |       % |
|   All |                                                 Min Throughput |                        default |     49.47 |   ops/s |
|   All |                                              Median Throughput |                        default |     50.04 |   ops/s |
|   All |                                                 Max Throughput |                        default |     50.08 |   ops/s |
|   All |                                        50th percentile latency |                        default |   3.20188 |      ms |
|   All |                                        90th percentile latency |                        default |   115.663 |      ms |
|   All |                                        99th percentile latency |                        default |   210.908 |      ms |
|   All |                                      99.9th percentile latency |                        default |   284.702 |      ms |
|   All |                                       100th percentile latency |                        default |   300.613 |      ms |
|   All |                                   50th percentile service time |                        default |   2.95033 |      ms |
|   All |                                   90th percentile service time |                        default |   3.37261 |      ms |
|   All |                                   99th percentile service time |                        default |   206.777 |      ms |
|   All |                                 99.9th percentile service time |                        default |   224.144 |      ms |
|   All |                                  100th percentile service time |                        default |   225.787 |      ms |
|   All |                                                     error rate |                        default |         0 |       % |
|   All |                                                 Min Throughput |                           term |    167.05 |   ops/s |
|   All |                                              Median Throughput |                           term |    190.11 |   ops/s |
|   All |                                                 Max Throughput |                           term |    191.91 |   ops/s |
|   All |                                        50th percentile latency |                           term |   263.795 |      ms |
|   All |                                        90th percentile latency |                           term |   391.543 |      ms |
|   All |                                        99th percentile latency |                           term |   515.664 |      ms |
|   All |                                      99.9th percentile latency |                           term |   535.868 |      ms |
|   All |                                       100th percentile latency |                           term |   538.662 |      ms |
|   All |                                   50th percentile service time |                           term |   1.88418 |      ms |
|   All |                                   90th percentile service time |                           term |   2.23288 |      ms |
|   All |                                   99th percentile service time |                           term |   190.498 |      ms |
|   All |                                 99.9th percentile service time |                           term |   228.994 |      ms |
|   All |                                  100th percentile service time |                           term |   234.605 |      ms |
|   All |                                                     error rate |                           term |         0 |       % |
|   All |                                                 Min Throughput |                         phrase |    109.19 |   ops/s |
|   All |                                              Median Throughput |                         phrase |    110.23 |   ops/s |
|   All |                                                 Max Throughput |                         phrase |    112.97 |   ops/s |
|   All |                                        50th percentile latency |                         phrase |   3951.61 |      ms |
|   All |                                        90th percentile latency |                         phrase |   5579.63 |      ms |
|   All |                                        99th percentile latency |                         phrase |   5774.77 |      ms |
|   All |                                      99.9th percentile latency |                         phrase |   5849.37 |      ms |
|   All |                                       100th percentile latency |                         phrase |   5850.97 |      ms |
|   All |                                   50th percentile service time |                         phrase |   2.86482 |      ms |
|   All |                                   90th percentile service time |                         phrase |   3.32917 |      ms |
|   All |                                   99th percentile service time |                         phrase |   221.782 |      ms |
|   All |                                 99.9th percentile service time |                         phrase |   236.982 |      ms |
|   All |                                  100th percentile service time |                         phrase |   239.013 |      ms |
|   All |                                                     error rate |                         phrase |         0 |       % |
|   All |                                                 Min Throughput |           country_agg_uncached |      3.95 |   ops/s |
|   All |                                              Median Throughput |           country_agg_uncached |      3.96 |   ops/s |
|   All |                                                 Max Throughput |           country_agg_uncached |      3.97 |   ops/s |
|   All |                                        50th percentile latency |           country_agg_uncached |   13396.1 |      ms |
|   All |                                        90th percentile latency |           country_agg_uncached |   15395.5 |      ms |
|   All |                                        99th percentile latency |           country_agg_uncached |   15787.4 |      ms |
|   All |                                       100th percentile latency |           country_agg_uncached |   15789.5 |      ms |
|   All |                                   50th percentile service time |           country_agg_uncached |   199.967 |      ms |
|   All |                                   90th percentile service time |           country_agg_uncached |   397.539 |      ms |
|   All |                                   99th percentile service time |           country_agg_uncached |   429.641 |      ms |
|   All |                                  100th percentile service time |           country_agg_uncached |   431.086 |      ms |
|   All |                                                     error rate |           country_agg_uncached |         0 |       % |
|   All |                                                 Min Throughput |             country_agg_cached |     96.65 |   ops/s |
|   All |                                              Median Throughput |             country_agg_cached |    100.02 |   ops/s |
|   All |                                                 Max Throughput |             country_agg_cached |    100.15 |   ops/s |
|   All |                                        50th percentile latency |             country_agg_cached |   2.40405 |      ms |
|   All |                                        90th percentile latency |             country_agg_cached |   212.129 |      ms |
|   All |                                        99th percentile latency |             country_agg_cached |   578.093 |      ms |
|   All |                                      99.9th percentile latency |             country_agg_cached |   649.825 |      ms |
|   All |                                       100th percentile latency |             country_agg_cached |   657.271 |      ms |
|   All |                                   50th percentile service time |             country_agg_cached |   2.08928 |      ms |
|   All |                                   90th percentile service time |             country_agg_cached |   2.38896 |      ms |
|   All |                                   99th percentile service time |             country_agg_cached |   201.791 |      ms |
|   All |                                 99.9th percentile service time |             country_agg_cached |   214.745 |      ms |
|   All |                                  100th percentile service time |             country_agg_cached |   229.927 |      ms |
|   All |                                                     error rate |             country_agg_cached |         0 |       % |
|   All |                                                 Min Throughput |                         scroll |     18.02 | pages/s |
|   All |                                              Median Throughput |                         scroll |     18.05 | pages/s |
|   All |                                                 Max Throughput |                         scroll |     18.16 | pages/s |
|   All |                                        50th percentile latency |                         scroll |   97454.6 |      ms |
|   All |                                        90th percentile latency |                         scroll |    113025 |      ms |
|   All |                                        99th percentile latency |                         scroll |    116817 |      ms |
|   All |                                       100th percentile latency |                         scroll |    117301 |      ms |
|   All |                                   50th percentile service time |                         scroll |   1324.88 |      ms |
|   All |                                   90th percentile service time |                         scroll |   1548.77 |      ms |
|   All |                                   99th percentile service time |                         scroll |    1757.9 |      ms |
|   All |                                  100th percentile service time |                         scroll |   1762.22 |      ms |
|   All |                                                     error rate |                         scroll |         0 |       % |
|   All |                                                 Min Throughput |                     expression |         2 |   ops/s |
|   All |                                              Median Throughput |                     expression |         2 |   ops/s |
|   All |                                                 Max Throughput |                     expression |         2 |   ops/s |
|   All |                                        50th percentile latency |                     expression |   398.343 |      ms |
|   All |                                        90th percentile latency |                     expression |   417.345 |      ms |
|   All |                                        99th percentile latency |                     expression |   597.873 |      ms |
|   All |                                       100th percentile latency |                     expression |   615.029 |      ms |
|   All |                                   50th percentile service time |                     expression |   397.391 |      ms |
|   All |                                   90th percentile service time |                     expression |   412.199 |      ms |
|   All |                                   99th percentile service time |                     expression |   597.749 |      ms |
|   All |                                  100th percentile service time |                     expression |   614.894 |      ms |
|   All |                                                     error rate |                     expression |         0 |       % |
|   All |                                                 Min Throughput |                painless_static |      0.31 |   ops/s |
|   All |                                              Median Throughput |                painless_static |      0.31 |   ops/s |
|   All |                                                 Max Throughput |                painless_static |      0.31 |   ops/s |
|   All |                                        50th percentile latency |                painless_static |    631211 |      ms |
|   All |                                        90th percentile latency |                painless_static |    731462 |      ms |
|   All |                                        99th percentile latency |                painless_static |    754133 |      ms |
|   All |                                       100th percentile latency |                painless_static |    756538 |      ms |
|   All |                                   50th percentile service time |                painless_static |   3211.44 |      ms |
|   All |                                   90th percentile service time |                painless_static |   3344.41 |      ms |
|   All |                                   99th percentile service time |                painless_static |   3428.97 |      ms |
|   All |                                  100th percentile service time |                painless_static |   3462.87 |      ms |
|   All |                                                     error rate |                painless_static |         0 |       % |
|   All |                                                 Min Throughput |               painless_dynamic |      0.69 |   ops/s |
|   All |                                              Median Throughput |               painless_dynamic |      0.69 |   ops/s |
|   All |                                                 Max Throughput |               painless_dynamic |      0.69 |   ops/s |
|   All |                                        50th percentile latency |               painless_dynamic |    196609 |      ms |
|   All |                                        90th percentile latency |               painless_dynamic |    228350 |      ms |
|   All |                                        99th percentile latency |               painless_dynamic |    235746 |      ms |
|   All |                                       100th percentile latency |               painless_dynamic |    236596 |      ms |
|   All |                                   50th percentile service time |               painless_dynamic |   1421.93 |      ms |
|   All |                                   90th percentile service time |               painless_dynamic |   1603.29 |      ms |
|   All |                                   99th percentile service time |               painless_dynamic |   1678.49 |      ms |
|   All |                                  100th percentile service time |               painless_dynamic |   1780.88 |      ms |
|   All |                                                     error rate |               painless_dynamic |         0 |       % |
|   All |                                                 Min Throughput | decay_geo_gauss_function_score |         1 |   ops/s |
|   All |                                              Median Throughput | decay_geo_gauss_function_score |         1 |   ops/s |
|   All |                                                 Max Throughput | decay_geo_gauss_function_score |         1 |   ops/s |
|   All |                                        50th percentile latency | decay_geo_gauss_function_score |    423.31 |      ms |
|   All |                                        90th percentile latency | decay_geo_gauss_function_score |   441.197 |      ms |
|   All |                                        99th percentile latency | decay_geo_gauss_function_score |   631.544 |      ms |
|   All |                                       100th percentile latency | decay_geo_gauss_function_score |   635.388 |      ms |
|   All |                                   50th percentile service time | decay_geo_gauss_function_score |   422.675 |      ms |
|   All |                                   90th percentile service time | decay_geo_gauss_function_score |   440.515 |      ms |
|   All |                                   99th percentile service time | decay_geo_gauss_function_score |   630.843 |      ms |
|   All |                                  100th percentile service time | decay_geo_gauss_function_score |   634.713 |      ms |
|   All |                                                     error rate | decay_geo_gauss_function_score |         0 |       % |
|   All |                                                 Min Throughput |   decay_geo_gauss_script_score |       0.7 |   ops/s |
|   All |                                              Median Throughput |   decay_geo_gauss_script_score |      0.71 |   ops/s |
|   All |                                                 Max Throughput |   decay_geo_gauss_script_score |      0.71 |   ops/s |
|   All |                                        50th percentile latency |   decay_geo_gauss_script_score |    105614 |      ms |
|   All |                                        90th percentile latency |   decay_geo_gauss_script_score |    121819 |      ms |
|   All |                                        99th percentile latency |   decay_geo_gauss_script_score |    125427 |      ms |
|   All |                                       100th percentile latency |   decay_geo_gauss_script_score |    125768 |      ms |
|   All |                                   50th percentile service time |   decay_geo_gauss_script_score |   1345.76 |      ms |
|   All |                                   90th percentile service time |   decay_geo_gauss_script_score |   1528.17 |      ms |
|   All |                                   99th percentile service time |   decay_geo_gauss_script_score |   1562.78 |      ms |
|   All |                                  100th percentile service time |   decay_geo_gauss_script_score |   1594.67 |      ms |
|   All |                                                     error rate |   decay_geo_gauss_script_score |         0 |       % |
|   All |                                                 Min Throughput |     field_value_function_score |       1.5 |   ops/s |
|   All |                                              Median Throughput |     field_value_function_score |       1.5 |   ops/s |
|   All |                                                 Max Throughput |     field_value_function_score |      1.51 |   ops/s |
|   All |                                        50th percentile latency |     field_value_function_score |   181.993 |      ms |
|   All |                                        90th percentile latency |     field_value_function_score |   191.638 |      ms |
|   All |                                        99th percentile latency |     field_value_function_score |   206.669 |      ms |
|   All |                                       100th percentile latency |     field_value_function_score |   382.716 |      ms |
|   All |                                   50th percentile service time |     field_value_function_score |   181.453 |      ms |
|   All |                                   90th percentile service time |     field_value_function_score |   191.064 |      ms |
|   All |                                   99th percentile service time |     field_value_function_score |   206.125 |      ms |
|   All |                                  100th percentile service time |     field_value_function_score |   382.189 |      ms |
|   All |                                                     error rate |     field_value_function_score |         0 |       % |
|   All |                                                 Min Throughput |       field_value_script_score |       1.5 |   ops/s |
|   All |                                              Median Throughput |       field_value_script_score |       1.5 |   ops/s |
|   All |                                                 Max Throughput |       field_value_script_score |       1.5 |   ops/s |
|   All |                                        50th percentile latency |       field_value_script_score |    260.77 |      ms |
|   All |                                        90th percentile latency |       field_value_script_score |   461.416 |      ms |
|   All |                                        99th percentile latency |       field_value_script_score |   473.433 |      ms |
|   All |                                       100th percentile latency |       field_value_script_score |   475.088 |      ms |
|   All |                                   50th percentile service time |       field_value_script_score |   260.271 |      ms |
|   All |                                   90th percentile service time |       field_value_script_score |   460.961 |      ms |
|   All |                                   99th percentile service time |       field_value_script_score |   472.945 |      ms |
|   All |                                  100th percentile service time |       field_value_script_score |   474.594 |      ms |
|   All |                                                     error rate |       field_value_script_score |         0 |       % |
|   All |                                                 Min Throughput |          random_function_score |      0.95 |   ops/s |
|   All |                                              Median Throughput |          random_function_score |      0.95 |   ops/s |
|   All |                                                 Max Throughput |          random_function_score |      0.95 |   ops/s |
|   All |                                        50th percentile latency |          random_function_score |   98073.1 |      ms |
|   All |                                        90th percentile latency |          random_function_score |    113291 |      ms |
|   All |                                        99th percentile latency |          random_function_score |    116969 |      ms |
|   All |                                       100th percentile latency |          random_function_score |    117299 |      ms |
|   All |                                   50th percentile service time |          random_function_score |   1002.18 |      ms |
|   All |                                   90th percentile service time |          random_function_score |   1207.41 |      ms |
|   All |                                   99th percentile service time |          random_function_score |    1272.7 |      ms |
|   All |                                  100th percentile service time |          random_function_score |   1432.26 |      ms |
|   All |                                                     error rate |          random_function_score |         0 |       % |
|   All |                                                 Min Throughput |            random_script_score |       0.5 |   ops/s |
|   All |                                              Median Throughput |            random_script_score |       0.5 |   ops/s |
|   All |                                                 Max Throughput |            random_script_score |       0.5 |   ops/s |
|   All |                                        50th percentile latency |            random_script_score |    339002 |      ms |
|   All |                                        90th percentile latency |            random_script_score |    392844 |      ms |
|   All |                                        99th percentile latency |            random_script_score |    404780 |      ms |
|   All |                                       100th percentile latency |            random_script_score |    406038 |      ms |
|   All |                                   50th percentile service time |            random_script_score |   2048.71 |      ms |
|   All |                                   90th percentile service time |            random_script_score |   2127.27 |      ms |
|   All |                                   99th percentile service time |            random_script_score |   2195.77 |      ms |
|   All |                                  100th percentile service time |            random_script_score |   2292.12 |      ms |
|   All |                                                     error rate |            random_script_score |         0 |       % |
|   All |                                                 Min Throughput |                    large_terms |      1.68 |   ops/s |
|   All |                                              Median Throughput |                    large_terms |      1.69 |   ops/s |
|   All |                                                 Max Throughput |                    large_terms |      1.69 |   ops/s |
|   All |                                        50th percentile latency |                    large_terms |     23497 |      ms |
|   All |                                        90th percentile latency |                    large_terms |   27783.2 |      ms |
|   All |                                        99th percentile latency |                    large_terms |   28267.5 |      ms |
|   All |                                       100th percentile latency |                    large_terms |   28349.8 |      ms |
|   All |                                   50th percentile service time |                    large_terms |   572.325 |      ms |
|   All |                                   90th percentile service time |                    large_terms |   779.489 |      ms |
|   All |                                   99th percentile service time |                    large_terms |   817.808 |      ms |
|   All |                                  100th percentile service time |                    large_terms |   948.536 |      ms |
|   All |                                                     error rate |                    large_terms |         0 |       % |
|   All |                                                 Min Throughput |           large_filtered_terms |      1.68 |   ops/s |
|   All |                                              Median Throughput |           large_filtered_terms |      1.68 |   ops/s |
|   All |                                                 Max Throughput |           large_filtered_terms |      1.69 |   ops/s |
|   All |                                        50th percentile latency |           large_filtered_terms |   24502.3 |      ms |
|   All |                                        90th percentile latency |           large_filtered_terms |     27673 |      ms |
|   All |                                        99th percentile latency |           large_filtered_terms |   28882.5 |      ms |
|   All |                                       100th percentile latency |           large_filtered_terms |   29155.7 |      ms |
|   All |                                   50th percentile service time |           large_filtered_terms |   575.448 |      ms |
|   All |                                   90th percentile service time |           large_filtered_terms |   786.728 |      ms |
|   All |                                   99th percentile service time |           large_filtered_terms |   809.736 |      ms |
|   All |                                  100th percentile service time |           large_filtered_terms |   812.178 |      ms |
|   All |                                                     error rate |           large_filtered_terms |         0 |       % |
|   All |                                                 Min Throughput |         large_prohibited_terms |      1.69 |   ops/s |
|   All |                                              Median Throughput |         large_prohibited_terms |      1.69 |   ops/s |
|   All |                                                 Max Throughput |         large_prohibited_terms |       1.7 |   ops/s |
|   All |                                        50th percentile latency |         large_prohibited_terms |     22821 |      ms |
|   All |                                        90th percentile latency |         large_prohibited_terms |   26993.5 |      ms |
|   All |                                        99th percentile latency |         large_prohibited_terms |   27556.8 |      ms |
|   All |                                       100th percentile latency |         large_prohibited_terms |   27654.1 |      ms |
|   All |                                   50th percentile service time |         large_prohibited_terms |   570.748 |      ms |
|   All |                                   90th percentile service time |         large_prohibited_terms |   777.073 |      ms |
|   All |                                   99th percentile service time |         large_prohibited_terms |   797.331 |      ms |
|   All |                                  100th percentile service time |         large_prohibited_terms |   804.287 |      ms |
|   All |                                                     error rate |         large_prohibited_terms |         0 |       % |

```
----------------------------------
[INFO] SUCCESS (took 5868 seconds)
----------------------------------
```
