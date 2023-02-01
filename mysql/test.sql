--create test db

CREATE DATABASE IF NOT EXISTS test;
USE test;
CREATE TABLE technical_interview_crack (id INT, name VARCHAR(128), age INT);
INSERT INTO technical_interview_crack (id, name, age) VALUES (1, "Hamed Ashraf", 24);
