/* where */

SELECT
	menu_code,
	menu_name,
	menu_price,
	orderable_status
  FROM TBL_MENU
 WHERE ORDERABLE_STATUS = 'Y'; # 데이터베이스에는 '='이 대입이 아니다.(자바에서의 '==' 기능)
 
-- 값이 같은 상태를 조회하는 방법
SELECT
	menu_name,
	menu_price,
	orderable_status
  FROM TBL_MENU
 WHERE MENU_PRICE = 13000;
 
-- 같지 않은 상태를 조회하는 방법
SELECT
	menu_code,
	menu_name,
	orderable_status
  FROM TBL_MENU
-- WHERE ORDERABLE_STATUS <> 'Y'; 이것도 가능
  WHERE ORDERABLE_STATUS != 'Y';
  
-- 가격이 20000원 이상인 메뉴를 조회해주세요
-- 코드, 이름, 가격을 보여주고 코드를 기준으로 내림차순으로 정렬해주세요
SELECT
 	menu_code,
 	menu_name,
 	menu_price
   FROM TBL_MENU
   WHERE MENU_PRICE >= 20000
   ORDER BY MENU_CODE DESC;
   
-- 가격이 5000원 이상이면서 판매중인 제품을 조회
-- 코드, 이름, 가격, 상태
SELECT
  	menu_code,
  	menu_name,
  	menu_price,
  	orderable_status
   FROM TBL_MENU
  WHERE MENU_PRICE >= 5000
    AND ORDERABLE_STATUS = 'Y'; # &&는 추후 미지원
    
-- 제품이 판매중이거나 또는 CATEGORY_CODE가 10인 목록 조회
-- 코드, 이름, 가격, 카테고리 코드, 상태
SELECT
  	menu_code,
  	menu_name,
  	menu_price,
  	category_code,
  	orderable_status
   FROM TBL_MENU
  WHERE ORDERABLE_STATUS = 'Y'
	 OR CATEGORY_CODE = 10
ORDER BY
		CATEGORY_CODE; # 동작 순서는 생각과 달리 1. FROM 2. WHERE 3. SELECT 4. ORDER BY 순이다. 한줄씩 조건을 비교해서 적재한다.

SELECT
	menu_code,
	menu_name,
	menu_price,
	category_code,
	orderable_status
  FROM TBL_MENU
 WHERE CATEGORY_CODE = 4
    OR MENU_PRICE = 9000
   AND MENU_CODE > 10;
   
-- 범위를 조회하는 경우
SELECT
	menu_code,
	menu_name,
	menu_price,
	category_code,
	orderable_status
  FROM TBL_MENU
 WHERE
 	MENU_PRICE >= 10000
   AND MENU_PRICE <= 25000
ORDER BY MENU_PRICE;

SELECT
	menu_name,
	menu_price,
	category_code
  FROM TBL_MENU
 WHERE MENU_PRICE BETWEEN 10000 AND 25000;
 
-- 범위에 해당하지 않는 목록 조회
SELECT
	menu_name,
	menu_price,
	category_code
  FROM TBL_MENU
 WHERE MENU_PRICE NOT BETWEEN 10000 AND 25000
ORDER BY MENU_PRICE DESC;

-- 값이 포함되어 있는지 확인하는 방법
SELECT
	menu_name,
	menu_price,
	category_code
  FROM TBL_MENU
 WHERE MENU_NAME LIKE '%마늘%' # 마늘이 포함된 것을 검색하는 것과 같다. %가 앞에만 있으면 OOO마늘, 뒤에만 있으면 마늘OOO 만 검색된다.
ORDER BY MENU_NAME;

-- 가격이 5000원 이상이고 카테고리 코드가 10인 녀석 중 갈치라는 이름이 포함된 메뉴를 조회해주세요
-- CODE, NAME, CATEGORY_CODE, PRICE
SELECT
	menu_code,
	menu_name,
	category_code,
	menu_price
  FROM TBL_MENU
 WHERE MENU_PRICE >= 5000
   AND CATEGORY_CODE = 10
   AND MENU_NAME LIKE '%갈치%';

-- like의 부정문을 알아본다.
  SELECT
	menu_code,
	menu_name,
	category_code,
	menu_price
  FROM TBL_MENU
 WHERE MENU_PRICE >= 5000
   AND CATEGORY_CODE = 10
   AND MENU_NAME NOT LIKE '%갈치%';
  
-- 카테고리 코드가 한식(4), 중식(5), 일식(6) 메뉴를 조회하자
SELECT
	menu_name,
	category_code
FROM
	tbl_menu
WHERE
	category_code = 4
	OR
	category_code = 5
	OR
	category_code = 6;

-- in()
SELECT
	menu_name,
	category_code
FROM
	tbl_menu
WHERE
	category_code IN (4, 5, 6);

-- 포함되지 않는 값을 조회
SELECT
	menu_name,
	category_code
FROM
	tbl_menu
WHERE
	category_code NOT IN (4, 5, 6);
  
-- null을 조회하기
SELECT
	category_code,
	category_name,
	ref_category_code
FROM
	tbl_category
WHERE ref_category_code IS NULL; # 데이터베이스는 null이 진짜 빈 걸로 친다. 그래서 ' = null'로는 검색되지 않는다.(자바에서는 null 또한 값으로 취급했다.)

-- null이 아닌 목록 조회
SELECT
	category_code,
	category_name,
	ref_category_code
FROM
	tbl_category
WHERE
	ref_category_code IS NOT NULL;
	
