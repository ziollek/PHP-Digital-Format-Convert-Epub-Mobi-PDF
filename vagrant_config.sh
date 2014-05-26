#!/bin/bash
apt-get update -qq

#synchronizacja czasu
ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime

apt-get -y install curl git vim
apt-get -y install apache2 php5 libapache2-mod-php5
debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password ikw6W.9hy9vIU'
debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password ikw6W.9hy9vIU'
apt-get -y install php5-mysql mysql-server-5.5
DEBIAN_FRONTEND=noninteractive apt-get -y install phpmyadmin

#apache
ln -s /home/vagrant/publicator/config/publicator.conf /etc/apache2/sites-enabled/020-publicator.dev
ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf.d/phpmyadmin.conf

apt-get -y install php5-cli php5-curl php5-tidy php5-xsl python-software-properties python

exit 0