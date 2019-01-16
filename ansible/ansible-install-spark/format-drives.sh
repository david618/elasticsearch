#!/bin/bash

sudo yum -y install ansible

export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook -i hosts --private-key /home/azureuser/az playbooks/format-data-drive.yaml

