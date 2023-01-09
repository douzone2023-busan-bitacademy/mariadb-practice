select version(), current_date, now() from dual;

-- 수학함수, 사칙 연산도 된다.
select sin(pi() / 4), 1 + 2 * 3 - 4 / 5 from dual;

-- 대소문자 구분 안한다.
sElect VERSION(), current_DATE, NOW() froM dual;

-- table 생성: DDL
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

-- table 삭제: DDL
drop table pet;
show tables;

-- insert: DML(C)
insert
  into pet
values ('성탄이', '안대혁', 'dog', 'm', '2007-12-25', null);

-- select: DML(R)
select * from pet;

-- update: DML(U)
update pet
   set name='성타니'
 where name = '성탄이'; 

update pet
   set death = null
 where name != 'Bowser'; 

-- delete: DML(D)
delete from pet where name = '성타니';

-- load data
load data local infile 'd:\pet.txt' into table pet;

-- select 연습
select name, species
  from pet
 where name = 'Bowser';
 
select name, species
  from pet
 where birth >= '1998-01-01';
 
select name, species, gender
  from pet
 where species = 'dog'
   and gender = 'f';

select name, species
  from pet
 where species = 'snake'
    or species = 'bird';

  select name, birth
    from pet
order by birth asc;

  select name, birth
    from pet
order by birth desc;

select name, birth, death
  from pet
 where death is not null; 

select name
  from pet
 where name like 'b%'; 

select name
  from pet
 where name like '%fy'; 

select name
  from pet
 where name like '%w%';
 
select name
  from pet
 where name like '_____';

select name
  from pet
 where name like 'b____';
 
 select count(*)
   from pet;
   
