#! /bin/bash

yum install -y java-1.6.0-openjdk
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
yum install -y jenkins
service jenkins restart

if [ ! -d /opt/ant ]
then
    wget http://www.eu.apache.org/dist//ant/binaries/apache-ant-1.9.2-bin.tar.gz
    tar -zxf apache-ant-1.9.2-bin.tar.gz -C /opt
    ln -s /opt/apache-ant-1.9.2 /opt/ant

    echo ANT_HOME=/opt/ant >> /home/vagrant/.bashrc
    ln -s /opt/ant/bin/ant /usr/bin/ant
fi

wget http://localhost:8080/jnlpJars/jenkins-cli.jar

java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin checkstyle cloverphp dry htmlpublisher jdepend plot pmd violations xunit
java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart

curl https://raw.github.com/sebastianbergmann/php-jenkins-template/master/config.xml | java -jar jenkins-cli.jar -s http://localhost:8080 create-job php-template
java -jar jenkins-cli.jar -s http://localhost:8080 reload-configuration