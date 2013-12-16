#! /bin/bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
rm -f /etc/apt/sources.list.d/mongodb.list
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
apt-get -y update
apt-get -y install mongodb-10gen

service mongodb restart