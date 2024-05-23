-- CREATE TABLE stadium (
-- STADIUM_ID    CHAR(3) NOT NULL,
-- STADIUM_NAME  VARCHAR2(20) NOT NULL,
-- HOMETEAM_ID   CHAR(3),
-- SEAT_COUNT    NUMBER,
-- ADDRESS     VARCHAR2(60),
-- DDD         VARCHAR2(3),
-- TEL         VARCHAR2(10),
-- CONSTRAINT stadium_PK PRIMARY KEY (STADIUM_ID)
-- );
-- INSERT INTO stadium VALUES ('E01','한밭종합운동장','K10',30000,'대전 광역시 중구 부사동 162-1','042','221-2002');                                              
-- '부산구장','K06',30000,'부산광역시 서구 서대신동 3가 210번지','051','247-5771');                                             
-- 천구장','K04',35000,'부천시 원미구 춘의동 산 19번지','031','666-0496');                                                   
-- 02','성남구장','K08',27000,'성남시 중원구 성남동 3110번지','031','753-3956');                                                    
-- 04','수원월드컵구장','K02',50000,'수원시 팔달구 우만1동 228번지','031','259-2150');                                              
-- 양구장','K09',22500,'경기도 동안구 비산3동 1025번지','031','380-7212');                                                  
-- 'C04','울산문수구장','K01',46102,'울산광역시 남구 옥산 산5번지 울산체육공원','052','220-');                                        
-- 0009,'전남 광양시 금호동 700','061','792-5600');                                                           
-- ium VALUES ('D03','전북구장','K05',28000,'전북 덕진구 덕진동 1가 1220','063','273-1763');                                                      
--  ('C06','포항구장','K03',25000,'경북 포항시 남구 괴동 1번지','054','282-2002');                                                     
-- 03','수원구장','','','경기도 수원시','','');       
-- VALUES ('C01','김천구장','','','경북 김천시','','');         
-- m VALUES ('C03','울산구장','','','울산광역시','','');          
-- m VALUES ('C05','창원구장','','','경남 창원시','','');         
-- m VALUES ('D02','전주구장','','','전북 전주시','','');         
-- m VALUES ('E02','대전월드컵구장','',41000,'대전광역시 유성구 노은동 270번지','','');                                                         
-- 컵경기장','',63930,'','','');
  
-- 각 경기장의 STADIUM_NAME, SEAT_COUNT, TEL을 각각 이름, 좌석수, 전화번호라는 별칭을 사용하여 출력하는 SQL 쿼리를 작성
-- SELECT STADIUM_NAME as '이름', SEAT_COUNT as '좌석수', TEL as '전화번호' from stadium

-- 각 홈팀(HOMETEAM_ID)에 대해 평균 좌석수를 표시하되, 평균 좌석수가 30,000을 초과하는 홈팀만 표시하세요. 결과에는 홈팀 ID와 평균 좌석수를 반올림하여 표시
-- SELECT HOMETEAM_ID, round(avg(SEAT_COUNT)) from stadium
-- where SEAT_COUNT >= 30000
-- GROUP by HOMETEAM_ID;

-- # 각 도시에 있는 경기장의 수를 표시하는 SQL 쿼리를 작성하세요. 결과에는 도시 이름과 경기장 수를 포함
-- SELECT STADIUM_NAME, count(ADDRESS) from stadium
-- GROUP by STADIUM_NAME;


-- # 최대 좌석수를 가진 경기장의 이름을 찾는 SQL 쿼리를 작성하세요. 결과에는 경기장 이름과 좌석수를 포함하세요.
-- SELECT STADIUM_NAME, max(SEAT_COUNT) from stadium
-- where SEAT_COUNT;


-- # 지역 번호가 031인 경기장의 총 좌석수를 계산하는 SQL 쿼리를 작성하세요. 결과에는 해당 지역 번호의 총 좌석수를 포함
SELECT DDD, sum(SEAT_COUNT) from stadium
where DDD = '031';
-- GROUP by SEAT_COUNT
-- HAVING DDD = '031'
