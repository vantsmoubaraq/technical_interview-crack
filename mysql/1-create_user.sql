-- create a user named holberton_user
-- To be run on both servers
-- How to run: cat 1-create_user.sql | mysql -u root -p

CREATE USER "holberton_user"@"localhost" IDENTIFIED BY "projectcorrection280hbtn";
GRANT REPLICATION CLIENT ON *.* TO "holberton_user"@"localhost";
