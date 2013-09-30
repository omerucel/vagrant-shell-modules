#! /bin/bash

yum --enablerepo=remi install -y redis

chkconfig redis off
service redis restart