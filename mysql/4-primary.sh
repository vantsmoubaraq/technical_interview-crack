#!/usr/bin/bash
sed -i 's/bind-address  = 127.0.0.1/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf
echo "server-id	= 1" >> /etc/mysql/mysql.conf.d/mysqld.cnf
echo "log_bin         = /var/log/mysql/mysql-bin.log" >> /etc/mysql/mysql.conf.d/mysqld.cnf
echo "binlog_do_db	= tyrell_corp" >>  /etc/mysql/mysql.conf.d/mysqld.cnf
sudo service mysql restart
sudo ufw allow 3306/tcp
echo "show master status" | mysql -u root -p
