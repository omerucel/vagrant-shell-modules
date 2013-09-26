#! /bin/bash

rpm -qa | grep -q httpd || yum --enablerepo=remi install -y httpd

chkconfig httpd off

if [ ! -f /etc/httpd/conf.d/vhosts.conf ]
then
	ln -s /vagrant/vagrant/modules/httpd/files/vhosts.conf /etc/httpd/conf.d/vhosts.conf
fi

if [ -f /etc/httpd/conf.d/welcome.conf ]
then
	rm -f /etc/httpd/conf.d/welcome.conf
fi

service httpd restart