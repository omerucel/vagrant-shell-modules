#! /bin/bash

yum --enablerepo=remi install -y redis
chkconfig redis on
service redis restart