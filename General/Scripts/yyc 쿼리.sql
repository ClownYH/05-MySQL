DROP TABLE IF EXISTS category;

CREATE TABLE IF NOT EXISTS category(
	category_no int AUTO_INCREMENT PRIMARY KEY,
	category_name varchar(255) NOT null
)ENGINE = innodb;

SELECT * FROM category;

INSERT INTO category 
VALUES
	(null, "식품"),
	(null, "화장품"),
	(null, "의류"),
	(null, "소모품"),
	(null, "가전제품"),
	(null, "전자제품"),
	(null, "완구");
	

DROP TABLE IF EXISTS item;

CREATE TABLE IF NOT EXISTS item(
	item_no int PRIMARY KEY AUTO_INCREMENT,
	item_name varchar(255),
	category_no int,
	user_no int,
	item_price int,
	sales_or_not varchar(8) CHECK(sales_or_not IN ('y','n')),
	rocket_or_not varchar(8)CHECK(rocket_or_not IN ('y','n')),
	FOREIGN key(category_no)
	REFERENCES category(category_no),
	FOREIGN key(user_no)
	REFERENCES user(user_no)
	)ENGINE = innodb;

ALTER TABLE item
ADD option_no int;

ALTER TABLE item
ADD FOREIGN KEY(option_no)
	REFERENCES item_option(option_no);

INSERT INTO item
VALUES
	(null,  "싸다싸 냉장고", 5, 46, 1300000, 'y',  'y', 3),
	(null,  "멧돼지 패딩", 3, 19, 231600, 'n',  'n', 3),
	(null,  "최신식 레트로 노트북", 6, 41, 121500, 'y',  'n', 3),
	(null,  "아이섀도크림", 2, 19, 19000, 'y',  'n', 3),
	(null,  "4인치 티비", 5, 10, 65000, 'n',  'n', 3),
	(null,  "피카츄 전지", 4, 19, 1000, 'y',  'n', 3),
	(null,  "오버이트 청소기", 5, 4, 340000, 'n',  'y', 3),
	(null,  "거적데기 청바지", 3, 11, 7900, 'n',  'n', 3),
	(null,  "오리통채튀김", 1, 46, 18600, 'y',  'n', 3),
	(null,  "아이와함께 드럼청소기", 6, 30, 480000, 'y',  'n', 3),
	(null,  "에이스로봇", 7, 32, 191400, 'y',  'n', 3),
	(null,  "뱀가죽 조끼", 3, 9, 113200, 'y',  'n', 3),
	(null,  "남편을 세탁기", 5, 19, 650000, 'y',  'n', 3),
	(null,  "립레드 보호액", 2, 32, 14600, 'y',  'n', 3),
	(null,  "텔레토비 갑옷", 3, 4, 70800, 'n',  'n', 3),
	(null,  "눈썹문신제조기", 2, 25, 17100, 'y',  'n', 3),
	(null,  "아동용 본드", 4, 6, 11300, 'y',  'n', 3),
	(null,  "메론맛 스킨", 2, 13, 5600, 'y',  'n', 3),
	(null,  "로봇 티비", 5, 41, 150800, 'y',  'n', 3),
	(null,  "애니악 계산기", 6, 2, 5000000, 'y',  'n', 3),
	(null,  "청소전문 머신", 5, 13, 183100, 'y',  'n', 3),
	(null,  "이컴퓨터는무료로해줍니다 피씨", 6, 48, 1325600, 'y',  'n', 3),
	(null,  "코딩된 와이셔츠", 3, 30, 119300, 'n',  'n', 3),
	(null,  "여아용 공구세트", 7, 46, 125000, 'y',  'n', 3),
	(null,  "통조림 세탁기", 5, 17, 464700, 'n',  'n', 3),
	(null,  "마시는 로션", 2, 30, 8800, 'y',  'n', 3),
	(null,  "돼지 김치", 1, 21, 9900, 'y',  'n', 3),
	(null,  "식기 파괴기", 5, 37, 218000, 'y',  'n', 3),
	(null,  "옥동자 스마트폰", 6, 19, 700000, 'y',  'y', 3),
	(null,  "무민가죽 코트", 3, 13, 611400, 'n',  'n', 3),
	(null,  "햄스터 털 패딩 조끼", 3, 11, 6700, 'n',  'y', 3),
	(null,  "파프리카 볶음 가루 3kg", 1, 20, 10400, 'y',  'n', 3),
	(null,  "임파서블 시디 브레이커", 6, 14, 65100, 'y',  'y', 3);

UPDATE item
SET option_no = 1;
	
SELECT * FROM item;

SELECT * FROM USER;
DESCRIBE USER;

DROP TABLE IF EXISTS item_option;

CREATE TABLE IF NOT EXISTS item_option(
	option_no int PRIMARY KEY auto_increment,
	option_name varchar(255)
)ENGINE = innodb;

INSERT INTO item_option
VALUES
	(null, "기본"),
	(null, "1번"),
	(null, "2번");
	
SELECT * FROM item_option;

DROP TABLE IF exists inventory;

CREATE TABLE IF NOT exists inventory(
	item_no int,
	inventory_stock int,
	FOREIGN key(item_no)
	REFERENCES item(item_no)
)ENGINE = innodb;

INSERT INTO inventory
VALUES
	(1, 100),
	(2, 340),
	(3, 4000),
	(4, 2000),
	(5,22),
	(6, 2312),
	(7,123),
	(8, 6453),
	(9,2344),
	(10, 28),
	(11, 3345),
	(12, 342),
	(13, 8665),
	(14, 3439),
	(15, 4442),
	(16,775),
	(17,44),
	(18,222),
	(19,8744),
	(20, 48),
	(21,  997),
	(22, 55855),
	(23, 4445),
	(24, 544),
	(25, 6682),
	(26, 71),
		(27,2),
	(28,1121),
	(29,45),
	(30,6767),
	(31,998),
	(32,192),
	(33,892),
	(34,5882),
	(35,8484),
	(36,823),
	(37,543),
	(38,346),
	(39,992),
	(40,222),
	(41,1111),
	(42,12314),
	(43,866),
	(44,896),
	(45,5638),
	(46,991),
	(47,863),
	(48,75),
	(49,6),
	(50,11),
	(51,23),
	(52,4),
	(53,87),
	(54,94),
	(55,1112),
	(56,2223),
	(57,2828),
	(58,281),
	(59,448),
	(60,76),
	(61,69),
	(62,882),
	(63,975),
	(64,172),
	(65,85),
	(66,262),
	(67,8765),
	(68,7672),
	(69,117),
	(70,119),
	(71,112),
	(72,1541),
	(73,164),
	(74,123),
	(75,2344),
	(76,129),
	(77,111),
	(78,574),
	(79,338),
	(80,123),
	(81,32),
	(82,211),
	(83,86),
	(84,64),
	(85,76),
	(86,98),
	(87,87),
	(88,1),
	(89,21),
	(90,4),
	(91,6),
	(92,96),
	(93,23),
	(94,111),
	(95,22),
	(96,66),
	(97,78),
	(98,6),
	(99,110);

	SELECT * FROM item_option;

SELECT * FROM vip_grade  ;
SELECT * FROM address;
SELECT * FROM category ;
