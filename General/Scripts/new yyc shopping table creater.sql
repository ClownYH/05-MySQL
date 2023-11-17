DROP TABLE IF EXISTS yyc_user;
CREATE TABLE IF NOT EXISTS yyc_user(
	user_no int PRIMARY KEY AUTO_INCREMENT,
	user_name varchar(255) NOT null,
	date_of_birth Date,
	gender varchar(3),
	contact_no int NOT null,
	membership_no int NOT null,
	FOREIGN KEY (membership_no)
	REFERENCES membership(membership_no)
)ENGINE = innodb;

DROP TABLE IF EXISTS user_address;
CREATE TABLE IF NOT EXISTS user_address(
	address_no int PRIMARY KEY AUTO_INCREMENT,
	user_no int NOT null,
	post_no int NOT NULL,
	city varchar(255) NOT NULL,
	address_1 varchar(255) NOT NULL,
	address_2 varchar(255) NOT NULL,
	address_3 varchar(255) NOT NULL,
	FOREIGN KEY (user_no)
	REFERENCES yyc_user(user_no)
)ENGINE = innodb;

DROP TABLE IF EXISTS membership;
CREATE TABLE IF NOT EXISTS membership(
	membership_no int PRIMARY KEY AUTO_INCREMENT NOT null,
	membership_name varchar(8) NOT NULL,
	START_date date NOT NULL,
	end_date date NOT NULL
)ENGINE = innodb;
