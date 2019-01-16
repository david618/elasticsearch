# Ansible Install Elasticsearch

## Edit hosts file

Define nodes 

## Format drives

Edit format-drives.sh and set the path to the private-key.

The default playbook ```format-data-drive.yaml``` finds, formats, and mounts one data drive at ```/opt/elasticsearch```.

Run ```bash format-drives.sh```.

## Install elasticsearch

Edit ```files/elasticsearch.yaml```.  
- Single Node
  - Comment out discovery.zen.ping.unicast.hosts and discovery.zen.minimum_master_nodes
  - Uncomment discovery.type: single-node
- Muliple Nodes (Should be odd number)
  - Comment out discovery.type: single-node
  - Uncomment discovery.zen.ping.unicast.hosts and set (e.g. ```["a61", "a62", "a63", "a64", "a65"]```)
  - Uncomment discovery.zen.minimum_master_nodes and set half the nodes rounded up (e.g. 3 for 5 nodes)
  
Run ```bash install-elasticsearch.sh```.


## Start Elasticsearch

```
ansible-playbook --private-key /home/azureuser/dsetestkey -i hosts playbooks/start-elasticsearch.yaml
```

You can check the nodes using a curl command:  ```curl a61:9200/_cat/nodes```

## Stop Elasticsearch

```
ansible-playbook --private-key /home/azureuser/dsetestkey -i hosts playbooks/stop-elasticsearch.yaml
```
