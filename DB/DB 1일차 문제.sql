-- 2. 데이터 입력할 것

-- INSERT INTO pets
-- VALUES(1,'harris','rabbit'),
-- 	(2, 'moon', 'dog'),
-- 	(3, 'ripley', 'cat'),
-- 	(4, 'tom', 'cat');

-- 3. id가 2인 동물의 animal을 조회

-- SELECT * from pets WHERE id = 2;

-- 4. pets 테이블에서 종류별로 몇 마리 있는지 조회

-- SELECT animal, count(animal) FROM pets
-- GROUP by animal;

-- 5. pets 테이블에서 한마리 넘게 있는 동물을 조회

-- SELECT animal, count(*) from pets
-- group by animal
-- HAVING count(*)>1;