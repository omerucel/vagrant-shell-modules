#! /bin/bash

if [ ! -f /etc/yum.repos.d/mongodb.repo ]
then
	echo """[mongodb]
name=MongoDB Repository
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
gpgcheck=0
enabled=1""" >> /etc/yum.repos.d/mongodb.repo
fi

rpm -qa | grep -q mongo-10gen || yum install -y mongo10-gen
rpm -qa | grep -q mongo-10gen-server || yum install -y mongo-10gen-server

chkconfig mongod off
service mongod restart