-- INSERT INTO Person(name, birthday)
-- VALUES ('홍길동', '1999-01-01');

-- INSERT INTO Person
-- VALUES(20,'임꺽정','1998-02-01');

-- DELETE FROM Person;



-- INSERT INTO Person
-- VALUES(21, '임꺽정','1998-02-01');

-- UPDATE Person set name = '이순신';

-- INSERT INTO Person(name,birthday)
-- VALUES('정길동','2000-05-04'), ('김길동','1999-04-02');


-- INSERT INTO Person(name) VALUES('방민아');

-- SELECT name from Person; -- 컬럼 조회

-- 데이터 정렬
-- SELECT name FROM Person ORDER by name DESC;	-- DESC는 역정렬

-- SELECT * FROM Person WHERE name = '정길동'; -- 특정한 데이터를 보고싶을때 조건부 조회

-- SELECT * FROM Person WHERE birthday is not null; -- 조건을 걸어서 생일에 데이터가 없을때를 조회



-- UPDATE Person SET name = '임꺽정' where id = 21;  -- 조건 찾기

-- SELECT * FROM Person WHERE birthday like '1998%';	-- 패턴 찾기


-- drop table Person; -- 테이블 삭제

-- CREATE TABLE "Person" (
--     "ID"    INTEGER NOT NULL,
--     "Name"  TEXT NOT NULL,
--     "Birthday"  TEXT,
--     "Height"    INTEGER,
--     "Weight"    INTEGER,
--     PRIMARY KEY("ID" AUTOINCREMENT)
-- );
--
-- INSERT INTO Person VALUES
--     (1, '혜리', '1994-06-09', NULL, 50),
-- (2, '소진', '1986-05-21', 167, NULL),
-- (3, '유라', '1992-11-06', 170.3, 54),
-- (4, '민아', NULL, 164, 46);

-- SELECT * from Person;

-- SELECT name as '이름', Birthday as '생일' from Person;

-- SELECT name '이름', Birthday '생일' from Person;	-- as 안써도 문제 없음

--  행을 임의 추가
-- SELECT name, Height, Weight, round(height) as  반올림키 from Person;

-- SELECT count(*) from Person;

-- SELECT max(height) from Person;
-- SELECT min(height) from Person;
-- SELECT sum(height) from Person;
-- select avg(height) from Person;








SELECT * from Person;
-- UPDATE Person SET Height = 170 where name = '혜리'; 


-- group by

-- SELECT round(height),count(*) from Person
-- group by 1;

-- SELECT round(height),count(*) from Person
-- group by round(height);

-- SELECT round(height), count(*)
-- FROM Person
-- GROUP by round(height);




-- HAVING
-- SELECT round(height), count(*)
-- from Person
-- GROUP by round(height)
-- HAVING count(*) > 1;

SELECT * from Person;
-- UPDATE Person SET Height = 170 where name = '혜리'; 

SELECT round(height), count(*)
from Person
GROUP by round(height)
HAVING count(*) > 1;