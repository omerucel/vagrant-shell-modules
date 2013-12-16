#! /bin/bash

yum --enablerepo=remi install -y nginx

chkconfig nginx on

rm -f /etc/nginx/conf.d/default.conf
rm -f /etc/nginx/conf.d/virtual.conf

if [[ -z "$NGINX_VHOST_FILE" ]]
then
    cp -f "${SHELL_SCRIPT_MODULE_PATH}/nginx/files/vhost.conf" /etc/nginx/conf.d/vhost.conf
else
    cp -f "${NGINX_VHOST_FILE}" /etc/nginx/conf.d/vhost.conf
fi

service nginx restart