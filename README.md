# How?

Ubuntu 18.04 64Bit Desktop or Server
## Example:

    apt-get -y install make build-essential curl git zlib1g-dev python2.7 libkrb5-dev
    mkdir /coco
    mkdir /coco/data
    mkdir /coco/data/db
    mkdir /coco/data/log

    cd /coco
    wget http://nodejs.org/dist/v8.15.1/node-v6.12.2.tar.gz 
    tar xfz node-v6.12.2.tar.gz 
    cd node-v6.12.2
    ./configure 
    make 
    make install

    cd /coco
    curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1804-4.0.13.tgz
    tar xfz mongodb-linux-x86_64-ubuntu1804-4.0.13.tgz
    cp mongodb-linux-x86_64-ubuntu1804-4.0.13/bin/* /usr/local/bin 

    git clone https://github.com/kevin9710/codecombat.git
    cd codecombat/bin
    ./mongo_run.sh

    cd /coco
    wget http://analytics.codecombat.com:8080/dump.tar.gz 
    tar xzvf dump.tar.gz 
    mongorestore --noIndexRestore --drop dump

## Downloading modules

    cd /coco/codecombat
	wget https://github.com/kevin9710/codecombat/releases/download/v1.0/bower_components.tar.gz
	wget https://github.com/kevin9710/codecombat/releases/download/v1.0/node_modules.tar.gz
    tar -zxvf bower_components.tar.gz
    tar -zxvf node_modules.tar.gz

## Running

    cd /coco/codecombat
    npm run webpack
    npm run multicore
	
#### or
    cd /coco/codecombat/bin
	./mongo_run.sh
	./coco_run.sh

Visit http://localhost:3000 to see your local CodeCombat

## How to set up an admin

    mongo
	use coco
	db.users.update({"slug":"your name"},{$set:{"permissions":["godmode","admin"]}})
	
#### or

    db.users.update({"email":"your email"},{$set:{"permissions":["godmode","admin"]}})
