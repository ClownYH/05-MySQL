CREATE USER 'login'@'%' IDENTIFIED BY 'login';

show databases;

USE mysql;

show tables;

select * from user;

CREATE DATABASE login;
show databases;
GRANT ALL PRIVILEGES ON login.* TO 'login'@'%';

show grants for 'login'@'%';

USE LOGIN;

DROP TABLE IF EXISTS USER CASCADE;

-- TBL_USER 테이블 생성
CREATE TABLE IF NOT EXISTS TBL_USER
(
    USER_NO    INT AUTO_INCREMENT COMMENT '사용자 번호',
    USER_ID    VARCHAR(30) NOT NULL COMMENT '사용자 아이디',
    USER_NAME  VARCHAR(30) COMMENT '사용자 이름',
    PASSWORD   VARCHAR(100) NOT NULL COMMENT '사용자 비밀번호',
    USER_ROLE  VARCHAR(50) NOT NULL COMMENT '사용자 권한',
    CONSTRAINT pk_category_code PRIMARY KEY (USER_NO)
    ) ENGINE=INNODB COMMENT '고객정보';

SHOW TABLES;

SELECT 
*
FROM 
tbl_user;