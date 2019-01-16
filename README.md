# elasticsearch
Setup and Test Elasticsearch


# jan2019

Trying to achieve the maximum ingest possible of [planes](../planes) data.  


Using Azure D16s_v3 (16 cores / 64GB mem)

Tested streaming from Kafka to Elasticsearch 6.5.
- 1 node 50 k/s
- 3 nodes 110 k/s
- 5 nodes 170 k/s
- 7 nodes 170 k/s
