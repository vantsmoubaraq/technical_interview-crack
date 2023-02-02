#!/usr/bin/bash
sed -i 's/bind-address  = 127.0.0.1/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf
echo "server-id	= 2" >> /etc/mysql/mysql.conf.d/mysqld.cnf
echo "log_bin         = /var/log/mysql/mysql-bin.log" >> /etc/mysql/mysql.conf.d/mysqld.cnf
echo "binlog_do_db	= tyrell_corp" >>  /etc/mysql/mysql.conf.d/mysqld.cnf
echo "relay-log       = /var/log/mysql/mysql-relay-bin.log" >> /etc/mysql/mysql.conf.d/mysqld.cnf
sudo service mysql restart
echo "show slave status" | mysql -u root -p
