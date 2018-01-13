#!/usr/bin/env bash
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list' 
# Update index and install MongoDb
sudo apt update
sudo apt install -y mongodb-org
# Start MongoDb and add it to autorun
sudo systemctl start mongod
sudo systemctl enable mongod
# Download, install and run application
git clone https://github.com/Otus-DevOps-2017-11/reddit.git
cd reddit && bundle install
puma -d