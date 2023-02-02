#!/usr/bin/bash
#Ensure that you a have a backup created on the master, web-01, create an ssh key pair #on web-01 and paste the public key on web-02 ~/.ssh/authorized_keys and use use the "scp" command, to transfer back up to the slave...
#How scp works: scp backup.sql ubuntu@web2-ip:~/  specify private key if necessary
#script below then restores backup on web-02, and kicks off replication

echo "CREATE DATABASE db;" | mysql -u root -p
sudo mysql -u root db < ~/backup.sql -p
