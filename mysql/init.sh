#! /bin/bash

echo "mysql-server mysql-server/root_password password root" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections

apt-get -y install mysql-server

service mysql stop

if [ -z ${MYSQL_CONF_FILE} ]
then
    cp -f "${SHELL_SCRIPT_MODULE_PATH}/mysql/files/custom.cnf" /etc/mysql/conf.d/custom.cnf
else
    cp -f "${MYSQL_CONF_FILE}" /etc/mysql/conf.d/custom.cnf
fi

service mysql start

mysql -u root --password="root" -e "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '' WITH GRANT OPTION;"