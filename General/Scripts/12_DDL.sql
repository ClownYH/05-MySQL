/* DDL(Data Definition Language) */

/* create */
-- 테이블을 생성하기 위한 구문
-- if not Exists를 적용하면 기존에 존재하는 테이블이라도 에러가 발생하지 않는다.

-- 테이블의 컬럼 설정
-- column_name data_type(length)
-- [not null] [default value] [auto_increment] column_constraint;

-- 테이블 생성
CREATE TABLE IF NOT EXISTS tb1 (
	pk INT PRIMARY KEY,
	fk int,
	col1 varchar(255),
	check(col1 IN ('Y', 'N')) # col1에 들어갈 수 있는 거 제약
) ENGINE = INNODB;

DESCRIBE tb1;
INSERT INTO tb1 values(3, "10", 'Y');

SELECT * FROM tb1;

/* Auto_Increment */
-- insert 시 primary 키에 해당하는 컬럼에 자동으로 번호를 발생(중복되지 않게) 시켜 저장할 수 있다.

