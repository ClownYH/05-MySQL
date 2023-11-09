/* SET OPERATORS */

/* UNION */
SELECT
	menu_code, 
	menu_name,
	menu_price,
	category_code,
	orderable_status
FROM
	tbl_menu
WHERE
	category_code = 10
UNION # 쿼리를 합쳐줌, 중복된 값은 제외하고 출력한다.
SELECT 
	menu_code,
	menu_name,
	menu_price,
	category_code,
	orderable_status
FROM
	tbl_menu 
WHERE 
	menu_price < 9000;
	
-- union all
SELECT
	menu_code, 
	menu_name,
	menu_price,
	category_code,
	orderable_status
FROM
	tbl_menu
WHERE
	category_code = 10
UNION ALL # 중복 값을 제거하지 않고 합쳐서 출력
SELECT 
	menu_code,
	menu_name,
	menu_price,
	category_code,
	orderable_status
FROM
	tbl_menu 
WHERE 
	menu_price < 9000;
	
-- inner join에 subquery 사용하기
SELECT 
	a.menu_code,
	a.menu_name,
	a.menu_price,
	a.category_code,
	a.orderable_status
FROM
	tbl_menu a # 순서상 먼저 참조해서 만드는 것이지만 조회는 아직 하지 않았기 때문에 join의 서브쿼리에 집어넣어서 값을 구할 수 없다.
JOIN
	(SELECT
		menu_code,
		menu_price,
		category_code,
		orderable_status
	FROM
		tbl_menu
	WHERE
		menu_price < 9000) AS b ON (a.menu_code = b.menu_code)
WHERE 
	a.category_code = 10;
	
SELECT 
	a.menu_code,
	a.menu_name,
	a.menu_price,
	a.category_code,
	a.orderable_status
FROM 
tbl_menu a
LEFT JOIN 
	(SELECT 
		menu_code,
		menu_name,
		menu_price,
		category_code,
		orderable_status
	FROM
		tbl_menu
	WHERE	
		menu_price < 9000) AS b ON (a.menu_code = b.menu_code)
WHERE
	a.category_code = 10
	AND 
	b.menu_code IS NULL;