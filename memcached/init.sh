#! /bin/bash

yum install -y memcached

chkconfig memcached off
service memcached restart