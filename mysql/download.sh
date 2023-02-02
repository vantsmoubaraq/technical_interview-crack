#!/usr/bin/bash

echo "CREATE DATABASE db;" | mysql -u root -p
sudo mysql -u root db < ~/backup.sql -p
