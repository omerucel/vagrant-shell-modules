#! /bin/bash

yum -y groupinstall "Development tools" 
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel

wget http://python.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2
tar xf Python-2.7.3.tar.bz2
cd Python-2.7.3
./configure --prefix=/usr/local
make && make altinstall

wget http://python.org/ftp/python/3.3.0/Python-3.3.0.tar.bz2
tar xf Python-3.3.0.tar.bz2
cd Python-3.3.0
./configure --prefix=/usr/local
make && make altinstall

wget http://pypi.python.org/packages/source/d/distribute/distribute-0.6.35.tar.gz
tar xf distribute-0.6.35.tar.gz
cd distribute-0.6.35

python2.7 setup.py install
python3.3 setup.py install

easy_install-2.7 virtualenv
easy_install-3.3 virtualenv