#! /bin/bash

add-apt-repository ppa:rwky/redis
apt-get -y update
apt-get -y install redis-server

service redis-server restart