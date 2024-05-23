-- 고객 테이블을 조회하시오
SELECT * from 고객;

--  field7의 데이터가 null 인것만 전체 데이터 추출
SELECT * from 고객 where field7 is NULL;

--  field1이 EENQU 인 데이터의 field5를 추출
SELECT field5 from 고객 where field1 = 'EENQU';

--  마일리지가 10000이상인 사람을 조회하고 마일리지 컬럼을 '마일리지총합'이라고 변경하여 추출
-- 할 때 테이블 field9 int로 바꿔야함
select field2, field9 as '마일리지총합' from 고객 where field9 >= 10000;

--  임의의 행 데이터를 추가.
SELECT *, NULL as '임의의 행'  from 고객;

--  field2의 중복되는 데이터가 2개 이상인 데이터를 추출
SELECT field2, count(field2) from 고객
GROUP by field2 HAVING count(field2) >1 ;