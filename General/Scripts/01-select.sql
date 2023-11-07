-- sql의 기본 select 구문
SELECT MENU_NAME FROM TBL_MENU;
# 구분을 위해 데이터베이스는 대문자로 작성한다.일종의 약속이다.

-- 포매팅을 통해 보기 좋은 형태로 출력함
SELECT  
	MENU_CODE,
	MENU_NAME,
	MENU_PRICE
	FROM TBL_MENU;

-- CODE, 이름, 가격, STATUS(상태), 카테고리를 조회해주세요.

SELECT menu_code, menu_name, menu_price, orderable_status , category_code from TBL_MENU;

-- *을 사용하여 모든 콜룸을 조회함
SELECT * FROM TBL_MENU; -- *은 웬만하면 안 쓰는 게 좋다

-- 연산을 바로 실행함
SELECT 6 + 3;

SELECT 6 * 3;

-- 내장 함수를 사용함
SELECT NOW(); -- 현재 날짜 및 시간

SELECT CONCAT('홍', '   ', '길동'); -- 내장 메소드, concat()은 문자 합치기, from이 없다면 가상의 테이블을 만들어 생성

SELECT CONCAT('홍', ' ', '길동') AS 'NAME'; -- as 별칭 : columns을 별칭으로 만들어 붙인다.

