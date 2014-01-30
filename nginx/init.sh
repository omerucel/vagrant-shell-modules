#!/bin/bash

apt-get install -y nginx
rm -f /etc/nginx/sites-enabled/default

if [ -z ${NGINX_CONF_FILE} ]
then
    cp -f "${SHELL_SCRIPT_MODULE_PATH}/nginx/files/vhost.conf" /etc/nginx/sites-enabled/default
else
    cp -f ${NGINX_CONF_FILE} /etc/nginx/sites-enabled/default
fi

service nginx restart