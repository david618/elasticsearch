# Elasticsearch Testing 
**January 2019**

Test latest version of Elasticsearch using a test app as close to the one we used for Datastax.

## Cloud Setup

Azure
- boot (DS4v3): bastion host
- m1 (DS8v3):  Spark 2.3.2 (Master)
- a1, a2, and a3 (DS16v3): Spark 2.3.2 Slaves
- a41, a42, and a43 (DS16v3): Kafka_2.11-2.1.0
- a61, a62, and a63 (DS16v3): Elasticsearch 6.5  

Installed
- [Spark](../ansible-install-spark)
- [Kafka](../ansible-install-kafka)
- [Elasticsearch](../ansible-install-elasticsearch) installed using Ansible.


## Create Kafka Topic

Connect to one of Kafka brokers.

```
sudo su - kafka
./kafka/bin/kafka-topics.sh --zookeeper localhost:2181 --topic planes9 --create --replication-factor 1 --partitions 9
```

Same Kafka Topic used for both Datastax and Elasticsearch testing.

**Note:** Don't run both Elasticsearch and Datastax tests at same time. Both use same Kafka; would impact results.

## Build and Deploy sparktest

On boot server build and deploy [sparktest](https://github.com/david618/sparktest)

```
sudo yum -y install epel-release
sudo yum -y install git maven
git clone https://github.com/david618/sparktest
cd sparktest
mvn install
```

Sparktest has several test tools that can send data to Elasticsearch. 


## Deploy sparktest to Spark Cluster

On boot

```
cd ~
tar cvzf sparktest-files.tgz sparktest/target/sparktest.jar sparktest/target/dependency-jars/* sparktest/log4j2conf.xml sparktest/planes.csv
```

Use Ansible Playbook to copy to the Spark agents.

```
ansible-playbook --private-key /home/azureuser/az -i hosts playbooks/deploy_sparktest-files.yaml
```

This copies and extracts the files in sparktest-files.tgz on each of the Spark agents.

## Deploy rttest

The [rttest](https://github.com/david618/rttest) has a tool to send a file to Kafka; and monitor rates of change of a Kafka topic or Elasticsearch index.


On boot

```
git clone https://github.com/david618/rttest
cd rttest 
mvn install
```

Create tar zip with rttest.

```
cd ~
tar cvzf rttest-files.tgz rttest/target/rttest-full.jar rttest/target/rttest.jar rttest/target/lib/* rttest/planes.json rttest/planes.csv
```

```
ansible-playbook --private-key /home/azureuser/az -i hosts playbooks/deploy_rttest-files.yaml
```

This deploys to Spark nodes; however, it lays the app down in the sudoer's home (e.g. /home/azureuser)


## Position Test Files on Spark Nodes

We need to move some of the test data files from S3 to local servers to support streaming from Kafka to Cassandra.

Secure shell to Spark slave.

Download a file(s).  For example:  

```
curl -O https://s3.amazonaws.com/esriplanes/lat88/million/planes00001
```

Downloaded planes00001 to a1
Downloaded planes00002 to a2
Downloaded planes00003 to a3

The Kafka tool sends data from the file and will start from top again if needed (e.g. you send more than 5 million lines).

The Spark job changes the plane id to a UUID string; therefore, the (id, ts) will be unique for each line send to Cassaandra.


## Run Spark Job

From Spark Master (m1) or one of the Spark slaves.

```
/opt/spark/bin/spark-submit  \
  --conf spark.executor.cores=4   \
  --conf spark.cores.max=36   \
  --conf spark.executor.extraClassPath="/home/spark/sparktest/target/dependency-jars/*"   \
  --driver-class-path "/home/spark/sparktest/target/dependency-jars/*"   \
  --conf spark.driver.extraJavaOptions=-Dlog4j.configurationFile=/home/spark/sparktest/log4j2conf.xml   \
  --conf spark.executor.extraJavaOptions=-Dlog4j.configurationFile=/home/spark/sparktest/log4j2conf.xml   \
  --conf spark.executor.memory=4000m   \
  --conf spark.streaming.concurrentJobs=64   \
  --conf spark.scheduler.mode=FAIR   \
  --conf spark.locality.wait=0s   \
  --conf spark.streaming.kafka.consumer.cache.enabled=false   \
  --conf spark.cassandra.output.batch.size.rows=auto   \
  --conf spark.cassandra.output.concurrent.writes=200   \
  --conf spark.cassandra.output.batch.grouping.buffer.size=1000   \
  --class  org.jennings.estest.SendKafkaTopicElasticsearch /home/spark/sparktest/target/sparktest.jar \
  spark://m1:7077 1000 a41:9092 group1 planes9 1 a61 9200 - - 6 true false
```

Parameters
- Spark Master: spark://m1:7077
- emitInterval: 1000 milliseconds (or 1 second)
- Kafka Broker(s):  a41:9092
- Kafka Group: group1  (Whatever you want)
- Kafka Topic: planes9 This is the topic you created above.  The number of partitions will impact throughput. Try to create as many partitions as you have executors in the Spark Job.
- Kafka Threads: 1 
- Elasticsearch Server: a61  (Hostname or IP)
- Elasticsearch Port (http): 9200 
- Elasticsearch Username: Use - to indicate no username
- Elasticsearch Password: Use - to indicate no password
- Elasticsearch number of shards:  6 Recommend mulitiple of the number of nodes 
- Recreate: true This will Delete the Elasticsearch Index and recreate it 
- Debug: false  If set true you'll get some additional output to standard output


## Kafka Topic Monitor

From one of the Spark Slaves or boot.

```
java -cp rttest/target/rttest.jar com.esri.rttest.mon.KafkaTopicMon a41:9092 planes9
```

This tool polls the Elasticsearch index planes every 60 seconds.  And get a count.  As the count is increasing the tool will calculate the linear regression (best fit line) to the rate of change in the count.  After three samples you'll see the rate.


## Elastic Index Monitor

From one of the Spark Slaves or boot.

```
java -cp rttest/target/rttest.jar com.esri.rttest.mon.ElasticIndexMon http://a61:9200/planes/_doc 60 
```

This tool polls the Elasticsearch index planes every 60 seconds.  And get a count.  As the count is increasing the tool will calculate the linear regression (best fit line) to the rate of change in the count.  After three samples you'll see the rate.

Other useful Elasticsearch Commands

```
curl a61:9200/_cat/indices

curl a61:9200/planes/_mappings?pretty

curl -XDELETE a61:9200/planes
```

## Send Messages to Kafka


From one of the Spark slaves.

```
java -cp rttest/target/rttest.jar com.esri.rttest.send.Kafka a41:9092 planes9 planes00002 120000 400000000
```

This app tries to send the file planes00002 to Kafka topic planes9 at 120,000/second for 400,000,000.  As it's running the tool will automtically try to adjust the rate to achieve the requested rate (120,000/second) and will report the actual rate it achieves.  Depending on several factors the actual rate may be less than requested.

Running multiple instances of this app on one or more servers can be used to achieve higher rates. 

## Results

### 1 Elasticsearh Node

```
/opt/spark/bin/spark-submit  \
  --conf spark.executor.cores=4   \
  --conf spark.cores.max=36   \
  --conf spark.executor.extraClassPath="/home/spark/sparktest/target/dependency-jars/*"   \
  --driver-class-path "/home/spark/sparktest/target/dependency-jars/*"   \
  --conf spark.driver.extraJavaOptions=-Dlog4j.configurationFile=/home/spark/sparktest/log4j2conf.xml   \
  --conf spark.executor.extraJavaOptions=-Dlog4j.configurationFile=/home/spark/sparktest/log4j2conf.xml   \
  --conf spark.executor.memory=4000m   \
  --conf spark.streaming.concurrentJobs=64   \
  --conf spark.scheduler.mode=FAIR   \
  --conf spark.locality.wait=0s   \
  --conf spark.streaming.kafka.consumer.cache.enabled=false   \
  --conf spark.cassandra.output.batch.size.rows=auto   \
  --conf spark.cassandra.output.concurrent.writes=200   \
  --conf spark.cassandra.output.batch.grouping.buffer.size=1000   \
  --class  org.jennings.estest.SendKafkaTopicElasticsearch /home/spark/sparktest/target/sparktest.jar \
  spark://m1:7077 1000 a41:9092 group1 planes9 1 a61 9200 - - 6 true false
```


Rates in k/s (1000/s).  Number sent in millions.

|Requested Send Rate|Actual Send Rate|KafkaTopicMon Rate|Elasticsearch Mon Rate|Number Sent|
|-------------------|----------------|------------------|----------------------|-----------|
|1x200              |200             |200               |70 dropping to 60     |100        |
|1x60               |60              |60                |60 dropping to 50     |100        | 
|1x50               |50              |50                |50 dropping to 46     |100        |

Observations
- Sustainable rate is less than 60k/s 


### 3 Elasticsearch Nodes

Rates in k/s (1000/s).  Number sent in millions.

|Requested Send Rate|Actual Send Rate|KafkaTopicMon Rate|Elasticsearch Mon Rate|Number Sent|
|-------------------|----------------|------------------|----------------------|-----------|
|1x200              |200             |200               |150                   |40         |
|1x120              |120             |120               |120 falling to 112    |400        |


Observations
- The elasticsearch nodes were under heavy load showing more than 11 of 16 cpu's in use per node


### 5 Elasticsearch Nodes

Rates in k/s (1000/s).  Number sent in millions.

Used 10 shards.

```
/opt/spark/bin/spark-submit  \
  --conf spark.executor.cores=4   \
  --conf spark.cores.max=36   \
  --conf spark.executor.extraClassPath="/home/spark/sparktest/target/dependency-jars/*"   \
  --driver-class-path "/home/spark/sparktest/target/dependency-jars/*"   \
  --conf spark.driver.extraJavaOptions=-Dlog4j.configurationFile=/home/spark/sparktest/log4j2conf.xml   \
  --conf spark.executor.extraJavaOptions=-Dlog4j.configurationFile=/home/spark/sparktest/log4j2conf.xml   \
  --conf spark.executor.memory=4000m   \
  --conf spark.streaming.concurrentJobs=64   \
  --conf spark.scheduler.mode=FAIR   \
  --conf spark.locality.wait=0s   \
  --conf spark.streaming.kafka.consumer.cache.enabled=false   \
  --conf spark.cassandra.output.batch.size.rows=auto   \
  --conf spark.cassandra.output.concurrent.writes=200   \
  --conf spark.cassandra.output.batch.grouping.buffer.size=1000   \
  --class  org.jennings.estest.SendKafkaTopicElasticsearch /home/spark/sparktest/target/sparktest.jar \
  spark://m1:7077 1000 a41:9092 group1 planes9 1 a61 9200 - - 10 true false
```


|Requested Send Rate|Actual Send Rate|KafkaTopicMon Rate|Elasticsearch Mon Rate|Number Sent|
|-------------------|----------------|------------------|----------------------|-----------|
|1x200              |200             |200               |180                   |100         |
|1x200              |200             |200               |190 dropping to 170   |100         |


Observations
- Spark slaves (a1,a2,a3) showed around 1 cpu busy out of 16 
- About 20% faster with 1x200; this is 40% more cpu and mem 
- Tried 2 cores to 36 max cores; 18 partitions on Kafka and shards in Elastic (Rate dropped to 130/s)
- Tried using 6 shards; same settings as used during 3 node test; Same results 

### 7 Elasticsearch Nodes

Rates in k/s (1000/s).  Number sent in millions.

|Requested Send Rate|Actual Send Rate|KafkaTopicMon Rate|Elasticsearch Mon Rate|Number Sent|
|-------------------|----------------|------------------|----------------------|-----------|
|1x200              |200             |200               |190 dropping to 175   |100         |


No notable difference when increasing from 5 to 7 Elasticsearch nodes.


