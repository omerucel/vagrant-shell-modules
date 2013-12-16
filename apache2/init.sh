#! /bin/bash

apt-get install -y apache2
a2enmod rewrite

rm -f /etc/apache2/sites-enabled/000-default

if [ -z ${APACHE_VHOST_FILE} ]
then
    cp -f "${SHELL_SCRIPT_MODULE_PATH}/apache2/files/vhost.conf" /etc/apache2/sites-enabled/vhost.conf
else
    cp -f "${APACHE_VHOST_FILE}" /etc/apache2/sites-enabled/vhost.conf
fi

service apache2 restart