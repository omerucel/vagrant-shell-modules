#!/bin/bash

apt-get install -y php5-fpm
rm -f /etc/php5/fpm/pool.d/www.conf

if [ -z ${PHP_FPM_CONF_FILE} ]
then
    cp -f "${SHELL_SCRIPT_MODULE_PATH}/php5-fpm/files/www.conf" /etc/php5/fpm/pool.d/www.conf
else
    cp -f ${PHP_FPM_CONF_FILE} /etc/php5/fpm/pool.d/www.conf
fi

service php5-fpm restart