DROP TABLE IF EXISTS yyc_user;
CREATE TABLE IF NOT EXISTS yyc_user(
	user_id PRIMARY KEY AUTO_INCREMENT,
	user_name NOT null,
	date_of_birth,
	gender,
	phone NOT NULL
)ENGINE = innodb;

DROP TABLE IF EXISTS address;
