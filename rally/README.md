### Kafka-Spark-Elasticsearch Testing

We conducted ingest testing using Kafka-Spark-Elasticsearch using Azure VM's.  We were able to scale the ingest up to over 1 million docs/s.

We tested this same Kafka-Spark-Elasticearch on AKS (Kubernetes) using one the three Elasticsearch nodes using AKS nodes of same size as the Azure VM's we tested earlier; however, the ingest rates was about 20% of what we got off of AKS.

We tried numerous tuning excercises to try to isolate why AKS was not perfoming as well and was not scaling.

See [elastic-ingest](https://github.com/david618/elastic-ingest) repo for more details of the testing.


# Rally Testing

This repo documents tests done with Rally.  The goal was to reduce the number of variables to identify why Elasticsearch ingest is not working well on AKS. 

Testing done using [Elastic/Rally](https://github.com/elastic/rally)

Ran tests using geoname and nyc_taxis tracks from Rally.

Tested using VM's and usding AKS.  

Tested using 1 and three Elasticsearch nodes.

|Running On|geonames 1 node|geonames 3 nodes|nyc_taxis 1 node|nyx_taxis 3 nodes|
|----------|---------------|----------------|----------------|-----------------|
|vms       |81.3k/s        |32.8k/s         |54.6k/s         |53.6k/s          |
|aks       |8.4k/s         |9.1k/s          |17.1k/s         |8.3k/s           |

These results show that performance on AKS is much slower than on VM's.

The results also show some worse performance with 3 nodes over one; however, this could be an Rally limitation/issue. 


