-- 각 지역별 베스트 셀러의 이름과 그 물건을 출력하시오.

-- 지역 구분
DROP VIEW legion;
CREATE VIEW legion as
SELECT 
	ui.user_no AS user_no,
	ui.user_name AS user_name,
	substring(ad.normal_address,1,2) AS legion
FROM
	user_id AS ui
JOIN
	address AS ad ON ad.user_no = ui.user_no;

SELECT * FROM legion;

-- 상품의 판매자와 옵션별 가격
DROP VIEW product;
CREATE VIEW product AS 
SELECT 
	item.item_no,
	oi.option_no,
	item.user_no,
	item.item_name,
	oi.option_name,
	item.item_price + oi.add_cost AS price
FROM
	item AS item
JOIN
	item_option_and_inventory AS oi ON item.item_no = oi.item_no;

SELECT * FROM product ;

-- 최대 판매자
DROP VIEW bestseller;
CREATE VIEW bestseller as
SELECT 
	product.user_no AS user_no,
	legion.user_name AS user_name,
	sum(do.item_quantity * product.price) AS sales
FROM
	detailed_order as do
JOIN 
	product AS product ON product.item_no = do.item_no 
JOIN
	legion AS legion ON legion.user_no = product.user_no
GROUP BY 
	product.user_no
ORDER BY
	product.user_no;

SELECT * FROM bestseller;

-- 내 답
SELECT
	le.legion,
	bs.user_no,
	le.user_name,
	bs.sales
FROM
	bestseller AS bs
JOIN
	legion AS le ON bs.user_no = le.user_no
ORDER BY 
	le.legion ASC,
	bs.sales desc;


-- 강사님 답
SELECT
	le.legion,
	bs.user_no,
	le.user_name,
	bs.sales
FROM
	bestseller AS bs
JOIN
	legion AS le ON bs.user_no = le.user_no
WHERE bs.sales = (
			  SELECT 
					max(b.sales)
				FROM
					bestseller AS b
				JOIN
					legion AS l ON b.user_no = l.user_no
				WHERE l.legion = le.legion)	
ORDER BY 
	le.legion ASC,
	bs.sales desc;
		
-- 강사님 보충 해설	
SELECT 
	max(b.sales)
FROM
	bestseller AS b
JOIN
	legion AS l ON b.user_no = l.user_no
WHERE l.legion = "광주";

-- 챗선생의 답
WITH RankedBestsellers AS (
    SELECT
        le.legion,
        bs.user_no,
        le.user_name,
        bs.sales,
        RANK() OVER (PARTITION BY le.legion ORDER BY bs.sales DESC) AS sales_rank
    FROM
        bestseller AS bs
    JOIN
        legion AS le ON bs.user_no = le.user_no
)
SELECT
    legion,
    user_no,
    user_name,
    sales
FROM
    RankedBestsellers
WHERE
    sales_rank = 1
ORDER BY
    legion ASC;