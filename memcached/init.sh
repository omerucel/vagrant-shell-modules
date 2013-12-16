#! /bin/bash

yum install -y memcached

cp -f "${SHELL_SCRIPT_MODULE_PATH}/memcached/files/memcached" /etc/init.d/memcached
chmod 755 /etc/init.d/memcached
chkconfig --add /etc/init.d/memcached
service memcached restart