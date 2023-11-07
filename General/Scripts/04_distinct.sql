-- DISTNICT

-- 중복된 값을 제외함
SELECT
	category_code
FROM
	tbl_menu
ORDER BY category_code;

SELECT
	DISTINCT category_code
FROM
	tbl_menu
ORDER BY category_code;

SELECT
	count()(DISTINCT category_code)
FROM
	tbl_menu
ORDER BY category_code;

-- NULL값을 포함한 열의 DISTINCT
SELECT
	REF_category_code
FROM 
	tbl_category;
	
SELECT DISTINCT
	REF_category_code
FROM 
	tbl_category;
	
-- 열이 여러 개인 값의 중복 제거
SELECT DISTINCT
	category_code,
	orderable_status
FROM
	tbl_menu
ORDER BY
	category_code;
	
SELECT
	category_code,
	orderable_status
FROM
	tbl_menu
ORDER BY
	category_code;