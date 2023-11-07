/* LIMIT */

SELECT
	menu_code,
	menu_name,
	menu_price
FROM
	tbl_menu
ORDER BY
	menu_price DESC;
	
SELECT
	menu_code,
	menu_name,
	menu_price
FROM
	tbl_menu
ORDER BY
	menu_code
LIMIT 1, 5; # LIMIT 앞자리가 시작할 인덱스, 뒷자리가 출력할 수

SELECT
	menu_code,
	menu_name,
	menu_price
FROM
	tbl_menu
ORDER BY
	menu_price DESC,
	menu_name ASC
LIMIT 5; # 조회 결과에서 5개만 출력