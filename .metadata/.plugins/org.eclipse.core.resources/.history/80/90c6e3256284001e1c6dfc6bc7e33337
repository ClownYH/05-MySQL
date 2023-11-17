DROP TABLE IF EXISTS yyc_user;
CREATE TABLE IF NOT EXISTS yyc_user(
	user_no int PRIMARY KEY AUTO_INCREMENT,
	user_name varchar(255),
	date_of_birth Date,
	gender varchar(3),
	contact_no int,
	membership_no int,
	FOREIGN KEY membership_no
	REFERENCES membership(membership_no)
);



