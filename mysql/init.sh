#! /bin/bash

yum install -y mysql-server

chkconfig mysqld off

service mysqld stop
cp -f "${SHELL_SCRIPT_MODULE_PATH}/mysql/files/my.cnf" /etc/my.cnf
service mysqld start

mysql -u root -e "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '' WITH GRANT OPTION;"