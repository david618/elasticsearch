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
Running random_script_score                                                    [ 79% done]
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


|   Lap |                                                         Metric |                           Task |       Value |    Unit |
|------:|---------------------------------------------------------------:|-------------------------------:|------------:|--------:|
|   All |                     Cumulative indexing time of primary shards |                                |     19.1054 |     min |
|   All |             Min cumulative indexing time across primary shards |                                |     3.64462 |     min |
|   All |          Median cumulative indexing time across primary shards |                                |     3.74787 |     min |
|   All |             Max cumulative indexing time across primary shards |                                |     4.21522 |     min |
|   All |            Cumulative indexing throttle time of primary shards |                                |           0 |     min |
|   All |    Min cumulative indexing throttle time across primary shards |                                |           0 |     min |
|   All | Median cumulative indexing throttle time across primary shards |                                |           0 |     min |
|   All |    Max cumulative indexing throttle time across primary shards |                                |           0 |     min |
|   All |                        Cumulative merge time of primary shards |                                |           0 |     min |
|   All |                       Cumulative merge count of primary shards |                                |           0 |         |
|   All |                Min cumulative merge time across primary shards |                                |           0 |     min |
|   All |             Median cumulative merge time across primary shards |                                |           0 |     min |
|   All |                Max cumulative merge time across primary shards |                                |           0 |     min |
|   All |               Cumulative merge throttle time of primary shards |                                |           0 |     min |
|   All |       Min cumulative merge throttle time across primary shards |                                |           0 |     min |
|   All |    Median cumulative merge throttle time across primary shards |                                |           0 |     min |
|   All |       Max cumulative merge throttle time across primary shards |                                |           0 |     min |
|   All |                      Cumulative refresh time of primary shards |                                |     3.68957 |     min |
|   All |                     Cumulative refresh count of primary shards |                                |          72 |         |
|   All |              Min cumulative refresh time across primary shards |                                |    0.379067 |     min |
|   All |           Median cumulative refresh time across primary shards |                                |     0.45715 |     min |
|   All |              Max cumulative refresh time across primary shards |                                |     1.24572 |     min |
|   All |                        Cumulative flush time of primary shards |                                |     3.61388 |     min |
|   All |                       Cumulative flush count of primary shards |                                |          10 |         |
|   All |                Min cumulative flush time across primary shards |                                |    0.103733 |     min |
|   All |             Median cumulative flush time across primary shards |                                |     1.05117 |     min |
|   All |                Max cumulative flush time across primary shards |                                |     1.10712 |     min |
|   All |                                             Total Young Gen GC |                                |     4262.34 |       s |
|   All |                                               Total Old Gen GC |                                |         0.2 |       s |
|   All |                                                     Store size |                                |     2.93869 |      GB |
|   All |                                                  Translog size |                                |     2.79329 |      GB |
|   All |                                         Heap used for segments |                                |     11.1614 |      MB |
|   All |                                       Heap used for doc values |                                |   0.0181923 |      MB |
|   All |                                            Heap used for terms |                                |     10.0755 |      MB |
|   All |                                            Heap used for norms |                                |    0.034729 |      MB |
|   All |                                           Heap used for points |                                |    0.261126 |      MB |
|   All |                                    Heap used for stored fields |                                |     0.77195 |      MB |
|   All |                                                  Segment count |                                |          47 |         |
|   All |                                                 Min Throughput |                   index-append |     5759.29 |  docs/s |
|   All |                                              Median Throughput |                   index-append |     6384.27 |  docs/s |
|   All |                                                 Max Throughput |                   index-append |     6764.54 |  docs/s |
|   All |                                        50th percentile latency |                   index-append |     5597.29 |      ms |
|   All |                                        90th percentile latency |                   index-append |     7334.86 |      ms |
|   All |                                        99th percentile latency |                   index-append |     15664.7 |      ms |
|   All |                                      99.9th percentile latency |                   index-append |     18964.4 |      ms |
|   All |                                       100th percentile latency |                   index-append |     20852.3 |      ms |
|   All |                                   50th percentile service time |                   index-append |     5597.29 |      ms |
|   All |                                   90th percentile service time |                   index-append |     7334.86 |      ms |
|   All |                                   99th percentile service time |                   index-append |     15664.7 |      ms |
|   All |                                 99.9th percentile service time |                   index-append |     18964.4 |      ms |
|   All |                                  100th percentile service time |                   index-append |     20852.3 |      ms |
|   All |                                                     error rate |                   index-append |           0 |       % |
|   All |                                                 Min Throughput |                    index-stats |       87.66 |   ops/s |
|   All |                                              Median Throughput |                    index-stats |        90.4 |   ops/s |
|   All |                                                 Max Throughput |                    index-stats |       92.28 |   ops/s |
|   All |                                        50th percentile latency |                    index-stats |     1002.89 |      ms |
|   All |                                        90th percentile latency |                    index-stats |     1209.61 |      ms |
|   All |                                        99th percentile latency |                    index-stats |     1282.92 |      ms |
|   All |                                      99.9th percentile latency |                    index-stats |     1307.93 |      ms |
|   All |                                       100th percentile latency |                    index-stats |     1313.46 |      ms |
|   All |                                   50th percentile service time |                    index-stats |     3.89563 |      ms |
|   All |                                   90th percentile service time |                    index-stats |     4.39073 |      ms |
|   All |                                   99th percentile service time |                    index-stats |     154.791 |      ms |
|   All |                                 99.9th percentile service time |                    index-stats |     157.021 |      ms |
|   All |                                  100th percentile service time |                    index-stats |     157.621 |      ms |
|   All |                                                     error rate |                    index-stats |           0 |       % |
|   All |                                                 Min Throughput |                     node-stats |       85.35 |   ops/s |
|   All |                                              Median Throughput |                     node-stats |       90.56 |   ops/s |
|   All |                                                 Max Throughput |                     node-stats |       92.16 |   ops/s |
|   All |                                        50th percentile latency |                     node-stats |     580.767 |      ms |
|   All |                                        90th percentile latency |                     node-stats |     920.367 |      ms |
|   All |                                        99th percentile latency |                     node-stats |     1041.53 |      ms |
|   All |                                      99.9th percentile latency |                     node-stats |     1077.73 |      ms |
|   All |                                       100th percentile latency |                     node-stats |     1082.95 |      ms |
|   All |                                   50th percentile service time |                     node-stats |     4.07684 |      ms |
|   All |                                   90th percentile service time |                     node-stats |     4.97267 |      ms |
|   All |                                   99th percentile service time |                     node-stats |     155.971 |      ms |
|   All |                                 99.9th percentile service time |                     node-stats |     159.262 |      ms |
|   All |                                  100th percentile service time |                     node-stats |     160.866 |      ms |
|   All |                                                     error rate |                     node-stats |           0 |       % |
|   All |                                                 Min Throughput |                        default |       49.76 |   ops/s |
|   All |                                              Median Throughput |                        default |       50.05 |   ops/s |
|   All |                                                 Max Throughput |                        default |       50.09 |   ops/s |
|   All |                                        50th percentile latency |                        default |     2.06061 |      ms |
|   All |                                        90th percentile latency |                        default |     2.46766 |      ms |
|   All |                                        99th percentile latency |                        default |     121.532 |      ms |
|   All |                                      99.9th percentile latency |                        default |     159.838 |      ms |
|   All |                                       100th percentile latency |                        default |     171.097 |      ms |
|   All |                                   50th percentile service time |                        default |     1.95496 |      ms |
|   All |                                   90th percentile service time |                        default |     2.29217 |      ms |
|   All |                                   99th percentile service time |                        default |     3.00999 |      ms |
|   All |                                 99.9th percentile service time |                        default |     159.735 |      ms |
|   All |                                  100th percentile service time |                        default |     171.018 |      ms |
|   All |                                                     error rate |                        default |           0 |       % |
|   All |                                                 Min Throughput |                           term |      190.48 |   ops/s |
|   All |                                              Median Throughput |                           term |      200.09 |   ops/s |
|   All |                                                 Max Throughput |                           term |      200.17 |   ops/s |
|   All |                                        50th percentile latency |                           term |     1.81461 |      ms |
|   All |                                        90th percentile latency |                           term |     109.062 |      ms |
|   All |                                        99th percentile latency |                           term |     148.869 |      ms |
|   All |                                      99.9th percentile latency |                           term |     153.376 |      ms |
|   All |                                       100th percentile latency |                           term |     153.406 |      ms |
|   All |                                   50th percentile service time |                           term |     1.42418 |      ms |
|   All |                                   90th percentile service time |                           term |       1.809 |      ms |
|   All |                                   99th percentile service time |                           term |      2.7943 |      ms |
|   All |                                 99.9th percentile service time |                           term |     153.302 |      ms |
|   All |                                  100th percentile service time |                           term |      153.31 |      ms |
|   All |                                                     error rate |                           term |           0 |       % |
|   All |                                                 Min Throughput |                         phrase |       194.3 |   ops/s |
|   All |                                              Median Throughput |                         phrase |      195.91 |   ops/s |
|   All |                                                 Max Throughput |                         phrase |      200.19 |   ops/s |
|   All |                                        50th percentile latency |                         phrase |     58.1597 |      ms |
|   All |                                        90th percentile latency |                         phrase |     133.995 |      ms |
|   All |                                        99th percentile latency |                         phrase |     151.334 |      ms |
|   All |                                      99.9th percentile latency |                         phrase |     155.239 |      ms |
|   All |                                       100th percentile latency |                         phrase |      158.08 |      ms |
|   All |                                   50th percentile service time |                         phrase |     1.97247 |      ms |
|   All |                                   90th percentile service time |                         phrase |     2.28419 |      ms |
|   All |                                   99th percentile service time |                         phrase |     150.797 |      ms |
|   All |                                 99.9th percentile service time |                         phrase |      154.54 |      ms |
|   All |                                  100th percentile service time |                         phrase |     158.003 |      ms |
|   All |                                                     error rate |                         phrase |           0 |       % |
|   All |                                                 Min Throughput |           country_agg_uncached |         1.7 |   ops/s |
|   All |                                              Median Throughput |           country_agg_uncached |         1.7 |   ops/s |
|   All |                                                 Max Throughput |           country_agg_uncached |        1.71 |   ops/s |
|   All |                                        50th percentile latency |           country_agg_uncached |     97239.8 |      ms |
|   All |                                        90th percentile latency |           country_agg_uncached |      112232 |      ms |
|   All |                                        99th percentile latency |           country_agg_uncached |      115722 |      ms |
|   All |                                       100th percentile latency |           country_agg_uncached |      116059 |      ms |
|   All |                                   50th percentile service time |           country_agg_uncached |     544.307 |      ms |
|   All |                                   90th percentile service time |           country_agg_uncached |     695.692 |      ms |
|   All |                                   99th percentile service time |           country_agg_uncached |     701.533 |      ms |
|   All |                                  100th percentile service time |           country_agg_uncached |     707.024 |      ms |
|   All |                                                     error rate |           country_agg_uncached |           0 |       % |
|   All |                                                 Min Throughput |             country_agg_cached |       98.12 |   ops/s |
|   All |                                              Median Throughput |             country_agg_cached |      100.08 |   ops/s |
|   All |                                                 Max Throughput |             country_agg_cached |      100.16 |   ops/s |
|   All |                                        50th percentile latency |             country_agg_cached |     1.73259 |      ms |
|   All |                                        90th percentile latency |             country_agg_cached |     2.22616 |      ms |
|   All |                                        99th percentile latency |             country_agg_cached |     138.854 |      ms |
|   All |                                      99.9th percentile latency |             country_agg_cached |     159.766 |      ms |
|   All |                                       100th percentile latency |             country_agg_cached |     160.475 |      ms |
|   All |                                   50th percentile service time |             country_agg_cached |     1.61574 |      ms |
|   All |                                   90th percentile service time |             country_agg_cached |     1.94718 |      ms |
|   All |                                   99th percentile service time |             country_agg_cached |     2.69614 |      ms |
|   All |                                 99.9th percentile service time |             country_agg_cached |     159.633 |      ms |
|   All |                                  100th percentile service time |             country_agg_cached |     160.376 |      ms |
|   All |                                                     error rate |             country_agg_cached |           0 |       % |
|   All |                                                 Min Throughput |                         scroll |       23.92 | pages/s |
|   All |                                              Median Throughput |                         scroll |       23.95 | pages/s |
|   All |                                                 Max Throughput |                         scroll |          24 | pages/s |
|   All |                                        50th percentile latency |                         scroll |     11982.3 |      ms |
|   All |                                        90th percentile latency |                         scroll |     13271.9 |      ms |
|   All |                                        99th percentile latency |                         scroll |     13582.4 |      ms |
|   All |                                       100th percentile latency |                         scroll |     13592.9 |      ms |
|   All |                                   50th percentile service time |                         scroll |     1070.66 |      ms |
|   All |                                   90th percentile service time |                         scroll |      1086.3 |      ms |
|   All |                                   99th percentile service time |                         scroll |     1099.84 |      ms |
|   All |                                  100th percentile service time |                         scroll |     1100.09 |      ms |
|   All |                                                     error rate |                         scroll |           0 |       % |
|   All |                                                 Min Throughput |                     expression |        0.94 |   ops/s |
|   All |                                              Median Throughput |                     expression |        0.94 |   ops/s |
|   All |                                                 Max Throughput |                     expression |        0.94 |   ops/s |
|   All |                                        50th percentile latency |                     expression |      142077 |      ms |
|   All |                                        90th percentile latency |                     expression |      164485 |      ms |
|   All |                                        99th percentile latency |                     expression |      169550 |      ms |
|   All |                                       100th percentile latency |                     expression |      170110 |      ms |
|   All |                                   50th percentile service time |                     expression |     1062.42 |      ms |
|   All |                                   90th percentile service time |                     expression |     1075.52 |      ms |
|   All |                                   99th percentile service time |                     expression |     1085.88 |      ms |
|   All |                                  100th percentile service time |                     expression |     1221.11 |      ms |
|   All |                                                     error rate |                     expression |           0 |       % |
|   All |                                                 Min Throughput |                painless_static |        0.16 |   ops/s |
|   All |                                              Median Throughput |                painless_static |        0.16 |   ops/s |
|   All |                                                 Max Throughput |                painless_static |        0.16 |   ops/s |
|   All |                                        50th percentile latency |                painless_static |  1.3722e+06 |      ms |
|   All |                                        90th percentile latency |                painless_static | 1.58845e+06 |      ms |
|   All |                                        99th percentile latency |                painless_static | 1.63758e+06 |      ms |
|   All |                                       100th percentile latency |                painless_static |  1.6428e+06 |      ms |
|   All |                                   50th percentile service time |                painless_static |        6144 |      ms |
|   All |                                   90th percentile service time |                painless_static |        6229 |      ms |
|   All |                                   99th percentile service time |                painless_static |     6249.96 |      ms |
|   All |                                  100th percentile service time |                painless_static |     6298.79 |      ms |
|   All |                                                     error rate |                painless_static |           0 |       % |
|   All |                                                 Min Throughput |               painless_dynamic |        0.34 |   ops/s |
|   All |                                              Median Throughput |               painless_dynamic |        0.34 |   ops/s |
|   All |                                                 Max Throughput |               painless_dynamic |        0.34 |   ops/s |
|   All |                                        50th percentile latency |               painless_dynamic |      575751 |      ms |
|   All |                                        90th percentile latency |               painless_dynamic |      667453 |      ms |
|   All |                                        99th percentile latency |               painless_dynamic |      688038 |      ms |
|   All |                                       100th percentile latency |               painless_dynamic |      690225 |      ms |
|   All |                                   50th percentile service time |               painless_dynamic |     3010.61 |      ms |
|   All |                                   90th percentile service time |               painless_dynamic |     3050.76 |      ms |
|   All |                                   99th percentile service time |               painless_dynamic |     3064.56 |      ms |
|   All |                                  100th percentile service time |               painless_dynamic |     3073.43 |      ms |
|   All |                                                     error rate |               painless_dynamic |           0 |       % |
|   All |                                                 Min Throughput | decay_geo_gauss_function_score |        0.78 |   ops/s |
|   All |                                              Median Throughput | decay_geo_gauss_function_score |        0.78 |   ops/s |
|   All |                                                 Max Throughput | decay_geo_gauss_function_score |        0.78 |   ops/s |
|   All |                                        50th percentile latency | decay_geo_gauss_function_score |     69776.1 |      ms |
|   All |                                        90th percentile latency | decay_geo_gauss_function_score |     80713.5 |      ms |
|   All |                                        99th percentile latency | decay_geo_gauss_function_score |       83087 |      ms |
|   All |                                       100th percentile latency | decay_geo_gauss_function_score |     83351.5 |      ms |
|   All |                                   50th percentile service time | decay_geo_gauss_function_score |     1267.32 |      ms |
|   All |                                   90th percentile service time | decay_geo_gauss_function_score |      1285.7 |      ms |
|   All |                                   99th percentile service time | decay_geo_gauss_function_score |     1415.07 |      ms |
|   All |                                  100th percentile service time | decay_geo_gauss_function_score |     1420.05 |      ms |
|   All |                                                     error rate | decay_geo_gauss_function_score |           0 |       % |
|   All |                                                 Min Throughput |   decay_geo_gauss_script_score |        0.46 |   ops/s |
|   All |                                              Median Throughput |   decay_geo_gauss_script_score |        0.46 |   ops/s |
|   All |                                                 Max Throughput |   decay_geo_gauss_script_score |        0.46 |   ops/s |
|   All |                                        50th percentile latency |   decay_geo_gauss_script_score |      291977 |      ms |
|   All |                                        90th percentile latency |   decay_geo_gauss_script_score |      337742 |      ms |
|   All |                                        99th percentile latency |   decay_geo_gauss_script_score |      347903 |      ms |
|   All |                                       100th percentile latency |   decay_geo_gauss_script_score |      349136 |      ms |
|   All |                                   50th percentile service time |   decay_geo_gauss_script_score |     2119.42 |      ms |
|   All |                                   90th percentile service time |   decay_geo_gauss_script_score |     2269.41 |      ms |
|   All |                                   99th percentile service time |   decay_geo_gauss_script_score |     2297.35 |      ms |
|   All |                                  100th percentile service time |   decay_geo_gauss_script_score |     2345.16 |      ms |
|   All |                                                     error rate |   decay_geo_gauss_script_score |           0 |       % |
|   All |                                                 Min Throughput |     field_value_function_score |         1.5 |   ops/s |
|   All |                                              Median Throughput |     field_value_function_score |         1.5 |   ops/s |
|   All |                                                 Max Throughput |     field_value_function_score |         1.5 |   ops/s |
|   All |                                        50th percentile latency |     field_value_function_score |     345.261 |      ms |
|   All |                                        90th percentile latency |     field_value_function_score |     352.609 |      ms |
|   All |                                        99th percentile latency |     field_value_function_score |     363.271 |      ms |
|   All |                                       100th percentile latency |     field_value_function_score |      495.57 |      ms |
|   All |                                   50th percentile service time |     field_value_function_score |     344.867 |      ms |
|   All |                                   90th percentile service time |     field_value_function_score |     352.226 |      ms |
|   All |                                   99th percentile service time |     field_value_function_score |     362.889 |      ms |
|   All |                                  100th percentile service time |     field_value_function_score |     495.142 |      ms |
|   All |                                                     error rate |     field_value_function_score |           0 |       % |
|   All |                                                 Min Throughput |       field_value_script_score |         1.5 |   ops/s |
|   All |                                              Median Throughput |       field_value_script_score |         1.5 |   ops/s |
|   All |                                                 Max Throughput |       field_value_script_score |         1.5 |   ops/s |
|   All |                                        50th percentile latency |       field_value_script_score |     500.321 |      ms |
|   All |                                        90th percentile latency |       field_value_script_score |     653.135 |      ms |
|   All |                                        99th percentile latency |       field_value_script_score |     664.299 |      ms |
|   All |                                       100th percentile latency |       field_value_script_score |     664.494 |      ms |
|   All |                                   50th percentile service time |       field_value_script_score |     500.142 |      ms |
|   All |                                   90th percentile service time |       field_value_script_score |     652.903 |      ms |
|   All |                                   99th percentile service time |       field_value_script_score |     664.086 |      ms |
|   All |                                  100th percentile service time |       field_value_script_score |     664.273 |      ms |
|   All |                                                     error rate |       field_value_script_score |           0 |       % |
|   All |                                                 Min Throughput |          random_function_score |        0.46 |   ops/s |
|   All |                                              Median Throughput |          random_function_score |        0.46 |   ops/s |
|   All |                                                 Max Throughput |          random_function_score |        0.46 |   ops/s |
|   All |                                        50th percentile latency |          random_function_score |      375124 |      ms |
|   All |                                        90th percentile latency |          random_function_score |      434203 |      ms |
|   All |                                        99th percentile latency |          random_function_score |      447468 |      ms |
|   All |                                       100th percentile latency |          random_function_score |      448961 |      ms |
|   All |                                   50th percentile service time |          random_function_score |     2170.24 |      ms |
|   All |                                   90th percentile service time |          random_function_score |     2184.38 |      ms |
|   All |                                   99th percentile service time |          random_function_score |     2199.42 |      ms |
|   All |                                  100th percentile service time |          random_function_score |     2200.11 |      ms |
|   All |                                                     error rate |          random_function_score |           0 |       % |
|   All |                                                 Min Throughput |            random_script_score |        0.26 |   ops/s |
|   All |                                              Median Throughput |            random_script_score |        0.26 |   ops/s |
|   All |                                                 Max Throughput |            random_script_score |        0.26 |   ops/s |
|   All |                                        50th percentile latency |            random_script_score |      783795 |      ms |
|   All |                                        90th percentile latency |            random_script_score |      907396 |      ms |
|   All |                                        99th percentile latency |            random_script_score |      935243 |      ms |
|   All |                                       100th percentile latency |            random_script_score |      938307 |      ms |
|   All |                                   50th percentile service time |            random_script_score |     3762.05 |      ms |
|   All |                                   90th percentile service time |            random_script_score |     3903.35 |      ms |
|   All |                                   99th percentile service time |            random_script_score |     3961.59 |      ms |
|   All |                                  100th percentile service time |            random_script_score |     3971.98 |      ms |
|   All |                                                     error rate |            random_script_score |           0 |       % |
|   All |                                                 Min Throughput |                    large_terms |        1.02 |   ops/s |
|   All |                                              Median Throughput |                    large_terms |        1.03 |   ops/s |
|   All |                                                 Max Throughput |                    large_terms |        1.03 |   ops/s |
|   All |                                        50th percentile latency |                    large_terms |      119415 |      ms |
|   All |                                        90th percentile latency |                    large_terms |      137841 |      ms |
|   All |                                        99th percentile latency |                    large_terms |      142072 |      ms |
|   All |                                       100th percentile latency |                    large_terms |      142510 |      ms |
|   All |                                   50th percentile service time |                    large_terms |     933.799 |      ms |
|   All |                                   90th percentile service time |                    large_terms |     1083.49 |      ms |
|   All |                                   99th percentile service time |                    large_terms |     1109.88 |      ms |
|   All |                                  100th percentile service time |                    large_terms |     1118.44 |      ms |
|   All |                                                     error rate |                    large_terms |           0 |       % |
|   All |                                                 Min Throughput |           large_filtered_terms |        1.03 |   ops/s |
|   All |                                              Median Throughput |           large_filtered_terms |        1.03 |   ops/s |
|   All |                                                 Max Throughput |           large_filtered_terms |        1.04 |   ops/s |
|   All |                                        50th percentile latency |           large_filtered_terms |      117365 |      ms |
|   All |                                        90th percentile latency |           large_filtered_terms |      135707 |      ms |
|   All |                                        99th percentile latency |           large_filtered_terms |      139942 |      ms |
|   All |                                       100th percentile latency |           large_filtered_terms |      140370 |      ms |
|   All |                                   50th percentile service time |           large_filtered_terms |     932.052 |      ms |
|   All |                                   90th percentile service time |           large_filtered_terms |     1081.07 |      ms |
|   All |                                   99th percentile service time |           large_filtered_terms |     1093.36 |      ms |
|   All |                                  100th percentile service time |           large_filtered_terms |     1101.55 |      ms |
|   All |                                                     error rate |           large_filtered_terms |           0 |       % |
|   All |                                                 Min Throughput |         large_prohibited_terms |        1.08 |   ops/s |
|   All |                                              Median Throughput |         large_prohibited_terms |        1.08 |   ops/s |
|   All |                                                 Max Throughput |         large_prohibited_terms |        1.08 |   ops/s |
|   All |                                        50th percentile latency |         large_prohibited_terms |      106580 |      ms |
|   All |                                        90th percentile latency |         large_prohibited_terms |      123484 |      ms |
|   All |                                        99th percentile latency |         large_prohibited_terms |      127280 |      ms |
|   All |                                       100th percentile latency |         large_prohibited_terms |      127670 |      ms |
|   All |                                   50th percentile service time |         large_prohibited_terms |     892.624 |      ms |
|   All |                                   90th percentile service time |         large_prohibited_terms |     1042.97 |      ms |
|   All |                                   99th percentile service time |         large_prohibited_terms |     1066.02 |      ms |
|   All |                                  100th percentile service time |         large_prohibited_terms |     1070.88 |      ms |
|   All |                                                     error rate |         large_prohibited_terms |           0 |       % |

```
----------------------------------
[INFO] SUCCESS (took 9822 seconds)
----------------------------------
```
