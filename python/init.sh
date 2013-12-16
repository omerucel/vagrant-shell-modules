#! /bin/bash

yum -y groupinstall "Development tools" 
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel

if [ ! -f /usr/local/bin/python2.7 ]
then
	wget http://python.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2
	tar xf Python-2.7.3.tar.bz2
	cd Python-2.7.3
	./configure --prefix=/usr/local
	make && make altinstall
fi

if [ ! -f /usr/local/bin/python3.3 ]
then
	wget http://python.org/ftp/python/3.3.0/Python-3.3.0.tar.bz2
	tar xf Python-3.3.0.tar.bz2
	cd Python-3.3.0
	./configure --prefix=/usr/local
	make && make altinstall
fi

if [ ! -f /usr/local/bin/easy_install-2.7 ]
then
	wget --no-check-certificate https://pypi.python.org/packages/source/d/distribute/distribute-0.6.49.tar.gz
	tar xf distribute-0.6.49.tar.gz
	cd distribute-0.6.49

	/usr/local/bin/python2.7 setup.py install
	/usr/local/bin/python3.3 setup.py install
fi

/usr/local/bin/easy_install-2.7 virtualenv
/usr/local/bin/easy_install-3.3 virtualenv

/usr/local/bin/easy_install-2.7 pip
/usr/local/bin/easy_install-3.3 pip

/usr/local/bin/virtualenv-2.7 --distribute /home/vagrant/vagrantenv
