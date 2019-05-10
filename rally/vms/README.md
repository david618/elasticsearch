#### Create SSH Key Pari

You'll need a SSH Key Pair

If you don't have one; here is the process to create one.

This can be done from command line on Linux, Mac, or MobaXterm (Windows).

```
ssh-keygen
```

Change the path to the key (e.g. /home/david/az)

Leave passphrase blank.


**NOTE:** If you already have a private key (az) with a password; you can remove the password with these commands.

```
mv az az_withpassword
openssl rsa -in az_withpassword -out az
```

This process create two files 
- az (Private Key)
- az.pub (Public Key)


#### Create Cluster 

Deploy create-cluster template
- Create new Resoure Group (e.g. dj0508a)
- Username: We use azureuser; but it can be whatever you want
- Public Key: Cut and paste the public key into this input box
- Num Agents (1 or 3)
- Agent Size: D16s_v3
- Agent Disk Size GB: 1024
- Boot Server D2s_v3


#### Copy Private Key to Boot

Using scp to copy private key to boot server.

Then ssh to boot and copy the private key to .ssh/id_rsa

#### Install EPEL and git

On boot

```
sudo yum -y install epel-release
sudo yum -y install git
```

#### Clone david618/ansible

This repo include an Ansible script to install Elasticsearch 7.

```
git clone https://github.com/david618/ansible
```

#### Install Elasticsearch

```
cd ansible
cd elasticsearch-7
```

Edit the hosts file.

Set masters and data.

For example:

```
[master]
a1
a2
a3
[data]
[nodes:children]
master
data
```

**Note:** The Master nodes also function as data nodes.



##### Format Drives

```
bash format-drives.sh
```

This will format the data drive for use by Elasticsearch

##### Install Elasticsearch 

For one node: 

```
bash install-elasticsearch-one-node.sh
```

For more than one node:

```
bash install-elasticsearch.sh
```

The one-node uses a different discovery.type (single-node) than mulitple node install.


#### Start Elasticsearch

```
bash start-elasticsearch.sh
```

#### Add Ubuntu 18.04 VM

Use the add_agents_u18 template.
- Select Existing Resource Group
- Username and Public Key: Same as you did when creating cluster.
- Starting index: 81  
- Count: 1
- Size: D16s_v3
- Disk Size: 50G

This will add another agent (a81) to the cluster.

#### Install esrally 

```
ssh a81
sudo su -
apt-get update
apt-get install -y gcc python3-pip python3-dev git openjdk-8-jre tmux curl vim
export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
pip3 install esrally
```

#### Run Rally Test

```
esrally configure
esrally --track=geonames --target-hosts=a1:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index-append" --report-file=report.md
```
