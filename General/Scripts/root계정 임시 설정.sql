-- date 형이 0으로 추가가 안되는 것은 mysql 5.7 버전 이후 select @@Global.sql_mode 했을 때
-- 나온 결과 ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION
-- 에서 no_zero_date 때문이며 0으로 채워진 date 컬럼이 존재하면 안되기 때문이다.

-- root 계정으로 실행해야 한다.
SELECT @@GLOBAL.SQL_mode;
SET GLOBAL sql_mode = ''; # 위 문제를 해결하기 위해 수정하였으나 보통의 겨우 이렇게 전역설정을 손보는 것을 하지 않는다.(교육용)
# 보통 이런 권한은 어느 수준 이상의 개발자만 받는 것이기도 하고 담당하는 사람이 따로 있는 경우가 많다.