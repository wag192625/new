-- 데이터 분석 -> 파이썬, sql, R

-- DBMS(데이터베이스 매니지먼트 서비스)를 우리는 sqlite를 쓰고 있음

-- 데이터 분석 - 분석을 하기 위한 상식(딱 봤을 때 잘못된 거)
-- 전문 지식 - sql

-- 데이터 분석 = adsp -> 빅분기 -> adp(합격률 3퍼센트)

------------------------------------------
------------굵은 글씨만 적용될거임------------

trim == strip
JOIN
pad, rpad, lpad
	rpad('sql',10,'#') -- 메꾸기 = sql#######

UNION(합산)
DISTINCT(중복제거) -- SELECT 뒤에 옴
like '인천__' -- '~~%'는 뒤에 모든 문자, '~~_' 는 _갯수당 검색
limit -- (맨 뒤에 사용하며, 몇 개만 조회할건지. sqlite에서 중요
replace -- 데이터,변경전 문자열, 변경후 문자열
--ex) replace(010-1234-5678, '-', '.') => 010.1234.5678
reverse('ascd')
ceiling(123.2) => 124 -- 소수점이 0 이상이면 올림
floor(123.2) => 123	-- 소수점이 있으면 없앰
truncate(123.123456, 3) => 123.123 -- , 
abs(숫자) -- 절대값.
sign(1) -- 부호를 판별해줌. (양, 음, 0)

mod(13, 4) -- 나누기 후 나머지 값 (1) 13%4
power(2,4) -- 제곱 (16)
power(2,1/2) -- 2의 제곱근
sqrt(49) -- 제곱근. 49의 제곱근은 7
rand() -- 랜덤값(소수)
rand(시드값) -- 시드값을 넣으면 정해진 값을 뽑아냄.
now() -- 날찌+시간
curdate() -- 기기의 날짜
curtime()

-----------------------------------------------------
UNION BETWEEN, LEFT OUTER JOIN, RIGHT OUTER JOIN

