SHOW DATABASES;

create user guro@'%' identified by 'guro'; # '%' : 접근권한을 전체로 설정, 따옴표 안에 설정하는 것에 따라 어디에 접근할 수 있는지를 설정

create database employee;

grant all privileges on employee.* to guro@'%';

show grants for guro@'%';