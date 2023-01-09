-- 예제1 : deaprtments 테이블의 모든 데이터를 출력.
select * from departments;

-- 프로젝션(projection)
-- 예제2 : employees 테이블에서 직원의 이름,  성별, 입사일을 출력
select dept_name, dept_no from departments;

-- as(alias, 생략 가능)
-- employees 테이블에서 직원의 이름,  성별, 입사일을 출력
select first_name as '이름',
       gender as '성',
       hire_date as '입사 일'
  from employees;

select concat(first_name, ' ', last_name) as '이름',
       gender as '성',
       hire_date as '입사 일'
  from employees;


