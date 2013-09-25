#! /bin/bash

rpm -qa | grep -q memcached || yum install -y memcached

chkconfig memcached off
service memcached restart