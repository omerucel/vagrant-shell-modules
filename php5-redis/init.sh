#! /bin/bash

pecl install redis
echo "extension=redis.so" > /etc/php5/conf.d/redis.ini