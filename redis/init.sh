#! /bin/bash

rpm -qa | grep -q redis || yum --enablerepo=remi install -y redis

chkconfig redis off
service redis restart