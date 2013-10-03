#! /bin/bash

yum --enablerepo=remi install -y nginx

if [ ! -f /etc/nginx/conf.d/vhost.conf ]
then
    if [[ -z "$NGINX_VHOST_FILE" ]]
    then
        ln -s "${SHELL_SCRIPT_MODULE_PATH}/nginx/files/vhost.conf" /etc/nginx/conf.d/vhost.conf
    else
        ln -s "${NGINX_VHOST_FILE}" /etc/nginx/conf.d/vhost.conf
    fi
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