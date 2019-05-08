```
esrally --track=geonames --target-hosts=a1:9200 --pipeline=benchmark-only
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

[INFO] Racing on track [geonames], challenge [append-no-conflicts] and car ['external'] with version [7.0.1].

[INFO] Downloading data for track geonames (252.4 MB total size)                  [100.0%]
[INFO] Decompressing track data from [/home/azureuser/.rally/benchmarks/data/geonames/documents-2.json.bz2] to [/home/azureuser/.rally/benchmarks/data/geonames/documents-2.json] (resulting size: 3.30 GB) ... [OK]
[INFO] Preparing file offset table for [/home/azureuser/.rally/benchmarks/data/geonames/documents-2.json] ... [OK]
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
|   All |                     Cumulative indexing time of primary shards |                                |   30.7236 |     min |
|   All |             Min cumulative indexing time across primary shards |                                |   5.98452 |     min |
|   All |          Median cumulative indexing time across primary shards |                                |   6.15283 |     min |
|   All |             Max cumulative indexing time across primary shards |                                |   6.24562 |     min |
|   All |            Cumulative indexing throttle time of primary shards |                                |         0 |     min |
|   All |    Min cumulative indexing throttle time across primary shards |                                |         0 |     min |
|   All | Median cumulative indexing throttle time across primary shards |                                |         0 |     min |
|   All |    Max cumulative indexing throttle time across primary shards |                                |         0 |     min |
|   All |                        Cumulative merge time of primary shards |                                |  0.521533 |     min |
|   All |                       Cumulative merge count of primary shards |                                |         5 |         |
|   All |                Min cumulative merge time across primary shards |                                | 0.0443833 |     min |
|   All |             Median cumulative merge time across primary shards |                                |  0.106917 |     min |
|   All |                Max cumulative merge time across primary shards |                                |    0.1546 |     min |
|   All |               Cumulative merge throttle time of primary shards |                                |  0.118683 |     min |
|   All |       Min cumulative merge throttle time across primary shards |                                |         0 |     min |
|   All |    Median cumulative merge throttle time across primary shards |                                |    0.0165 |     min |
|   All |       Max cumulative merge throttle time across primary shards |                                |    0.0847 |     min |
|   All |                      Cumulative refresh time of primary shards |                                |   1.81155 |     min |
|   All |                     Cumulative refresh count of primary shards |                                |        58 |         |
|   All |              Min cumulative refresh time across primary shards |                                |  0.298083 |     min |
|   All |           Median cumulative refresh time across primary shards |                                |  0.306017 |     min |
|   All |              Max cumulative refresh time across primary shards |                                |  0.463117 |     min |
|   All |                        Cumulative flush time of primary shards |                                |   1.16372 |     min |
|   All |                       Cumulative flush count of primary shards |                                |        10 |         |
|   All |                Min cumulative flush time across primary shards |                                |  0.135583 |     min |
|   All |             Median cumulative flush time across primary shards |                                |  0.282033 |     min |
|   All |                Max cumulative flush time across primary shards |                                |   0.30525 |     min |
|   All |                                             Total Young Gen GC |                                |    44.279 |       s |
|   All |                                               Total Old Gen GC |                                |     0.148 |       s |
|   All |                                                     Store size |                                |   3.36809 |      GB |
|   All |                                                  Translog size |                                |   2.79378 |      GB |
|   All |                                         Heap used for segments |                                |   11.7598 |      MB |
|   All |                                       Heap used for doc values |                                | 0.0362549 |      MB |
|   All |                                            Heap used for terms |                                |   10.5866 |      MB |
|   All |                                            Heap used for norms |                                | 0.0748291 |      MB |
|   All |                                           Heap used for points |                                |  0.279723 |      MB |
|   All |                                    Heap used for stored fields |                                |   0.78244 |      MB |
|   All |                                                  Segment count |                                |        96 |         |
|   All |                                                 Min Throughput |                   index-append |   68764.3 |  docs/s |
|   All |                                              Median Throughput |                   index-append |   71767.1 |  docs/s |
|   All |                                                 Max Throughput |                   index-append |   72999.6 |  docs/s |
|   All |                                        50th percentile latency |                   index-append |   384.349 |      ms |
|   All |                                        90th percentile latency |                   index-append |   562.715 |      ms |
|   All |                                        99th percentile latency |                   index-append |   1160.83 |      ms |
|   All |                                       100th percentile latency |                   index-append |   1422.57 |      ms |
|   All |                                   50th percentile service time |                   index-append |   384.349 |      ms |
|   All |                                   90th percentile service time |                   index-append |   562.715 |      ms |
|   All |                                   99th percentile service time |                   index-append |   1160.83 |      ms |
|   All |                                  100th percentile service time |                   index-append |   1422.57 |      ms |
|   All |                                                     error rate |                   index-append |         0 |       % |
|   All |                                                 Min Throughput |                    index-stats |    100.04 |   ops/s |
|   All |                                              Median Throughput |                    index-stats |    100.06 |   ops/s |
|   All |                                                 Max Throughput |                    index-stats |    100.11 |   ops/s |
|   All |                                        50th percentile latency |                    index-stats |   4.21989 |      ms |
|   All |                                        90th percentile latency |                    index-stats |   4.58467 |      ms |
|   All |                                        99th percentile latency |                    index-stats |   6.62074 |      ms |
|   All |                                      99.9th percentile latency |                    index-stats |   19.1649 |      ms |
|   All |                                       100th percentile latency |                    index-stats |   24.2022 |      ms |
|   All |                                   50th percentile service time |                    index-stats |   4.11532 |      ms |
|   All |                                   90th percentile service time |                    index-stats |   4.46905 |      ms |
|   All |                                   99th percentile service time |                    index-stats |   5.85259 |      ms |
|   All |                                 99.9th percentile service time |                    index-stats |   9.02361 |      ms |
|   All |                                  100th percentile service time |                    index-stats |   24.0724 |      ms |
|   All |                                                     error rate |                    index-stats |         0 |       % |
|   All |                                                 Min Throughput |                     node-stats |    100.06 |   ops/s |
|   All |                                              Median Throughput |                     node-stats |     100.1 |   ops/s |
|   All |                                                 Max Throughput |                     node-stats |    100.58 |   ops/s |
|   All |                                        50th percentile latency |                     node-stats |    4.2282 |      ms |
|   All |                                        90th percentile latency |                     node-stats |   4.94771 |      ms |
|   All |                                        99th percentile latency |                     node-stats |   7.78698 |      ms |
|   All |                                      99.9th percentile latency |                     node-stats |   28.0444 |      ms |
|   All |                                       100th percentile latency |                     node-stats |   33.4319 |      ms |
|   All |                                   50th percentile service time |                     node-stats |   4.11952 |      ms |
|   All |                                   90th percentile service time |                     node-stats |    4.8155 |      ms |
|   All |                                   99th percentile service time |                     node-stats |   7.29081 |      ms |
|   All |                                 99.9th percentile service time |                     node-stats |   10.9895 |      ms |
|   All |                                  100th percentile service time |                     node-stats |   33.3007 |      ms |
|   All |                                                     error rate |                     node-stats |         0 |       % |
|   All |                                                 Min Throughput |                        default |     50.03 |   ops/s |
|   All |                                              Median Throughput |                        default |     50.05 |   ops/s |
|   All |                                                 Max Throughput |                        default |     50.09 |   ops/s |
|   All |                                        50th percentile latency |                        default |   2.09869 |      ms |
|   All |                                        90th percentile latency |                        default |   2.48596 |      ms |
|   All |                                        99th percentile latency |                        default |   3.07866 |      ms |
|   All |                                      99.9th percentile latency |                        default |   8.81127 |      ms |
|   All |                                       100th percentile latency |                        default |   12.0159 |      ms |
|   All |                                   50th percentile service time |                        default |   1.98336 |      ms |
|   All |                                   90th percentile service time |                        default |   2.36493 |      ms |
|   All |                                   99th percentile service time |                        default |   2.92304 |      ms |
|   All |                                 99.9th percentile service time |                        default |   8.71572 |      ms |
|   All |                                  100th percentile service time |                        default |   11.8894 |      ms |
|   All |                                                     error rate |                        default |         0 |       % |
|   All |                                                 Min Throughput |                           term |    200.09 |   ops/s |
|   All |                                              Median Throughput |                           term |    200.12 |   ops/s |
|   All |                                                 Max Throughput |                           term |    200.16 |   ops/s |
|   All |                                        50th percentile latency |                           term |   1.86796 |      ms |
|   All |                                        90th percentile latency |                           term |    2.0542 |      ms |
|   All |                                        99th percentile latency |                           term |   10.8758 |      ms |
|   All |                                      99.9th percentile latency |                           term |   35.1003 |      ms |
|   All |                                       100th percentile latency |                           term |   35.3207 |      ms |
|   All |                                   50th percentile service time |                           term |   1.75951 |      ms |
|   All |                                   90th percentile service time |                           term |   1.93224 |      ms |
|   All |                                   99th percentile service time |                           term |   3.16898 |      ms |
|   All |                                 99.9th percentile service time |                           term |    6.7838 |      ms |
|   All |                                  100th percentile service time |                           term |   35.2219 |      ms |
|   All |                                                     error rate |                           term |         0 |       % |
|   All |                                                 Min Throughput |                         phrase |    200.07 |   ops/s |
|   All |                                              Median Throughput |                         phrase |    200.11 |   ops/s |
|   All |                                                 Max Throughput |                         phrase |    200.14 |   ops/s |
|   All |                                        50th percentile latency |                         phrase |   2.30969 |      ms |
|   All |                                        90th percentile latency |                         phrase |   2.83079 |      ms |
|   All |                                        99th percentile latency |                         phrase |   20.0952 |      ms |
|   All |                                      99.9th percentile latency |                         phrase |   31.9551 |      ms |
|   All |                                       100th percentile latency |                         phrase |    34.205 |      ms |
|   All |                                   50th percentile service time |                         phrase |   2.19676 |      ms |
|   All |                                   90th percentile service time |                         phrase |   2.61021 |      ms |
|   All |                                   99th percentile service time |                         phrase |   3.91931 |      ms |
|   All |                                 99.9th percentile service time |                         phrase |   27.1519 |      ms |
|   All |                                  100th percentile service time |                         phrase |    34.074 |      ms |
|   All |                                                     error rate |                         phrase |         0 |       % |
|   All |                                                 Min Throughput |           country_agg_uncached |      4.52 |   ops/s |
|   All |                                              Median Throughput |           country_agg_uncached |      4.54 |   ops/s |
|   All |                                                 Max Throughput |           country_agg_uncached |      4.57 |   ops/s |
|   All |                                        50th percentile latency |           country_agg_uncached |   5112.51 |      ms |
|   All |                                        90th percentile latency |           country_agg_uncached |   6042.78 |      ms |
|   All |                                        99th percentile latency |           country_agg_uncached |   6290.85 |      ms |
|   All |                                       100th percentile latency |           country_agg_uncached |   6295.02 |      ms |
|   All |                                   50th percentile service time |           country_agg_uncached |   193.601 |      ms |
|   All |                                   90th percentile service time |           country_agg_uncached |   315.641 |      ms |
|   All |                                   99th percentile service time |           country_agg_uncached |   328.767 |      ms |
|   All |                                  100th percentile service time |           country_agg_uncached |   349.172 |      ms |
|   All |                                                     error rate |           country_agg_uncached |         0 |       % |
|   All |                                                 Min Throughput |             country_agg_cached |    100.06 |   ops/s |
|   All |                                              Median Throughput |             country_agg_cached |    100.08 |   ops/s |
|   All |                                                 Max Throughput |             country_agg_cached |    100.16 |   ops/s |
|   All |                                        50th percentile latency |             country_agg_cached |   1.92648 |      ms |
|   All |                                        90th percentile latency |             country_agg_cached |   2.13219 |      ms |
|   All |                                        99th percentile latency |             country_agg_cached |   3.05414 |      ms |
|   All |                                      99.9th percentile latency |             country_agg_cached |   6.41532 |      ms |
|   All |                                       100th percentile latency |             country_agg_cached |    7.0126 |      ms |
|   All |                                   50th percentile service time |             country_agg_cached |   1.82091 |      ms |
|   All |                                   90th percentile service time |             country_agg_cached |   2.01836 |      ms |
|   All |                                   99th percentile service time |             country_agg_cached |   2.87055 |      ms |
|   All |                                 99.9th percentile service time |             country_agg_cached |    6.3242 |      ms |
|   All |                                  100th percentile service time |             country_agg_cached |   6.89783 |      ms |
|   All |                                                     error rate |             country_agg_cached |         0 |       % |
|   All |                                                 Min Throughput |                         scroll |     25.04 | pages/s |
|   All |                                              Median Throughput |                         scroll |     25.04 | pages/s |
|   All |                                                 Max Throughput |                         scroll |     25.06 | pages/s |
|   All |                                        50th percentile latency |                         scroll |   552.391 |      ms |
|   All |                                        90th percentile latency |                         scroll |   578.405 |      ms |
|   All |                                        99th percentile latency |                         scroll |   608.944 |      ms |
|   All |                                       100th percentile latency |                         scroll |   615.973 |      ms |
|   All |                                   50th percentile service time |                         scroll |    551.89 |      ms |
|   All |                                   90th percentile service time |                         scroll |   577.917 |      ms |
|   All |                                   99th percentile service time |                         scroll |   608.472 |      ms |
|   All |                                  100th percentile service time |                         scroll |   615.483 |      ms |
|   All |                                                     error rate |                         scroll |         0 |       % |
|   All |                                                 Min Throughput |                     expression |      1.99 |   ops/s |
|   All |                                              Median Throughput |                     expression |         2 |   ops/s |
|   All |                                                 Max Throughput |                     expression |         2 |   ops/s |
|   All |                                        50th percentile latency |                     expression |   628.732 |      ms |
|   All |                                        90th percentile latency |                     expression |   777.932 |      ms |
|   All |                                        99th percentile latency |                     expression |   977.289 |      ms |
|   All |                                       100th percentile latency |                     expression |   1005.44 |      ms |
|   All |                                   50th percentile service time |                     expression |   380.623 |      ms |
|   All |                                   90th percentile service time |                     expression |   628.841 |      ms |
|   All |                                   99th percentile service time |                     expression |   635.633 |      ms |
|   All |                                  100th percentile service time |                     expression |   637.974 |      ms |
|   All |                                                     error rate |                     expression |         0 |       % |
|   All |                                                 Min Throughput |                painless_static |      1.34 |   ops/s |
|   All |                                              Median Throughput |                painless_static |      1.35 |   ops/s |
|   All |                                                 Max Throughput |                painless_static |      1.36 |   ops/s |
|   All |                                        50th percentile latency |                painless_static |   18109.9 |      ms |
|   All |                                        90th percentile latency |                painless_static |   22210.2 |      ms |
|   All |                                        99th percentile latency |                painless_static |   24038.2 |      ms |
|   All |                                       100th percentile latency |                painless_static |     24065 |      ms |
|   All |                                   50th percentile service time |                painless_static |   641.416 |      ms |
|   All |                                   90th percentile service time |                painless_static |   998.859 |      ms |
|   All |                                   99th percentile service time |                painless_static |   1026.08 |      ms |
|   All |                                  100th percentile service time |                painless_static |   1026.11 |      ms |
|   All |                                                     error rate |                painless_static |         0 |       % |
|   All |                                                 Min Throughput |               painless_dynamic |       1.5 |   ops/s |
|   All |                                              Median Throughput |               painless_dynamic |       1.5 |   ops/s |
|   All |                                                 Max Throughput |               painless_dynamic |       1.5 |   ops/s |
|   All |                                        50th percentile latency |               painless_dynamic |   547.865 |      ms |
|   All |                                        90th percentile latency |               painless_dynamic |   831.779 |      ms |
|   All |                                        99th percentile latency |               painless_dynamic |   873.049 |      ms |
|   All |                                       100th percentile latency |               painless_dynamic |   886.587 |      ms |
|   All |                                   50th percentile service time |               painless_dynamic |   527.673 |      ms |
|   All |                                   90th percentile service time |               painless_dynamic |   829.714 |      ms |
|   All |                                   99th percentile service time |               painless_dynamic |   864.971 |      ms |
|   All |                                  100th percentile service time |               painless_dynamic |   872.706 |      ms |
|   All |                                                     error rate |               painless_dynamic |         0 |       % |
|   All |                                                 Min Throughput | decay_geo_gauss_function_score |         1 |   ops/s |
|   All |                                              Median Throughput | decay_geo_gauss_function_score |         1 |   ops/s |
|   All |                                                 Max Throughput | decay_geo_gauss_function_score |         1 |   ops/s |
|   All |                                        50th percentile latency | decay_geo_gauss_function_score |   452.259 |      ms |
|   All |                                        90th percentile latency | decay_geo_gauss_function_score |   462.083 |      ms |
|   All |                                        99th percentile latency | decay_geo_gauss_function_score |   631.027 |      ms |
|   All |                                       100th percentile latency | decay_geo_gauss_function_score |   634.248 |      ms |
|   All |                                   50th percentile service time | decay_geo_gauss_function_score |   451.614 |      ms |
|   All |                                   90th percentile service time | decay_geo_gauss_function_score |   461.446 |      ms |
|   All |                                   99th percentile service time | decay_geo_gauss_function_score |   630.375 |      ms |
|   All |                                  100th percentile service time | decay_geo_gauss_function_score |   633.636 |      ms |
|   All |                                                     error rate | decay_geo_gauss_function_score |         0 |       % |
|   All |                                                 Min Throughput |   decay_geo_gauss_script_score |         1 |   ops/s |
|   All |                                              Median Throughput |   decay_geo_gauss_script_score |         1 |   ops/s |
|   All |                                                 Max Throughput |   decay_geo_gauss_script_score |         1 |   ops/s |
|   All |                                        50th percentile latency |   decay_geo_gauss_script_score |   508.059 |      ms |
|   All |                                        90th percentile latency |   decay_geo_gauss_script_score |   691.843 |      ms |
|   All |                                        99th percentile latency |   decay_geo_gauss_script_score |   718.087 |      ms |
|   All |                                       100th percentile latency |   decay_geo_gauss_script_score |   727.151 |      ms |
|   All |                                   50th percentile service time |   decay_geo_gauss_script_score |   507.496 |      ms |
|   All |                                   90th percentile service time |   decay_geo_gauss_script_score |   691.324 |      ms |
|   All |                                   99th percentile service time |   decay_geo_gauss_script_score |   717.518 |      ms |
|   All |                                  100th percentile service time |   decay_geo_gauss_script_score |   726.548 |      ms |
|   All |                                                     error rate |   decay_geo_gauss_script_score |         0 |       % |
|   All |                                                 Min Throughput |     field_value_function_score |       1.5 |   ops/s |
|   All |                                              Median Throughput |     field_value_function_score |       1.5 |   ops/s |
|   All |                                                 Max Throughput |     field_value_function_score |      1.51 |   ops/s |
|   All |                                        50th percentile latency |     field_value_function_score |   178.136 |      ms |
|   All |                                        90th percentile latency |     field_value_function_score |   259.877 |      ms |
|   All |                                        99th percentile latency |     field_value_function_score |   302.376 |      ms |
|   All |                                       100th percentile latency |     field_value_function_score |    302.87 |      ms |
|   All |                                   50th percentile service time |     field_value_function_score |   177.662 |      ms |
|   All |                                   90th percentile service time |     field_value_function_score |   259.283 |      ms |
|   All |                                   99th percentile service time |     field_value_function_score |   301.787 |      ms |
|   All |                                  100th percentile service time |     field_value_function_score |   302.311 |      ms |
|   All |                                                     error rate |     field_value_function_score |         0 |       % |
|   All |                                                 Min Throughput |       field_value_script_score |       1.5 |   ops/s |
|   All |                                              Median Throughput |       field_value_script_score |       1.5 |   ops/s |
|   All |                                                 Max Throughput |       field_value_script_score |       1.5 |   ops/s |
|   All |                                        50th percentile latency |       field_value_script_score |   257.201 |      ms |
|   All |                                        90th percentile latency |       field_value_script_score |   318.589 |      ms |
|   All |                                        99th percentile latency |       field_value_script_score |   461.297 |      ms |
|   All |                                       100th percentile latency |       field_value_script_score |   467.694 |      ms |
|   All |                                   50th percentile service time |       field_value_script_score |   256.721 |      ms |
|   All |                                   90th percentile service time |       field_value_script_score |   318.127 |      ms |
|   All |                                   99th percentile service time |       field_value_script_score |   460.738 |      ms |
|   All |                                  100th percentile service time |       field_value_script_score |   467.183 |      ms |
|   All |                                                     error rate |       field_value_script_score |         0 |       % |
|   All |                                                 Min Throughput |          random_function_score |       1.5 |   ops/s |
|   All |                                              Median Throughput |          random_function_score |       1.5 |   ops/s |
|   All |                                                 Max Throughput |          random_function_score |       1.5 |   ops/s |
|   All |                                        50th percentile latency |          random_function_score |   369.056 |      ms |
|   All |                                        90th percentile latency |          random_function_score |   722.206 |      ms |
|   All |                                        99th percentile latency |          random_function_score |   756.247 |      ms |
|   All |                                       100th percentile latency |          random_function_score |   757.535 |      ms |
|   All |                                   50th percentile service time |          random_function_score |   342.494 |      ms |
|   All |                                   90th percentile service time |          random_function_score |   721.022 |      ms |
|   All |                                   99th percentile service time |          random_function_score |   737.214 |      ms |
|   All |                                  100th percentile service time |          random_function_score |   743.128 |      ms |
|   All |                                                     error rate |          random_function_score |         0 |       % |
|   All |                                                 Min Throughput |            random_script_score |       1.5 |   ops/s |
|   All |                                              Median Throughput |            random_script_score |       1.5 |   ops/s |
|   All |                                                 Max Throughput |            random_script_score |       1.5 |   ops/s |
|   All |                                        50th percentile latency |            random_script_score |   507.566 |      ms |
|   All |                                        90th percentile latency |            random_script_score |   762.804 |      ms |
|   All |                                        99th percentile latency |            random_script_score |   817.023 |      ms |
|   All |                                       100th percentile latency |            random_script_score |   852.752 |      ms |
|   All |                                   50th percentile service time |            random_script_score |   461.841 |      ms |
|   All |                                   90th percentile service time |            random_script_score |   758.028 |      ms |
|   All |                                   99th percentile service time |            random_script_score |   779.594 |      ms |
|   All |                                  100th percentile service time |            random_script_score |    782.99 |      ms |
|   All |                                                     error rate |            random_script_score |         0 |       % |
|   All |                                                 Min Throughput |                    large_terms |      1.62 |   ops/s |
|   All |                                              Median Throughput |                    large_terms |      1.64 |   ops/s |
|   All |                                                 Max Throughput |                    large_terms |      1.65 |   ops/s |
|   All |                                        50th percentile latency |                    large_terms |   27567.8 |      ms |
|   All |                                        90th percentile latency |                    large_terms |   33857.3 |      ms |
|   All |                                        99th percentile latency |                    large_terms |   35170.7 |      ms |
|   All |                                       100th percentile latency |                    large_terms |   35404.3 |      ms |
|   All |                                   50th percentile service time |                    large_terms |   657.586 |      ms |
|   All |                                   90th percentile service time |                    large_terms |   808.222 |      ms |
|   All |                                   99th percentile service time |                    large_terms |   824.215 |      ms |
|   All |                                  100th percentile service time |                    large_terms |   827.572 |      ms |
|   All |                                                     error rate |                    large_terms |         0 |       % |
|   All |                                                 Min Throughput |           large_filtered_terms |      1.54 |   ops/s |
|   All |                                              Median Throughput |           large_filtered_terms |      1.58 |   ops/s |
|   All |                                                 Max Throughput |           large_filtered_terms |      1.59 |   ops/s |
|   All |                                        50th percentile latency |           large_filtered_terms |   33982.1 |      ms |
|   All |                                        90th percentile latency |           large_filtered_terms |   37932.9 |      ms |
|   All |                                        99th percentile latency |           large_filtered_terms |   38705.4 |      ms |
|   All |                                       100th percentile latency |           large_filtered_terms |     38740 |      ms |
|   All |                                   50th percentile service time |           large_filtered_terms |   477.799 |      ms |
|   All |                                   90th percentile service time |           large_filtered_terms |   795.937 |      ms |
|   All |                                   99th percentile service time |           large_filtered_terms |   813.953 |      ms |
|   All |                                  100th percentile service time |           large_filtered_terms |   815.343 |      ms |
|   All |                                                     error rate |           large_filtered_terms |         0 |       % |
|   All |                                                 Min Throughput |         large_prohibited_terms |      1.64 |   ops/s |
|   All |                                              Median Throughput |         large_prohibited_terms |      1.65 |   ops/s |
|   All |                                                 Max Throughput |         large_prohibited_terms |      1.65 |   ops/s |
|   All |                                        50th percentile latency |         large_prohibited_terms |   27302.3 |      ms |
|   All |                                        90th percentile latency |         large_prohibited_terms |   31195.8 |      ms |
|   All |                                        99th percentile latency |         large_prohibited_terms |   31957.6 |      ms |
|   All |                                       100th percentile latency |         large_prohibited_terms |   31981.8 |      ms |
|   All |                                   50th percentile service time |         large_prohibited_terms |   547.527 |      ms |
|   All |                                   90th percentile service time |         large_prohibited_terms |   772.694 |      ms |
|   All |                                   99th percentile service time |         large_prohibited_terms |   797.761 |      ms |
|   All |                                  100th percentile service time |         large_prohibited_terms |   815.068 |      ms |
|   All |                                                     error rate |         large_prohibited_terms |         0 |       % |

```
----------------------------------
[INFO] SUCCESS (took 3355 seconds)
----------------------------------
```
