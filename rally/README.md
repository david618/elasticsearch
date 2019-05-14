### Kafka-Spark-Elasticsearch Testing
We are trying to achieve the best ingest docs per second into Elasticsearch.

We conducted ingest testing using Kafka-Spark-Elasticsearch using Azure VM's. We were able to scale the ingest up to over 1 million docs/s using 40 Elasticsearch nodes.

We tested this same Kafka-Spark-Elasticearch on AKS (Kubernetes) using one and three Elasticsearch nodes using AKS; however, the ingest rates was about 20% of what we saw when using Azure VM's.

We tried numerous tuning exercises to try to isolate why AKS was not performing as well and was not scaling.

See this [repo](https://github.com/david618/elasticsearch/tree/master/rally) for more details of the testing.


# Rally Testing

This repo documents tests done with Rally.  The goal was to reduce the number of variables to identify why Elasticsearch ingest is not working well on AKS. 

Testing done using [Elastic/Rally](https://github.com/elastic/rally)

Ran tests using geoname and nyc_taxis tracks from Rally.

Tested using VM's and AKS.  

Tested using one and three Elasticsearch nodes.

|Running On|geonames 1 node|geonames 3 nodes|nyc_taxis 1 node|nyc_taxis 3 nodes|
|----------|---------------|----------------|----------------|-----------------|
|vms       |81.3k/s        |32.8k/s         |54.6k/s         |53.6k/s          |
|aks       |8.4k/s         |9.1k/s          |17.1k/s         |8.3k/s           |

These results show that performance on AKS is much slower than on VM's.

The results also show some worse performance with 3 nodes over one; however, this could be an Rally limitation/issue. 


