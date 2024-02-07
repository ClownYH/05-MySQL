CREATE USER 'guro';

USE mysql;

SHOW tables;

SELECT * FROM user;

CREATE DATABASE gurodb;

SHOW DATABASES;

GRANT ALL PRIVILEGES ON gurodb.* TO 'guro'@'%'; -- guro에서 gurodb 모든 권한 부여

SHOW grants FOR 'guro'@'%';