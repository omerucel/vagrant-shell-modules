#! /bin/bash

apt-get install -y php5-xdebug

if [ -z ${XDEBUG_INI_FILE} ]
then
    cp -f "${SHELL_SCRIPT_MODULE_PATH}/php5-xdebug/files/xdebug.ini" /etc/php5/mods-available/xdebug.ini
else
    cp -f "${XDEBUG_INI_FILE}" /etc/php5/mods-available/xdebug.ini
fi