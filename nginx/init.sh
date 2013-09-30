#! /bin/bash

yum --enablerepo=remi install -y nginx

if [ ! -f /etc/nginx/conf.d/vhost.conf ]
then
	ln -s "${SHELL_SCRIPT_MODULE_PATH}/nginx/files/vhost.conf" /etc/nginx/conf.d/vhost.conf
fi

if [ -f /etc/nginx/conf.d/default.conf ]
then
	rm -f /etc/nginx/conf.d/default.conf
fi

if [ -f /etc/nginx/conf.d/virtual.conf ]
then
	rm -f /etc/nginx/conf.d/virtual.conf
fi

service nginx restart