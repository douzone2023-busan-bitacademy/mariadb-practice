select version(), current_date, now() from dual;

-- 수학함수, 사칙 연산도 된다.
select sin(pi() / 4), 1 + 2 * 3 - 4 / 5 from dual;

-- 대소문자 구분 안한다.
sElect VERSION(), current_DATE, NOW() froM dual;

-- table 생성: DML
create table pet (
	name varchar(100),
	owner varchar(20),
	species varchar(20),
	gender char(1),
	birth date,
	death date
);

-- schema 확인
describe pet;
desc pet;

-- table 삭제
drop table pet;
show tables;

-- insert: DML(C)
insert
  into pet
values ('성탄이', '안대혁', 'dog', 'm', '2007-12-25', null);

select * from pet;