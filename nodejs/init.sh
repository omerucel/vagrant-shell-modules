#! /bin/bash

if [ ! -f /usr/local/bin/node ]
then
	wget http://nodejs.org/dist/v0.10.19/node-v0.10.19-linux-x64.tar.gz
	tar -zxf node-v0.10.19-linux-x64.tar.gz
	ln -s /home/vagrant/node-v0.10.19-linux-x64/bin/node /usr/local/bin/node
	ln -s /home/vagrant/node-v0.10.19-linux-x64/bin/npm /usr/local/bin/npm
fi