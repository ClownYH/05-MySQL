SHOW DATABASES;

CREATE USER 'stocklog'@'%' IDENTIFIED BY 'stocklog';

SHOW DATABASES;



USE mysql;

SHOW TABLES;

CREATE DATABASE stocklog;


GRANT ALL PRIVILEGES ON stocklog.* TO 'stocklog'@'%';

SHOW GRANTS FOR 'stocklog'@'%';

USE stocklog;

SHOW TABLES;