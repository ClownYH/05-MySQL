-- 카테고리 테이블 삭제
DROP TABLE IF EXISTS category;

-- 카테고리 테이블 생성
CREATE TABLE IF NOT EXISTS category(
	category_no int AUTO_INCREMENT PRIMARY KEY,
	category_name varchar(255) NOT null
)ENGINE = innodb;

-- 카테고리 데이터 입력
INSERT INTO category 
VALUES
	(null, "식품"),
	(null, "화장품"),
	(null, "의류"),
	(null, "소모품"),
	(null, "가전제품"),
	(null, "전자제품"),
	(null, "완구");

-- 상품 테이블 삭제
DROP TABLE IF EXISTS item;

-- 상품 테이블 생성
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
	REFERENCES user_id(user_no)
	)ENGINE = innodb;

-- 상품 데이터 입력
INSERT INTO item
VALUES
	(null, "싸다싸 냉장고", 5, 46, 130000, 'y', 'y'),
	(NULL, "멧돼지 패딩", 3, 19, 231600, 'n', 'n'),
	(NULL, "최신식 레트로 노트북", 6, 41, 121500, 'y', 'n'),
	(NULL, "아이섀도크림", 2, 19, 19000, 'y', 'n'),
	(NULL, "4인치 티비", 5, 10, 65000, 'n', 'n'),
	(NULL, "피카츄 전지", 4, 19, 1100, 'y', 'n'),
	(NULL, "오버이트 청소기", 5, 4, 340000, 'n', 'y'),
	(NULL, "거적데기 청바지", 3, 11, 8000, 'n', 'n'),
	(NULL, "오리통채로튀김 1kg", 1, 46, 18200, 'y', 'n'),
	(NULL, "아이와 함께 드럼 청소기", 6, 30, 480000, 'y', 'y'),
	(null, "에이스 로봇", 7, 32, 191400, 'y', 'n'),
	(null, "뱀가죽 조끼", 3, 9, 201400, 'y', 'n'),
	(null, "남편을 넣고 세탁기", 5, 19, 650400, 'y', 'n'),
	(null, "립레드 보호액 50g", 2, 32, 19400, 'y', 'n'),
	(null, "텔레토비 판금 조끼", 3, 4, 70400, 'n', 'n'),
	(null, "눈썹문신조각기", 2, 24, 17400, 'y', 'n'),
	(null, "아동용 본드", 4, 6, 20400, 'y', 'y'),
	(null, "메론맛 스킨", 2, 13, 11400, 'y', 'n'),
	(null, "로봇 티비", 5, 41, 150400, 'y', 'n'),
	(null, "애니악 계산기", 6, 2, 704000, 'y', 'y'),
	(null, "청소전문머신", 5, 13, 170400, 'y', 'n'),
	(null, "이컴은무료로줍니다 피씨", 6, 48, 1700400, 'y', 'y'),
	(null, "코딩된 셔츠", 3, 30, 50400, 'n', 'n'),
	(null, "여아용 공구세트", 7, 4, 90400, 'y', 'n'),
	(null, "통조림 세탁기", 5, 17, 609500, 'y', 'n'),
	(null, "마시는 로션 200g", 2, 30, 8800, 'y', 'y'),
	(null, "돼지 김치찜 500g", 1, 21, 9900, 'y', 'n'),
	(null, "식기 파괴기", 3, 30, 764400, 'y', 'n'),
	(null, "옥동자 스마트폰", 6, 91, 999900, 'y', 'n'),
	(null, "무민가죽 코트", 3, 157, 374800, 'y', 'y'),
	(null, "햄스터털 패딩 조끼", 3, 221, 674140, 'y', 'n'),
	(null, "파프리카 볶음 가루 5kg", 1, 200, 15020, 'y', 'n'),
	(null, "얼음왕관 성채 블럭", 7, 147, 541000, 'y', 'n');

-- 옵션 및 재고 테이블 제거
DROP TABLE IF EXISTS item_option_and_inventory;

-- 옵션 및 재고 테이블 생성
CREATE TABLE IF NOT EXISTS item_option_and_inventory(
	item_no int NOT null,
	option_no varchar(8) PRIMARY KEY NOT null,
	option_name varchar(255) NOT null,
	add_cost int NOT NULL DEFAULT 0,
	stock int NOT NULL DEFAULT 0,
	FOREIGN KEY(item_no)
	REFERENCES item(item_no)
)ENGINE = innodb;

-- 상품 옵션 데이터 입력
INSERT INTO item_option_and_inventory
VALUES
	(1, "1-1", "온리 냉장실", 0, 100),
	(1, "1-2", "냉동실 포함", 100000, 70),
	(1, "1-3", "온장고 포함", 200000, 50),
	(1, "1-4", "스카이넷 인공지능 포함", 1000000, 20),
	(2, "2-1", "돼지털 1배", 0, 450),
	(2, "2-2", "돼지털 2배", 50000, 450),
	(2,"2-3", "돼지털 3배", 50000, 240),
	(3, "3-1", "윈도 95 버전 포함", 0, 152),
	(3, "3-2", "윈도 98 버전 포함", 10000, 62),
	(4, "4-1", "자두맛", 0, 2473),
	(4, "4-2", "메론맛", 0, 1473),
	(4, "4-3", "버터맛", 0, 2473),
	(5, "5-1", "구리 합금판", 0, 458),
	(5, "5-2", "강철 합금판", 40000, 441),
	(5, "5-3", "티타늄 합금판", 100000, 228),
	(6, "6-1", "10개 세트", 0, 2318),
	(6, "6-2", "20개 세트", 1900, 1218),
	(6, "6-3", "30개 세트 + 피카츄 꼬치 구이 증정", 2500, 1111),
	(7, "7-1", "기본 에디션", 0, 135),
	(7, "7-2", "완전판 에디션", 50000, 115),
	(8, "8-1", "삼베 거적데기", 0, 2643),
	(8, "8-2", "모시 거적데기", 0, 2643),
	(8, "8-3", "나일론 거적데기", 0, 2643),
	(8, "8-4", "합성섬유 거적데기", 5000, 2643),
	(9, "9-1", "소금과 설탕 소스 포함", 0, 85384),
	(10, "10-1", "아이굴려판", 0, 84),
	(10, "10-2", "가족굴려판", 100000, 34),
	(11, "11-1", "불주먹판", 0, 65),
	(11, "11-2", "에이스는 죽은거지판", 120000, 24),
	(12, "12-1", "백사 에디션", 0 , 354),
	(12, "12-2", "살모사 에디션", 0 , 354),
	(12, "12-3", "구렁이 에디션", 0 , 354),
	(12, "12-4", "코브라 에디션", 10000 , 354),
	(13, "13-1", "기본 에디션", 0, 231),
	(13, "13-2", "이혼장 에디션", 200000 , 174),
	(14, "14-1", "드래곤후르츠향", 0, 3461),
	(14, "14-2", "혈향", 5000, 4261),
	(14, "14-3", "포도주향", 5000, 2463),
	(15, "15-1", "보라돌이", 0, 432),
	(15, "15-2", "뚜비", 0, 232),
	(15, "15-3", "나나", 0, 414),
	(15, "15-4", "뽀", 0, 332),
	(16, "16-1", "기본", 0, 3747),
	(17, "17-1", "식용, 중독 주의", 0, 2345),
	(17, "17-2", "식용, 무중독", 2000, 1445),
	(18, "18-1", "먹지 마세요판", 0, 8653),
	(18, "18-2", "드세요판", 4000, 8653),
	(19, "19-1", "액션 로봇 버전", 0, 49),
	(19, "19-2", "미니 로봇 버전", 0, 49),
	(20, "20-1", "ver.1", 0, 20),
	(20, "20-2", "ver.2", 200000, 20),
	(20, "20-3", "ver.3", 500000, 20),
	(21, "21-1", "에이전트47 에디션", 0, 47),
	(21, "21-2", "리본 에디션", 40000, 49),
	(21, "21-3", "고르곤 에디션", 80000, 50),
	(22, "22-1", "아랍어 포함", 0, 214),
	(22, "22-2", "중앙아시어어 포함", 50000, 314),
	(23, "23-1", "프리 사이즈", 0, 743),
	(24, "24-1", "7세용", 0, 143),
	(24, "24-2", "초급자용", 50000, 101),
	(24, "24-3", "중급자용", 80000, 131),
	(24, "24-4", "전문가용", 100000, 47),
	(25, "25-1", "참치향 세제 사용", 0, 61),
	(25, "25-2", "연어향 세제 사용", 0, 47),
	(26, "26-1", "밤꽃향", 0, 3054),
	(26, "26-2", "벤젠향", 0, 2460),
	(26, "26-3", "나프탈렌향", 0, 1750),
	(27, "27-1", "기본", 0, 4576),
	(28, "28-1", "노말 파워 버전", 0, 125),
	(28, "28-2", "강력 파워 버전", 500000, 42),
	(28, "28-3", "초강력 파워 버전", 600000, 8),
	(29, "29-1", "기본 에디션", 0, 31),
	(29, "29-2", "기본 + 보증 1년", 20000, 11),
	(30, "30-1", "무민 생가죽 에디션", 0, 8982),
	(30, "30-2", "무민 무두질한 가죽 에디션", 0, 4989),
	(31, "31-1", "골든 햄스터 털", 0, 3415),
	(31, "31-2", "미니 햄스터 털", 0, 2119),
	(32, "32-1", "기본 + 1kg 증정", 0, 6381),
	(33, "33-1", "아서스 버전", 0, 547);
	
-- 위시 리스트 테이블 제거
DROP TABLE IF EXISTS wish_list;

-- 위시 리스트 테이블 생성
CREATE TABLE IF NOT exists wish_list(
	user_no int NOT null,
	item_no int NOT NULL,
	UNIQUE KEY unique_combination (user_no, item_no),
	FOREIGN KEY(user_no)
	REFERENCES user_id(user_no),
	FOREIGN KEY(item_no)
	REFERENCES item(item_no)
)engine = innodb;

-- 위시 리스트 데이터 추가
INSERT INTO wish_list
VALUES
	(,);

-- 판매자 테이블 제거
DROP TABLE IF EXISTS seller;

-- 판매자 테이블 생성
CREATE TABLE IF NOT EXISTS seller(
	seller_no int PRIMARY KEY AUTO_INCREMENT,
	user_no int NOT NULL,
	FOREIGN KEY(user_no)
	REFERENCES user_id(user_no)
)ENGINE = innodb;

INSERT INTO seller 
VALUES 
	(NULL, 2),
	(NULL, 4),
	(NULL, 6),
	(NULL, 9),
	(NULL, 10),
	(NULL, 11),
	(NULL, 13),
	(NULL, 17),
	(NULL, 19),
	(NULL, 21),
	(NULL, 24),
	(NULL, 30),
	(NULL, 32),
	(NULL, 41),
	(NULL, 46),
	(NULL, 48),
	(NULL, 91),
	(NULL, 147),
	(NULL, 157),
	(NULL, 200),
	(NULL, 221);
	
-- 추가 변경사항
-- 주소 테이블 not null 제약 조건 추가
ALTER TABLE address
MODIFY user_no int NOT NULL,
MODIFY normal_address varchar(255) NOT NULL,
MODIFY detail_address varchar(255) NOT NULL;

-- 옵션 테이블 추가 비용  not null 제약 조건 추가
ALTER TABLE item_option 
MODIFY add_cost int NOT NULL;

-- 옵션 테이블 추가 비용 기본값 추가
ALTER TABLE item_option 
ALTER COLUMN add_cost SET DEFAULT 0;

-- 재고 테이블 재고량 기본값 추가
ALTER TABLE inventory
ALTER COLUMN inventory_stock SET DEFAULT 0;

-- 상품 테이블 판매 여부/로켓 배송 여부 기본값 추가
ALTER TABLE item
ALTER COLUMN sales_or_not SET DEFAULT 'y',
ALTER COLUMN rocket_or_not SET DEFAULT 'n';

-- 멤버십 테이블 멤버십 상태 기본값 추가
ALTER TABLE membership 
ALTER COLUMN grade_no SET DEFAULT 1,
ALTER column membership_status SET DEFAULT 'n';

-- 데이터 값 수정
-- 옵션 데이터 값 수정
UPDATE item_option 
SET add_cost = 20000
WHERE option_name = "구렁이 컬렉션";

-- 테이블 데이터 및 속성 확인
SELECT * FROM address; # 주소
DESCRIBE address;
SELECT * FROM category; # 카테고리
DESCRIBE category;
SELECT * FROM item ORDER BY user_no; # 상품
DESCRIBE item;
SELECT * FROM item_option_and_inventory; # 옵션 및 재고
DESCRIBE item_option_and_inventory;
SELECT * FROM membership; # 멤버십
DESCRIBE membership;
SELECT * FROM order_id; # 주문
DESCRIBE order_id;
SELECT * FROM detailed_order; # 상세 주문
DESCRIBE detailed_order ;
SELECT * FROM USER_id; # 사용자
DESCRIBE USER_id;
SELECT * FROM vip_grade; # vip 등급
DESCRIBE vip_grade;
SELECT * FROM wish_list ORDER BY user_no; # 위시 리스트
DESCRIBE wish_list;
SELECT * FROM reply; # 댓글
DESCRIBE reply; 
SELECT * FROM seller; # 판매자
DESCRIBE seller;
