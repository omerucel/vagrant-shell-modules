#! /bin/bash

yum --enablerepo=remi install -y redis

service redis restart