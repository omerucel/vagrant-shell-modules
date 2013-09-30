#! /bin/bash

yum --enablerepo=remi install -y php php-pear php-pecl-xdebug php-pecl-xhprof php-mysql php-pecl-mongo php-redis php-pecl-memcached php-xml php-gd php-mbstring php-mcrypt php-fpm

if [ ! -f /usr/local/bin/composer ]
then
	curl -sS https://getcomposer.org/installer | php
	mv composer.phar /usr/local/bin/composer
fi

if [ ! -L /etc/php-fpm.d/www.conf ]
then
	rm -f /etc/php-fpm.d/www.conf
	ln -s "${SHELL_SCRIPT_MODULE_PATH}/php54/files/www.conf" /etc/php-fpm.d/www.conf
fi

service php-fpm restart