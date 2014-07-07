#!/bin/bash

sudo apt-get -y install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://ftp.cc.uoc.gr/mirrors/mariadb/repo/5.5/ubuntu trusty main'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password P@ssw0rd'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password P@ssw0rd'
sudo apt-get update
sudo apt-get -y install mariadb-server
sudo sed -i.bak 's/^bind-address/#bind-address/g' /etc/mysql/my.cnf
mysql --user=root --password=P@ssw0rd -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'P@ssw0rd' WITH GRANT OPTION; FLUSH PRIVILEGES;" 

