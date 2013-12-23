#! /bin/bash

apt-get -y install python-pip python-virtualenv unzip gcc python-dev libmysqlclient-dev
virtualenv --distribute /home/vagrant/pythonproject
chown -R vagrant:vagrant /home/vagrant/pythonproject