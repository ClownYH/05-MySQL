-- 정렬 기능 알아보기
-- ORDER BY

-- 내림차순 정렬은 DESC
SELECT
	*
  FROM TBL_MENU
 ORDER BY MENU_CODE DESC; # DESC는 역순, ASC는 오름차순(default값)
 
 -- 오름차순 정렬 기본 값은 ASC
 SELECT 
 	*
  FROM TBL_MENU
 ORDER BY MENU_CODE;
 	
-- ORDER BY 절을 사용하여 결과 집합을 여러 열로 정렬
SELECT 
	menu_code,
	menu_name,
	menu_price
  FROM TBL_MENU
 ORDER BY
  MENU_PRICE DESC, # 기본정렬은 내림차순으로 하되,
  menu_code ASC; # 동일한 price에서는 오름차순으로
  
  -- 연산 결과로 결과 집합 정렬
  -- 아래의 결과는 두 번 연산이 진행되는 것으로 판단됨
  -- 데이터의 값이 증가할수록 성능이 저하된다.
  SELECT 
  	 menu_code,
  	 menu_price,
  	 menu_code * menu_price
 FROM TBL_MENU
   ORDER BY
   MENU_PRICE * MENU_CODE;
  
  -- 위의 연산의 경우 다음과 같이 사용하는 것이 좋다.
    SELECT 
  	 menu_code,
  	 menu_price,
  	 (menu_code * menu_price) AS '메뉴코드와 가격을 곱함'
	FROM TBL_MENU
   ORDER BY
   '메뉴코드와 가격을 곱함';
	
  SELECT FIELD('A', 'A', 'B', 'C');
  SELECT FIELD('B', 'A', 'B', 'C');
  
 SELECT 
 	MENU_CODE,
 	MENU_NAME,
 	ORDERABLE_STATUS, 
 	FIELD(orderable_status, 'N', 'Y') # 오더러블 스테이터스의 값을 받아 N는 1로, Y는 2로 받고 있다.
  FROM TBL_MENU;
 
 SELECT
 	menu_name,
 	orderable_status,
 	FIELD(orderable_status, 'N', 'Y')
   FROM TBL_MENU 
  ORDER BY FIELD(ORDERABLE_STATUS, 'N', 'Y') DESC; 
  
 -- null
 -- 오름차순 시 null 처음으로(default)
 SELECT 
 	category_code,
 	category_name,
 	ref_category_code
   FROM TBL_CATEGORY 
  ORDER BY
  	REF_CATEGORY_CODE;
  
  -- 역순으로 정렬시
  -- DESC
   SELECT 
 	category_code,
 	category_name,
 	ref_category_code
   FROM TBL_CATEGORY 
  ORDER BY
  	REF_CATEGORY_CODE DESC;
  
  -- 오름차순 시 마지막으로 정렬
   SELECT 
 	category_code,
 	category_name,
 	ref_category_code
   FROM TBL_CATEGORY 
  ORDER BY
  	REF_CATEGORY_CODE IS NULL;
  
  -- 내림차순 시 처음으로 정렬
   SELECT 
 	category_code,
 	category_name,
 	ref_category_code
   FROM TBL_CATEGORY 
  ORDER BY
  	REF_CATEGORY_CODE IS NULL DESC;
 	
 	
 	
 	
 	
 
 