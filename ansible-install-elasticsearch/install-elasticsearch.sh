#!/bin/bash

sudo yum -y install ansible

export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook -i hosts --private-key /home/azureuser/dsetestkey playbooks/install-elasticsearch.yaml

