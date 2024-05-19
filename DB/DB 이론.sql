데이터 처리 -> sql을 사용하는 것도 중요
근데 판다스, 넘파이
sqlite, mysql

DB

한 조직의 여러 시스템을 공용 사용을 위해 데이터 저장하고 운영하는 시스템
-> 기업같은 조직에서 논리적으로 사용하는 데이터 저장 시스템. 주로 공용으로 사용함

DBMS => sqlite, mysql, nosql, ...
- DB를 관리하는 프로그램 -> 입력, 수정, 삭제, 생성 등의 기능을 제공

DB의 특징
- 2차원 테이블로 표현(row, column)(행과 열) 관계형 데이터베이스
- 데이터 무결성
- 데이터 처리를 위해서 sql을 사용해야 됨
예외적으로 ORM이 툴에 따라서 명령어가 달라짐. sql은 
이것은 sql이 수도코드, orm은 파이썬, 자바, c,...

기본키/외부키 (PK/FK)
NN/PK/AI/U
NOT NULL => 이름 : not NULL
	사람이라면 not null의 값이...
	키, 체중, 이름, 머리카락, 청력, 목, 손가락,...
Primary KEY	=> 고유한 값을 가지는 경우 : id
AUTOINCREMENT => 숫자 자동 증가 : uid
	처음 가입자 id = 1
	id = 2 ...
UNIQUE	=> 고유한 값

fk = FOREIGN Key
	 사람
	 키, 체중, 전화번호
			010-9394-5965
			
	전화번호, 통신사, 동의여부
	join

sql(structured query language)
- 관계형 DB에서 데이터 조작, 정의를 하기 위해 사용되는 언어
- 사용자는 DB에 자료를 입력, 조회, 수정, 삭제 등을 하기 위해서 사용할수 있음
CRUD(CREATE, READ, UPDATE, DELETE)

특징
- 배우기 쉬움
- 절차적 언어x 선언적 언어임
- DBMS 종류에 얽메이지 않고 사용이 가능

SQL 작업 종류
- 조회(select)
- 테이블에 행 삽입, 갱신, 삭제(insert, update, DELETE)
- 객체 생성, 변경 및 삭제
- DB 및 객체에 대한 엑세스를 제어
- DB의 일관성, 무결성 보장.

sql문
1. DML
select : 데이터를 검색 ★
insert : 테이블에서 새 행(row)를 입력하는데 사용
update : 기존 행 혹은 데이터를 변경
delete : 행 제거
merge : 데이터가 테이블에 존재하지 않으면 insert, 존재하면 UPDATE

2. DDL
create : 테이블 등의 데이터 구조 생성
alter : 객체를 수정할 때 사용
drop : 객체를 제거 시 사용
rename : 객체 이름 변경할 때 사용
truncate : 객체 내의 모든 행을 삭제 ( 열 이름 빼고)

3. TCL(DB 관리자가 사용)
commit : DML 문이 변경한 내용을 관리
ROLLBACK : 데이터에 대한 변경 내용을 기록

4. DCL
grant, revoke : 오라클 DB 및 해당 구조에 대해 엑세스 대상을 부여하거나 제거

