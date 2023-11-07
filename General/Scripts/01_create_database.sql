SHOW DATABASES;
# 매 한줄마다 실행을 해줘야 작동함.(한줄 실행으로 테스트중)
CREATE USER 'menu'@'%' IDENTIFIED BY 'menu';
# 앞의 'menu'는 유저이름, 사이에 @, '%' : 접근 범위, %는 외부에서 접근할 수 있는 접근 허용 범위 중 가장 넓게 , 뒤의 'menu'는 비밀번호
SHOW DATABASES;

USE mysql;

SHOW TABLES;

SELECT * FROM USER;

CREATE DATABASE menudb;
SHOW DATABASES;
GRANT ALL PRIVILEGES ON menudb.* TO 'menu'@'%';

CREATE USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

SHOW GRANTS FOR 'menu'@'%';

USE menudb;

SHOW TABLES;