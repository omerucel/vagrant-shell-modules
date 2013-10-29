#! /bin/bash

rpm -qa | grep -q httpd || yum --enablerepo=remi install -y httpd

chkconfig httpd off

if [ ! -f /etc/httpd/conf.d/vhost.conf ]
then
    if [[ -z "$HTTPD_VHOST_FILE" ]]
    then
        ln -s "${SHELL_SCRIPT_MODULE_PATH}/httpd/files/vhost.conf" /etc/httpd/conf.d/vhost.conf
    else
        ln -s "${HTTPD_VHOST_FILE}" /etc/httpd/conf.d/vhost.conf
    fi
fi

if [ -f /etc/httpd/conf.d/welcome.conf ]
then
        rm -f /etc/httpd/conf.d/welcome.conf
fi

service httpd restart