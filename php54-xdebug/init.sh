#! /bin/bash

yum --enablerepo=remi install -y php-pecl-xdebug

if [[ -z "$XDEBUG_INI_FILE" ]]
then
    cp -f "${SHELL_SCRIPT_MODULE_PATH}/php54-xdebug/files/xdebug.ini" /etc/php.d/xdebug.ini
else
    cp -f "${XDEBUG_INI_FILE}" /etc/php.d/xdebug.ini
fi