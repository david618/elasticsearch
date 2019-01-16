# elasticsearch
Setup and Test Elasticsearch


# [jan2019](./jan2019)

Trying to achieve the maximum ingest of [planes](./planes) data into Elasticsearch; streaming from a Kafka topic.

Using Azure D16s_v3 (16 cores / 64GB mem)

Tested streaming from Kafka to Elasticsearch 6.5.
- 1 node 50 k/s
- 3 nodes 110 k/s
- 5 nodes 170 k/s
- 7 nodes 170 k/s

We are not seeing linear growth in igest.  With 1 node we can sustain 50k/s ingest; for linear scaling 7 nodes should handle 350k/s.  We checked cpu usages during test runs; Kafka and Spark nodes are very lightly loaded, the Elasticsearch nodes are under heavy load using up to 11 of 16 cpus.


