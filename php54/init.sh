#! /bin/bash

yum --enablerepo=remi install -y php php-pear php-pecl-xdebug php-pecl-xhprof php-mysql php-pecl-mongo php-redis php-pecl-memcached php-xml

if [ ! -f /usr/local/bin/composer ]
then
	curl -sS https://getcomposer.org/installer | php
	mv composer.phar /usr/local/bin/composer
fi