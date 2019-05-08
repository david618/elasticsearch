

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

[INFO] Racing on track [geonames], challenge [append-no-conflicts] and car ['external'] with version [7.0.1].

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
|   All |                     Cumulative indexing time of primary shards |                                |   27.8519 |     min |
|   All |             Min cumulative indexing time across primary shards |                                |   3.48112 |     min |
|   All |          Median cumulative indexing time across primary shards |                                |   6.02737 |     min |
|   All |             Max cumulative indexing time across primary shards |                                |   6.25532 |     min |
|   All |            Cumulative indexing throttle time of primary shards |                                |         0 |     min |
|   All |    Min cumulative indexing throttle time across primary shards |                                |         0 |     min |
|   All | Median cumulative indexing throttle time across primary shards |                                |         0 |     min |
|   All |    Max cumulative indexing throttle time across primary shards |                                |         0 |     min |
|   All |                        Cumulative merge time of primary shards |                                |   3.84183 |     min |
|   All |                       Cumulative merge count of primary shards |                                |        38 |         |
|   All |                Min cumulative merge time across primary shards |                                |  0.551533 |     min |
|   All |             Median cumulative merge time across primary shards |                                |   0.85675 |     min |
|   All |                Max cumulative merge time across primary shards |                                |   0.87745 |     min |
|   All |               Cumulative merge throttle time of primary shards |                                |  0.710683 |     min |
|   All |       Min cumulative merge throttle time across primary shards |                                |   0.11115 |     min |
|   All |    Median cumulative merge throttle time across primary shards |                                |  0.142067 |     min |
|   All |       Max cumulative merge throttle time across primary shards |                                |   0.16905 |     min |
|   All |                      Cumulative refresh time of primary shards |                                |   1.59027 |     min |
|   All |                     Cumulative refresh count of primary shards |                                |        93 |         |
|   All |              Min cumulative refresh time across primary shards |                                |   0.28825 |     min |
|   All |           Median cumulative refresh time across primary shards |                                |  0.326017 |     min |
|   All |              Max cumulative refresh time across primary shards |                                |  0.332233 |     min |
|   All |                        Cumulative flush time of primary shards |                                |   0.89985 |     min |
|   All |                       Cumulative flush count of primary shards |                                |        10 |         |
|   All |                Min cumulative flush time across primary shards |                                |  0.130383 |     min |
|   All |             Median cumulative flush time across primary shards |                                |    0.1799 |     min |
|   All |                Max cumulative flush time across primary shards |                                |  0.222983 |     min |
|   All |                                             Total Young Gen GC |                                |    54.531 |       s |
|   All |                                               Total Old Gen GC |                                |     0.111 |       s |
|   All |                                                     Store size |                                |    3.3714 |      GB |
|   All |                                                  Translog size |                                |   2.78459 |      GB |
|   All |                                         Heap used for segments |                                |   16.6798 |      MB |
|   All |                                       Heap used for doc values |                                | 0.0254478 |      MB |
|   All |                                            Heap used for terms |                                |   15.5297 |      MB |
|   All |                                            Heap used for norms |                                | 0.0705566 |      MB |
|   All |                                           Heap used for points |                                |  0.276883 |      MB |
|   All |                                    Heap used for stored fields |                                |  0.777206 |      MB |
|   All |                                                  Segment count |                                |        89 |         |
|   All |                                                     error rate |                   index-append |         0 |       % |
|   All |                                                 Min Throughput |                    index-stats |    100.04 |   ops/s |
|   All |                                              Median Throughput |                    index-stats |    100.06 |   ops/s |
|   All |                                                 Max Throughput |                    index-stats |    100.12 |   ops/s |
|   All |                                        50th percentile latency |                    index-stats |   4.12586 |      ms |
|   All |                                        90th percentile latency |                    index-stats |     4.706 |      ms |
|   All |                                        99th percentile latency |                    index-stats |   15.0931 |      ms |
|   All |                                      99.9th percentile latency |                    index-stats |   31.6615 |      ms |
|   All |                                       100th percentile latency |                    index-stats |   36.7214 |      ms |
|   All |                                   50th percentile service time |                    index-stats |   4.00007 |      ms |
|   All |                                   90th percentile service time |                    index-stats |   4.54642 |      ms |
|   All |                                   99th percentile service time |                    index-stats |   6.04514 |      ms |
|   All |                                 99.9th percentile service time |                    index-stats |   31.4836 |      ms |
|   All |                                  100th percentile service time |                    index-stats |    36.578 |      ms |
|   All |                                                     error rate |                    index-stats |         0 |       % |
|   All |                                                 Min Throughput |                     node-stats |    100.04 |   ops/s |
|   All |                                              Median Throughput |                     node-stats |    100.08 |   ops/s |
|   All |                                                 Max Throughput |                     node-stats |    100.51 |   ops/s |
|   All |                                        50th percentile latency |                     node-stats |   4.96525 |      ms |
|   All |                                        90th percentile latency |                     node-stats |   5.66526 |      ms |
|   All |                                        99th percentile latency |                     node-stats |   12.4627 |      ms |
|   All |                                      99.9th percentile latency |                     node-stats |   30.1316 |      ms |
|   All |                                       100th percentile latency |                     node-stats |   34.5339 |      ms |
|   All |                                   50th percentile service time |                     node-stats |   4.86738 |      ms |
|   All |                                   90th percentile service time |                     node-stats |   5.53217 |      ms |
|   All |                                   99th percentile service time |                     node-stats |   8.86153 |      ms |
|   All |                                 99.9th percentile service time |                     node-stats |   26.7465 |      ms |
|   All |                                  100th percentile service time |                     node-stats |   34.3904 |      ms |
|   All |                                                     error rate |                     node-stats |         0 |       % |
|   All |                                                 Min Throughput |                        default |     50.03 |   ops/s |
|   All |                                              Median Throughput |                        default |     50.04 |   ops/s |
|   All |                                                 Max Throughput |                        default |     50.08 |   ops/s |
|   All |                                        50th percentile latency |                        default |   3.11281 |      ms |
|   All |                                        90th percentile latency |                        default |   3.45958 |      ms |
|   All |                                        99th percentile latency |                        default |   4.76893 |      ms |
|   All |                                      99.9th percentile latency |                        default |   15.7591 |      ms |
|   All |                                       100th percentile latency |                        default |   32.4373 |      ms |
|   All |                                   50th percentile service time |                        default |   2.98122 |      ms |
|   All |                                   90th percentile service time |                        default |   3.32726 |      ms |
|   All |                                   99th percentile service time |                        default |   4.26968 |      ms |
|   All |                                 99.9th percentile service time |                        default |   8.06334 |      ms |
|   All |                                  100th percentile service time |                        default |   32.2369 |      ms |
|   All |                                                     error rate |                        default |         0 |       % |
|   All |                                                 Min Throughput |                           term |    200.08 |   ops/s |
|   All |                                              Median Throughput |                           term |     200.1 |   ops/s |
|   All |                                                 Max Throughput |                           term |    200.16 |   ops/s |
|   All |                                        50th percentile latency |                           term |   2.50561 |      ms |
|   All |                                        90th percentile latency |                           term |   2.99477 |      ms |
|   All |                                        99th percentile latency |                           term |   3.79318 |      ms |
|   All |                                      99.9th percentile latency |                           term |   7.32958 |      ms |
|   All |                                       100th percentile latency |                           term |   8.32369 |      ms |
|   All |                                   50th percentile service time |                           term |   2.41866 |      ms |
|   All |                                   90th percentile service time |                           term |   2.87854 |      ms |
|   All |                                   99th percentile service time |                           term |   3.42412 |      ms |
|   All |                                 99.9th percentile service time |                           term |   6.37614 |      ms |
|   All |                                  100th percentile service time |                           term |   8.27875 |      ms |
|   All |                                                     error rate |                           term |         0 |       % |
|   All |                                                 Min Throughput |                         phrase |    200.04 |   ops/s |
|   All |                                              Median Throughput |                         phrase |    200.05 |   ops/s |
|   All |                                                 Max Throughput |                         phrase |    200.06 |   ops/s |
|   All |                                        50th percentile latency |                         phrase |   3.91838 |      ms |
|   All |                                        90th percentile latency |                         phrase |   5.41353 |      ms |
|   All |                                        99th percentile latency |                         phrase |   44.8593 |      ms |
|   All |                                      99.9th percentile latency |                         phrase |    54.038 |      ms |
|   All |                                       100th percentile latency |                         phrase |   54.5496 |      ms |
|   All |                                   50th percentile service time |                         phrase |   3.73727 |      ms |
|   All |                                   90th percentile service time |                         phrase |   4.12901 |      ms |
|   All |                                   99th percentile service time |                         phrase |   6.32544 |      ms |
|   All |                                 99.9th percentile service time |                         phrase |   36.8546 |      ms |
|   All |                                  100th percentile service time |                         phrase |    47.645 |      ms |
|   All |                                                     error rate |                         phrase |         0 |       % |
|   All |                                                 Min Throughput |           country_agg_uncached |      4.03 |   ops/s |
|   All |                                              Median Throughput |           country_agg_uncached |      4.05 |   ops/s |
|   All |                                                 Max Throughput |           country_agg_uncached |      4.07 |   ops/s |
|   All |                                        50th percentile latency |           country_agg_uncached |   11946.1 |      ms |
|   All |                                        90th percentile latency |           country_agg_uncached |   14162.1 |      ms |
|   All |                                        99th percentile latency |           country_agg_uncached |   14469.4 |      ms |
|   All |                                       100th percentile latency |           country_agg_uncached |   14506.7 |      ms |
|   All |                                   50th percentile service time |           country_agg_uncached |    239.24 |      ms |
|   All |                                   90th percentile service time |           country_agg_uncached |   278.268 |      ms |
|   All |                                   99th percentile service time |           country_agg_uncached |   424.014 |      ms |
|   All |                                  100th percentile service time |           country_agg_uncached |   424.309 |      ms |
|   All |                                                     error rate |           country_agg_uncached |         0 |       % |
|   All |                                                 Min Throughput |             country_agg_cached |    100.05 |   ops/s |
|   All |                                              Median Throughput |             country_agg_cached |    100.08 |   ops/s |
|   All |                                                 Max Throughput |             country_agg_cached |    100.14 |   ops/s |
|   All |                                        50th percentile latency |             country_agg_cached |   2.85385 |      ms |
|   All |                                        90th percentile latency |             country_agg_cached |   3.16995 |      ms |
|   All |                                        99th percentile latency |             country_agg_cached |   3.72316 |      ms |
|   All |                                      99.9th percentile latency |             country_agg_cached |    4.7675 |      ms |
|   All |                                       100th percentile latency |             country_agg_cached |   6.03427 |      ms |
|   All |                                   50th percentile service time |             country_agg_cached |   2.71286 |      ms |
|   All |                                   90th percentile service time |             country_agg_cached |   3.04736 |      ms |
|   All |                                   99th percentile service time |             country_agg_cached |   3.57519 |      ms |
|   All |                                 99.9th percentile service time |             country_agg_cached |    4.5518 |      ms |
|   All |                                  100th percentile service time |             country_agg_cached |   5.92253 |      ms |
|   All |                                                     error rate |             country_agg_cached |         0 |       % |
|   All |                                                 Min Throughput |                         scroll |     25.03 | pages/s |
|   All |                                              Median Throughput |                         scroll |     25.04 | pages/s |
|   All |                                                 Max Throughput |                         scroll |     25.05 | pages/s |
|   All |                                        50th percentile latency |                         scroll |   571.966 |      ms |
|   All |                                        90th percentile latency |                         scroll |   598.351 |      ms |
|   All |                                        99th percentile latency |                         scroll |   605.539 |      ms |
|   All |                                       100th percentile latency |                         scroll |   611.262 |      ms |
|   All |                                   50th percentile service time |                         scroll |   571.498 |      ms |
|   All |                                   90th percentile service time |                         scroll |   597.858 |      ms |
|   All |                                   99th percentile service time |                         scroll |   605.013 |      ms |
|   All |                                  100th percentile service time |                         scroll |    610.75 |      ms |
|   All |                                                     error rate |                         scroll |         0 |       % |
|   All |                                                 Min Throughput |                     expression |         2 |   ops/s |
|   All |                                              Median Throughput |                     expression |         2 |   ops/s |
|   All |                                                 Max Throughput |                     expression |         2 |   ops/s |
|   All |                                        50th percentile latency |                     expression |   423.307 |      ms |
|   All |                                        90th percentile latency |                     expression |    479.75 |      ms |
|   All |                                        99th percentile latency |                     expression |   736.981 |      ms |
|   All |                                       100th percentile latency |                     expression |   767.075 |      ms |
|   All |                                   50th percentile service time |                     expression |   422.424 |      ms |
|   All |                                   90th percentile service time |                     expression |   439.154 |      ms |
|   All |                                   99th percentile service time |                     expression |   736.832 |      ms |
|   All |                                  100th percentile service time |                     expression |   766.906 |      ms |
|   All |                                                     error rate |                     expression |         0 |       % |
|   All |                                                 Min Throughput |                painless_static |       1.5 |   ops/s |
|   All |                                              Median Throughput |                painless_static |       1.5 |   ops/s |
|   All |                                                 Max Throughput |                painless_static |       1.5 |   ops/s |
|   All |                                        50th percentile latency |                painless_static |   532.022 |      ms |
|   All |                                        90th percentile latency |                painless_static |   590.611 |      ms |
|   All |                                        99th percentile latency |                painless_static |   930.758 |      ms |
|   All |                                       100th percentile latency |                painless_static |   960.456 |      ms |
|   All |                                   50th percentile service time |                painless_static |   530.734 |      ms |
|   All |                                   90th percentile service time |                painless_static |   571.838 |      ms |
|   All |                                   99th percentile service time |                painless_static |   930.591 |      ms |
|   All |                                  100th percentile service time |                painless_static |   960.273 |      ms |
|   All |                                                     error rate |                painless_static |         0 |       % |
|   All |                                                 Min Throughput |               painless_dynamic |       1.5 |   ops/s |
|   All |                                              Median Throughput |               painless_dynamic |       1.5 |   ops/s |
|   All |                                                 Max Throughput |               painless_dynamic |       1.5 |   ops/s |
|   All |                                        50th percentile latency |               painless_dynamic |   533.664 |      ms |
|   All |                                        90th percentile latency |               painless_dynamic |   582.066 |      ms |
|   All |                                        99th percentile latency |               painless_dynamic |   997.166 |      ms |
|   All |                                       100th percentile latency |               painless_dynamic |   1017.84 |      ms |
|   All |                                   50th percentile service time |               painless_dynamic |   532.325 |      ms |
|   All |                                   90th percentile service time |               painless_dynamic |   573.956 |      ms |
|   All |                                   99th percentile service time |               painless_dynamic |   996.923 |      ms |
|   All |                                  100th percentile service time |               painless_dynamic |   1017.63 |      ms |
|   All |                                                     error rate |               painless_dynamic |         0 |       % |
|   All |                                                 Min Throughput | decay_geo_gauss_function_score |         1 |   ops/s |
|   All |                                              Median Throughput | decay_geo_gauss_function_score |         1 |   ops/s |
|   All |                                                 Max Throughput | decay_geo_gauss_function_score |         1 |   ops/s |
|   All |                                        50th percentile latency | decay_geo_gauss_function_score |   523.458 |      ms |
|   All |                                        90th percentile latency | decay_geo_gauss_function_score |   538.285 |      ms |
|   All |                                        99th percentile latency | decay_geo_gauss_function_score |   569.174 |      ms |
|   All |                                       100th percentile latency | decay_geo_gauss_function_score |   754.712 |      ms |
|   All |                                   50th percentile service time | decay_geo_gauss_function_score |   522.884 |      ms |
|   All |                                   90th percentile service time | decay_geo_gauss_function_score |   537.736 |      ms |
|   All |                                   99th percentile service time | decay_geo_gauss_function_score |   568.548 |      ms |
|   All |                                  100th percentile service time | decay_geo_gauss_function_score |    754.18 |      ms |
|   All |                                                     error rate | decay_geo_gauss_function_score |         0 |       % |
|   All |                                                 Min Throughput |   decay_geo_gauss_script_score |         1 |   ops/s |
|   All |                                              Median Throughput |   decay_geo_gauss_script_score |         1 |   ops/s |
|   All |                                                 Max Throughput |   decay_geo_gauss_script_score |         1 |   ops/s |
|   All |                                        50th percentile latency |   decay_geo_gauss_script_score |   557.539 |      ms |
|   All |                                        90th percentile latency |   decay_geo_gauss_script_score |   590.899 |      ms |
|   All |                                        99th percentile latency |   decay_geo_gauss_script_score |   822.094 |      ms |
|   All |                                       100th percentile latency |   decay_geo_gauss_script_score |   826.973 |      ms |
|   All |                                   50th percentile service time |   decay_geo_gauss_script_score |   557.007 |      ms |
|   All |                                   90th percentile service time |   decay_geo_gauss_script_score |   590.369 |      ms |
|   All |                                   99th percentile service time |   decay_geo_gauss_script_score |   821.579 |      ms |
|   All |                                  100th percentile service time |   decay_geo_gauss_script_score |    826.41 |      ms |
|   All |                                                     error rate |   decay_geo_gauss_script_score |         0 |       % |
|   All |                                                 Min Throughput |     field_value_function_score |       1.5 |   ops/s |
|   All |                                              Median Throughput |     field_value_function_score |       1.5 |   ops/s |
|   All |                                                 Max Throughput |     field_value_function_score |      1.51 |   ops/s |
|   All |                                        50th percentile latency |     field_value_function_score |   200.797 |      ms |
|   All |                                        90th percentile latency |     field_value_function_score |   214.735 |      ms |
|   All |                                        99th percentile latency |     field_value_function_score |   346.227 |      ms |
|   All |                                       100th percentile latency |     field_value_function_score |   351.848 |      ms |
|   All |                                   50th percentile service time |     field_value_function_score |   200.251 |      ms |
|   All |                                   90th percentile service time |     field_value_function_score |   214.161 |      ms |
|   All |                                   99th percentile service time |     field_value_function_score |   345.719 |      ms |
|   All |                                  100th percentile service time |     field_value_function_score |   351.334 |      ms |
|   All |                                                     error rate |     field_value_function_score |         0 |       % |
|   All |                                                 Min Throughput |       field_value_script_score |       1.5 |   ops/s |
|   All |                                              Median Throughput |       field_value_script_score |       1.5 |   ops/s |
|   All |                                                 Max Throughput |       field_value_script_score |       1.5 |   ops/s |
|   All |                                        50th percentile latency |       field_value_script_score |   283.053 |      ms |
|   All |                                        90th percentile latency |       field_value_script_score |   290.963 |      ms |
|   All |                                        99th percentile latency |       field_value_script_score |       313 |      ms |
|   All |                                       100th percentile latency |       field_value_script_score |   335.786 |      ms |
|   All |                                   50th percentile service time |       field_value_script_score |   282.598 |      ms |
|   All |                                   90th percentile service time |       field_value_script_score |   290.533 |      ms |
|   All |                                   99th percentile service time |       field_value_script_score |   312.584 |      ms |
|   All |                                  100th percentile service time |       field_value_script_score |   335.345 |      ms |
|   All |                                                     error rate |       field_value_script_score |         0 |       % |
|   All |                                                 Min Throughput |          random_function_score |       1.5 |   ops/s |
|   All |                                              Median Throughput |          random_function_score |       1.5 |   ops/s |
|   All |                                                 Max Throughput |          random_function_score |       1.5 |   ops/s |
|   All |                                        50th percentile latency |          random_function_score |   355.736 |      ms |
|   All |                                        90th percentile latency |          random_function_score |    385.15 |      ms |
|   All |                                        99th percentile latency |          random_function_score |   730.396 |      ms |
|   All |                                       100th percentile latency |          random_function_score |   769.467 |      ms |
|   All |                                   50th percentile service time |          random_function_score |   355.353 |      ms |
|   All |                                   90th percentile service time |          random_function_score |   383.977 |      ms |
|   All |                                   99th percentile service time |          random_function_score |   729.979 |      ms |
|   All |                                  100th percentile service time |          random_function_score |   769.067 |      ms |
|   All |                                                     error rate |          random_function_score |         0 |       % |
|   All |                                                 Min Throughput |            random_script_score |       1.5 |   ops/s |
|   All |                                              Median Throughput |            random_script_score |       1.5 |   ops/s |
|   All |                                                 Max Throughput |            random_script_score |       1.5 |   ops/s |
|   All |                                        50th percentile latency |            random_script_score |   383.279 |      ms |
|   All |                                        90th percentile latency |            random_script_score |    408.29 |      ms |
|   All |                                        99th percentile latency |            random_script_score |   442.226 |      ms |
|   All |                                       100th percentile latency |            random_script_score |   564.993 |      ms |
|   All |                                   50th percentile service time |            random_script_score |   382.918 |      ms |
|   All |                                   90th percentile service time |            random_script_score |   407.866 |      ms |
|   All |                                   99th percentile service time |            random_script_score |   441.851 |      ms |
|   All |                                  100th percentile service time |            random_script_score |   564.616 |      ms |
|   All |                                                     error rate |            random_script_score |         0 |       % |
|   All |                                                 Min Throughput |                    large_terms |      1.68 |   ops/s |
|   All |                                              Median Throughput |                    large_terms |      1.69 |   ops/s |
|   All |                                                 Max Throughput |                    large_terms |      1.69 |   ops/s |
|   All |                                        50th percentile latency |                    large_terms |   23820.2 |      ms |
|   All |                                        90th percentile latency |                    large_terms |   27406.7 |      ms |
|   All |                                        99th percentile latency |                    large_terms |   28247.9 |      ms |
|   All |                                       100th percentile latency |                    large_terms |   28346.6 |      ms |
|   All |                                   50th percentile service time |                    large_terms |   590.434 |      ms |
|   All |                                   90th percentile service time |                    large_terms |   613.996 |      ms |
|   All |                                   99th percentile service time |                    large_terms |   659.511 |      ms |
|   All |                                  100th percentile service time |                    large_terms |   659.574 |      ms |
|   All |                                                     error rate |                    large_terms |         0 |       % |
|   All |                                                 Min Throughput |           large_filtered_terms |      1.66 |   ops/s |
|   All |                                              Median Throughput |           large_filtered_terms |      1.66 |   ops/s |
|   All |                                                 Max Throughput |           large_filtered_terms |      1.67 |   ops/s |
|   All |                                        50th percentile latency |           large_filtered_terms |   25671.3 |      ms |
|   All |                                        90th percentile latency |           large_filtered_terms |   29641.3 |      ms |
|   All |                                        99th percentile latency |           large_filtered_terms |   30610.3 |      ms |
|   All |                                       100th percentile latency |           large_filtered_terms |   30697.5 |      ms |
|   All |                                   50th percentile service time |           large_filtered_terms |   596.833 |      ms |
|   All |                                   90th percentile service time |           large_filtered_terms |   619.855 |      ms |
|   All |                                   99th percentile service time |           large_filtered_terms |   636.149 |      ms |
|   All |                                  100th percentile service time |           large_filtered_terms |   640.917 |      ms |
|   All |                                                     error rate |           large_filtered_terms |         0 |       % |
|   All |                                                 Min Throughput |         large_prohibited_terms |      1.67 |   ops/s |
|   All |                                              Median Throughput |         large_prohibited_terms |      1.68 |   ops/s |
|   All |                                                 Max Throughput |         large_prohibited_terms |      1.68 |   ops/s |
|   All |                                        50th percentile latency |         large_prohibited_terms |   24743.2 |      ms |
|   All |                                        90th percentile latency |         large_prohibited_terms |   28527.1 |      ms |
|   All |                                        99th percentile latency |         large_prohibited_terms |     29273 |      ms |
|   All |                                       100th percentile latency |         large_prohibited_terms |   29370.6 |      ms |
|   All |                                   50th percentile service time |         large_prohibited_terms |   593.337 |      ms |
|   All |                                   90th percentile service time |         large_prohibited_terms |   620.212 |      ms |
|   All |                                   99th percentile service time |         large_prohibited_terms |   639.311 |      ms |
|   All |                                  100th percentile service time |         large_prohibited_terms |   642.416 |      ms |
|   All |                                                     error rate |         large_prohibited_terms |         0 |       % |

```
[WARNING] No throughput metrics available for [index-append]. Likely cause: The benchmark ended already during warmup.

----------------------------------
[INFO] SUCCESS (took 3256 seconds)
----------------------------------
```
