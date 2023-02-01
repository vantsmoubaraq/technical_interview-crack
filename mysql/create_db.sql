-- create database tyrell_corp

CREATE DATABASE tyrell_corp;
CREATE TABLE nexus6 (
	id INT,
	name VARCHAR(256)
);
GRANT SELECT ON tyrell_corp.nexus6 TO "holberton_user"@"localhost";
FLUSH PRIVILEGES;
