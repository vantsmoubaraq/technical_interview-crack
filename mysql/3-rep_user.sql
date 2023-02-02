-- create replica user
-- change the password to one of your preference in line 5
-- Run exclusively on master, web-01
-- How to run: cat 3-rep_user.sql | mysql -u root -p

CREATE USER "replica_user"@"%" IDENTIFIED BY "password";
GRANT REPLICATION SLAVE ON *.* TO "replica_user"@"%";
GRANT SELECT ON mysql.user TO "holberton_user"@"localhost";
FLUSH PRIVILEGES;
