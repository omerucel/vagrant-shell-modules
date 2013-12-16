#! /bin/bash

rpm -qa | grep -q httpd || yum --enablerepo=remi install -y httpd

chkconfig httpd on

rm -f /etc/httpd/conf.d/welcome.conf

if [[ -z "$HTTPD_VHOST_FILE" ]]
then
    cp -f "${SHELL_SCRIPT_MODULE_PATH}/httpd/files/vhost.conf" /etc/httpd/conf.d/vhost.conf
else
    cp -f "${HTTPD_VHOST_FILE}" /etc/httpd/conf.d/vhost.conf
fi

service httpd restart