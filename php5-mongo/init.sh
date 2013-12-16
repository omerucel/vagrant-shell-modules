#! /bin/bash

pecl install mongo
echo "extension=mongo.so" > /etc/php5/conf.d/mongo.ini