-- create database tyrell_corp
-- To be run exclusively on master, web-01
-- How to run: cat 2-create_db.sql | mysql -u root -p

CREATE DATABASE IF NOT EXISTS tyrell_corp;
USE tyrell_corp;
CREATE TABLE IF NOT EXISTS nexus6 (
        id INT,
        name VARCHAR(256)
);
INSERT INTO nexus6 (id, name) VALUES (1, "Leon");
GRANT SELECT ON tyrell_corp.nexus6 TO "holberton_user"@"localhost";
FLUSH PRIVILEGES;
