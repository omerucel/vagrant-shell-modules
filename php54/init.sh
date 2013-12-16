#! /bin/bash

yum --enablerepo=remi install -y php php-pear php-xml php-gd php-mbstring php-mcrypt

if [ ! -f /usr/local/bin/composer ]
then
	curl -sS https://getcomposer.org/installer | php
	mv composer.phar /usr/local/bin/composer
fi