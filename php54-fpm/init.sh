#! /bin/bash

yum --enablerepo=remi install -y php-fpm

chkconfig php-fpm on

if [[ -z "$PHP_FPM_CONF_FILE" ]]
then
    cp -f "${SHELL_SCRIPT_MODULE_PATH}/php54-fpm/files/www.conf" /etc/php-fpm.d/www.conf
else
    cp -f "${PHP_FPM_CONF_FILE}" /etc/php-fpm.d/www.conf
fi

service php-fpm restart