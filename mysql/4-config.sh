#!/usr/bin/bash

echo "server-id	= 1" >> /etc/mysql/mysql.conf.d/mysqld.cnf
echo "log_bin         = /var/log/mysql/mysql-bin.log" >> /etc/mysql/mysql.conf.d/mysqld.cnf
echo "binlog_do_db	= tyrell_corp" >>  /etc/mysql/mysql.conf.d/mysqld.cnf