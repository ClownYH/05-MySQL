DROP TABLE IF EXISTS category;

CREATE TABLE IF NOT EXISTS category(
	category_no int AUTO_INCREMENT PRIMARY KEY,
	category_name varchar(255) NOT null
)ENGINE = innodb;

INSERT INTO category 
VALUES
	(null, "식품"),
	(null, "화장품"),
	(null, "의류"),
	(null, "소모품"),
	(null, "가전제품"),
	(null, "전자제품"),
	(null, "완구");

SELECT * FROM category;	

DROP TABLE IF EXISTS item;

CREATE TABLE IF NOT EXISTS item(
	item_no int PRIMARY KEY AUTO_INCREMENT,
	item_name varchar(255) NOT null,
	category_no int NOT null,
	user_no int NOT null,
	item_price int NOT null,
	sales_or_not varchar(8) CHECK(sales_or_not IN ('y','n')) NOT null,
	rocket_or_not varchar(8)CHECK(rocket_or_not IN ('y','n')) NOT null,
	FOREIGN key(category_no)
	REFERENCES category(category_no),
	FOREIGN key(user_no)
	REFERENCES user(user_no)
	)ENGINE = innodb;

INSERT INTO item
VALUES
	(null,  "싸다싸 냉장고", 5, 46, 1300000, 'y',  'y'),
	(null,  "멧돼지 패딩", 3, 19, 231600, 'n',  'n'),
	(null,  "최신식 레트로 노트북", 6, 41, 121500, 'y',  'n'),
	(null,  "아이섀도크림", 2, 19, 19000, 'y',  'n'),
	(null,  "4인치 티비", 5, 10, 65000, 'n',  'n'),
	(null,  "피카츄 전지", 4, 19, 1000, 'y',  'n'),
	(null,  "오버이트 청소기", 5, 4, 340000, 'n',  'y'),
	(null,  "거적데기 청바지", 3, 11, 7900, 'n',  'n'),
	(null,  "오리통채튀김 1kg", 1, 46, 18600, 'y',  'n'),
	(null,  "아이와함께 드럼청소기", 6, 30, 480000, 'y',  'n'),
	(null,  "에이스로봇", 7, 32, 191400, 'y',  'n'),
	(null,  "뱀가죽 조끼", 3, 9, 113200, 'y',  'n'),
	(null,  "남편을 세탁기", 5, 19, 650000, 'y',  'n'),
	(null,  "립레드 보호액 100g", 2, 32, 14600, 'y',  'n'),
	(null,  "텔레토비 판금갑옷", 3, 4, 70800, 'n',  'n'),
	(null,  "눈썹문신제조기", 2, 25, 17100, 'y',  'n'),
	(null,  "아동용 본드", 4, 6, 11300, 'y',  'n'),
	(null,  "메론맛 스킨", 2, 13, 5600, 'y',  'n'),
	(null,  "로봇 티비", 5, 41, 150800, 'y',  'n'),
	(null,  "애니악 계산기", 6, 2, 5000000, 'y',  'n'),
	(null,  "청소전문 머신", 5, 13, 183100, 'y',  'n'),
	(null,  "이컴퓨터는무료로해줍니다 피씨", 6, 48, 1325600, 'y',  'n'),
	(null,  "코딩된 와이셔츠", 3, 30, 119300, 'n',  'n'),
	(null,  "여아용 공구세트", 7, 46, 125000, 'y',  'n'),
	(null,  "통조림 세탁기", 5, 17, 464700, 'n',  'n'),
	(null,  "마시는 로션 200g", 2, 30, 8800, 'y',  'n'),
	(null,  "돼지 김치 500g", 1, 21, 9900, 'y',  'n'),
	(null,  "식기 파괴기", 5, 37, 218000, 'y',  'n'),
	(null,  "옥동자 스마트폰", 6, 19, 700000, 'y',  'y'),
	(null,  "무민가죽 코트", 3, 13, 611400, 'n',  'n'),
	(null,  "햄스터 털 패딩 조끼", 3, 11, 6700, 'n',  'y'),
	(null,  "파프리카 볶음 가루 3kg", 1, 20, 10400, 'y',  'n'),
	(null,  "임파서블 시디 브레이커", 6, 14, 65100, 'y',  'y');

SELECT * FROM item;

DROP TABLE IF EXISTS item_option;

CREATE TABLE IF NOT EXISTS item_option(
	item_no int NOT null,
	option_name varchar(255) NOT null,
	add_cost int,
	FOREIGN KEY(item_no)
	REFERENCES item(item_no)
)ENGINE = innodb;

INSERT INTO item_option
VALUES
	(1, "냉장실만 제공"),
	(1, "냉동실 포함"),
	(1, "온장고 포함"),
	(1, "저전력 모드 설치"),
	(2, "기본"),
	(2, "돼지털 2배 함유"),
	(3, "OS 미포함"),
	(3, "서비스 보증 1년, OS 미포함"),
	(3, "서비스 보증 5년, OS 포함"),
	(4, "딸기맛"),
	(4, "포도맛"),
	(5, "10개 세트 추가 증정"),
	(6, "기본"),
	(7, "레드 거적데기"),
	(7, "파란 거적데기"),
	(7, "검정 거적데기"),
	(7, "하얀 거적데기"),
	(12, "백사 컬렉션"),
	(12, "살모사 컬렉션"),
	(12, "구렁이 컬렉션"),
	(14, "박카스 맛"),
	(14, "파스 맛"),
	(14, "홍삼 맛"),
	(19, "20인치"),
	(19, "25인치"),
	(19, "30인치"),
	(20, "1버전"),
	(20, "2버전"),
	(20, "3버전"),
	(20, "4버전"),
	(22, "아랍 OS버전"),
	(22, "중앙아시아 OS버전"),
	(24, "5세용"),
	(24, "9세용"),
	(24, "13세용"),
	(24, "17세용"),
	(31, "골든 햄스터털"),
	(31, "미니 햄스터털");
	
SELECT * FROM item_option;

DROP TABLE IF exists inventory;

CREATE TABLE IF NOT exists inventory(
	item_no int NOT null,
	inventory_stock int NOT null,
	FOREIGN key(item_no)
	REFERENCES item(item_no)
)ENGINE = innodb;

INSERT INTO inventory
VALUES
	(1, 100),
	(2, 34),
	(3, 400),
	(4, 208),
	(5,22),
	(6, 232),
	(7,13),
	(8, 653),
	(9,24),
	(10, 28),
	(11, 345),
	(12, 34),
	(13, 865),
	(14, 339),
	(15, 42),
	(16,77),
	(17,44),
	(18,222),
	(19,84),
	(20, 48),
	(21, 7),
	(22, 55),
	(23, 5),
	(24, 54),
	(25, 662),
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
	(40,2),
	(41,111),
	(42,14),
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
	(55,11),
	(56,23),
	(57,288),
	(58,28),
	(59,448),
	(60,76),
	(61,69),
	(62,882),
	(63,975),
	(64,172),
	(65,85),
	(66,262),
	(67,85),
	(68,76),
	(69,117),
	(70,119),
	(71,112),
	(72,1541),
	(73,164),
	(74,123),
	(75,34),
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
	(99,10);

SELECT * FROM inventory;

CREATE TABLE wish_list(
	user_no int NOT null,
	item_no int NOT null,
	FOREIGN KEY(user_no)
	REFERENCES user(user_no),
	FOREIGN KEY(item_no)
	REFERENCES item(item_no)
)engine = innodb;
