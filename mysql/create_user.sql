-- create a user named holberton_user

CREATE USER "holberton_user"@"localhost" IDENTIFIED BY "projectcorrection280hbtn";
GRANT REPLICATION CLIENT ON *.* TO "holberton_user"@"localhost";
