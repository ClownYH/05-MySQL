SELECT
	*
FROM
	tbl_menu;
	
SELECT
	*
FROM
	tbl_category;
	
UPDATE tbl_menu
SET menu_name = '날고기',
	menu_price = 2000
WHERE menu_name = '고기'