/*
SELECT * from 부서
CROSS JOIN 사원
WHERE 부서.부서번호 = 사원.부서번호 AND 이름 = '배재용';
-- 컬럼에 . 을 찍으면 테이블을 가져올 수 있음
*/

/*
NON ANSI SQL
SELECT * from 사원, 부서
where 사원.부서번호 = 부서.부서번호 and 성별 = '남';
*/

/*
ANSI SQL
SELECT * FROM 사원
INNER JOIN 부서 on 사원.부서번호 =부서.부서번호
AND 성별 = '남';
*/

/*
select 고객.고객번호, 담당자명, 고객회사명  from 고객
INNER join 주문 on 고객.고객번호 = 주문.고객번호
GROUP by 고객.고객번호, 담당자명, 고객회사명
order by count(*);
*/

-- 고객별 주문금액의 합계(주문수량 * 단가)를 출력
SELECT 고객.고객번호, 고객회사명, 담당자명, sum(주문세부.주문수량*단가) as 합계 FROM 고객
inner join 주문 on 주문.고객번호 = 고객.고객번호
inner join 주문세부 on 주문세부.주문번호 = 주문.주문번호
GROUP by 고객.고객번호, 고객회사명, 담당자명;

---------------------------------------------------------
-- UNION BETWEEN, LEFT OUTER JOIN, RIGHT OUTER JOIN
SELECT 고객번호, 담당자명, 마일리지, 도시 from 고객
WHERE 도시 = '서울특별시' or 마일리지 > 1000
union
SELECT 고객번호, 담당자명, 마일리지, 도시 from 고객
where 도시 = '성남시' or 마일리지 > 1000;
-- 중복된 데이터를 하나로 합치고, 하나의 테이블로 조회하도록 해주는 기능
-- 열의 갯수와 컬럼명, 데이터 타입이 같아야 함.
/*
select 고객번호, 고객회사명, 담당자명, 도시, 지역 from 고객
where 도시 = '부산광역시'
UNION
SELECT 고객번호, 고객회사명, 담당자명, 도시, 지역 from 고객
where 마일리지 > 1000
*/

/*
SELECT 고객번호, 고객회사명, 담당자명, 마일리지, 등급명 from 고객
INNER join 마일리지등급 on 마일리지 BETWEEN 하한마일리지 and 상한마일리지
where 담당자명 = '이은광'
*/

SELECT * from 사원
left OUTER join 부서 on 사원.부서번호 = 부서.부서번호
where 부서명 = '영업부';

-- from 절에 해당하는 테이블을 기준으로 조회를 함.
-- left outer join밖에 사용할 수 없음.

/*
SELECT * from 사원
RIGHT OUTER join 부서 on 사원.부서번호 = 부서.부서번호;
*/
--------------------------------------------
-- DISTINCT
-- 중복된 데이터를 
SELECT DISTINCT 지역, 도시,count(*) from 고객 group by 지역, 도시;
