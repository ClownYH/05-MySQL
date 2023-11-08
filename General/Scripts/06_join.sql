/* join */

SELECT 
	tm.menu_code,
	tm.menu_name,
	tm.menu_price,
	tc.category_name
FROM
	tbl_menu tm
JOIN 
	tbl_category tc ON (tm.category_code = tc.category_code)
WHERE orderable_status = 'y';

# Left JOIN과 Inner JOIN, Right JOIN은 철저히 다른 존재이다.(동일한 형태로 출력될 수 있지만, 동일하게 적용되는 값을 서로 가지고 있어서 그런 것뿐 철저히 다르다. 기본 JOIN은 Inner JOIN이다.)

-- inner join
-- on은 테이블 간의 연결할 조건을 의미한다.
-- where은 조회된 결과에서 필터링할 조건이다.
SELECT
	a.menu_name,
	b.category_name
FROM
	tbl_menu a # as는 생략할 수 있다.
-- INNER JOIN tbl_category b ON (a.category_code = b.category_code) 기본 조인은 사실 이런 형태이다.
JOIN
	tbl_category b ON (a.category_code = b.category_code); # FOREIGN KEY 조건
	
-- Right join
SELECT
	a.menu_name,
	b.category_name
FROM
	tbl_menu a
RIGHT JOIN tbl_category b ON a.category_code = b.category_code;

-- cross join
SELECT
	a.menu_name,
	b.category_name
FROM
	tbl_menu a
CROSS JOIN tbl_category b; # 왼쪽 테이블과 오른쪽 테이블에 있는 걸 전부 나열해서 출력, 성능상 이슈 때문에 잘 안씀

-- outer join
SELECT 
	a.menu_name,
	b.category_name
FROM	
	tbl_menu a
RIGHT JOIN tbl_category b ON (a.category_code = b.category_code)
WHERE a.menu_code  IS NULL;

-- self join(문법상 문제는 없지만, 직접 제공되는 것은 아니다. 생각보다 종종 쓰임.)
SELECT
	b.category_code AS 'b의 카테고리 코드',
	a.category_code AS 'a의 카테고리 코드', 
	a.category_name,
	b.category_name 
FROM
	tbl_category a
JOIN
	tbl_category b ON (a.category_code = b.ref_category_code)
	
SELECT * FROM tbl_category ;