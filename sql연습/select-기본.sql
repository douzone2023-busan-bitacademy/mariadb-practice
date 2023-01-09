--
-- select 연습
--

-- 예제1 : deaprtments 테이블의 모든 데이터를 출력.
select * from departments;

-- 프로젝션(projection)
-- 예제2 : employees 테이블에서 직원의 이름,  성별, 입사일을 출력
select dept_name, dept_no from departments;

-- as(alias, 생략 가능)
-- 예제3 : employees 테이블에서 직원의 이름,  성별, 입사일을 출력
select first_name as '이름',
       gender as '성',
       hire_date as '입사 일'
  from employees;

select concat(first_name, ' ', last_name) as '이름',
       gender as '성',
       hire_date as '입사 일'
  from employees;

-- distinct
-- 예제 1:  titles 테이블에서 모든 직급의 이름 출력
select title from titles;

-- 예제 2: titles 테이블에서 직급은 어떤 것들이 있는지 직급이름을 한 번씩만 출력
select distinct(title) from titles;

--
-- where절
--

-- 예제1: 비교연산자: employees 테이블에서 1991년 이전에 입사한 직원의 이름, 성별, 입사일을 출력
select first_name, gender, hire_date
  from employees
 where hire_date < '1991-01-01';
 
-- 예제2: 논리연산자: employees 테이블에서 1989년 이전에 입사한 여직원의 이름, 입사일을 출력
select first_name, gender, hire_date
  from employees
 where hire_date < '1989-01-01'
   and gender = 'f';

-- 예제3: in 연산자: dept_emp 테이블에서 부서 번호가 d005나 d009에 속한 사원의 사번, 부서번호 출력
select emp_no, dept_no
  from dept_emp
 where dept_no = 'd005'
    or dept_no = 'd009';
    
select emp_no, dept_no
  from dept_emp
 where dept_no in ('d005', 'd009');
    
-- 예제4: Like 검색: employees 테이블에서 1989년에 입사한 직원의 이름, 입사일을 출력 
select first_name, hire_date
  from employees
 where '1989-01-01' <= hire_date
   and hire_date <= '1989-12-31';

select first_name, hire_date
  from employees
 where hire_date between '1989-01-01' and '1989-12-31';
   
select first_name, hire_date
  from employees
 where hire_date like '1989%';
 
--
-- order by
-- 

-- 예제1: employees 테이블에서 직원의 전체이름, 성별, 입사일을 입사일 순으로 출력 
  select concat(first_name, ' ', last_name), gender, hire_date
    from employees
order by hire_date asc;

-- 예제2: salaries 테이블에서 2001년 월급을 가장 높은 순으로 사번, 월급순으로 출력
  select emp_no, salary
    from salaries
   where from_date like '2001%'
      or to_date like '2001%'
order by salary desc;   

-- 예제3: 남자 직원의 이름, 성별, 입사일을 입사일순(선임순)으로 출력하세요.
  select first_name as '이름',
         gender as '성별',
         hire_date as '입사일'
    from employees
   where gender = 'm'
order by 입사일 asc; 

-- 예제4: 직원들의 사번, 월급을 사번(asc), 월급은(desc)
  select emp_no, salary, from_date, to_date
    from salaries
order by emp_no asc, salary desc;  




 