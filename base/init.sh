#! /bin/bash

sed -i "s|enabled=1|enabled=0|" /etc/yum/pluginconf.d/fastestmirror.conf
/etc/init.d/iptables stop
chkconfig iptables off