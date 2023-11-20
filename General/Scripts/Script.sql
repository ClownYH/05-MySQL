DROP TABLE IF EXISTS yyc_user;
CREATE TABLE IF NOT EXISTS yyc_user(
   user_no int PRIMARY KEY AUTO_INCREMENT,
   user_loginId varchar(255) NOT NULL,
   user_password varchar(255) NOT NULL,
   user_nickname varchar(255) NOT NULL,
   user_name varchar(255) NOT NULL,
   date_of_birth date,
   gender varchar(5),
   contact_no varchar(255) NOT NULL,
   address_no int 
   )ENGINE = innodb;