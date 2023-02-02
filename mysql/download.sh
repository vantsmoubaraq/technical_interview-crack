#!/usr/bin/bash
#script restores backup on web-02

echo "CREATE DATABASE db;" | mysql -u root -p
sudo mysql -u root db < ~/backup.sql -p
