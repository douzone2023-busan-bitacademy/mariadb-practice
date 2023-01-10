-- inner join

-- 예제1) 현재, 근무하고 있는 직원의 이름과 직책을 모두 출력하세요.
select a.first_name, b.title
  from employees a, titles b
 where a.emp_no = b.emp_no			-- join 조건(n-1)
   and b.to_date = '9999-01-01';	-- row 선택 조건
   
-- 예제2) 현재, 근무하고 있는 직원의 이름과 직책을 출력하되 여성 엔지니어(Engineer)만 출력하세요.
select a.first_name, a.gender, b.title
  from employees a, titles b
 where a.emp_no = b.emp_no		-- join 조건(n-1)
   and b.to_date = '9999-01-01'	-- row 선택 조건1
   and a.gender = 'f'			-- row 선택 조건2
   and b.title = 'Engineer';	-- row 선택 조건3

--
-- ANSI/ISO SQL1999 JOIN 표준 문법
--

-- 1) Natural Join
--    조인 대상이 되는 두 테이블에 이름이 같은 공통 컬럼이 있으면 조인 조건을
--    명시하지 않고 암묵적으로 조인이 된다.
select a.first_name, b.title
  from employees a natural join titles b
 where b.to_date = '9999-01-01';
  
-- 2) join ~ using
--    ntural join의 문제점
select count(*)
  from salaries a natural join titles b 
 where a.to_date = '9999-01-01'
   and b.to_date = '9999-01-01';

select count(*)
  from salaries a join titles b using(emp_no)
 where a.to_date = '9999-01-01'
   and b.to_date = '9999-01-01';

-- 3) join ~ on ***    
-- 예제) 현재, 직책별 평균 연봉을 큰 순서대로 출력 하세요.
  select b.title, avg(a.salary) as avg_salary
    from salaries a
    join titles b on a.emp_no = b.emp_no
   where a.to_date = '9999-01-01'
     and b.to_date = '9999-01-01'
group by b.title
order by avg_salary desc;

-- 실습문제1
-- 현재, 직원별 근무 부서를 출력 해보세요.
-- 사번, 직원 이름, 부서명 순으로 출력
select a.emp_no, a.first_name, b.dept_name
  from employees a, departments b, dept_emp c
 where a.emp_no = c.emp_no
   and b.dept_no = c.dept_no
   and c.to_date = '9999-01-01';

-- 실습문제2
-- 현재, 지급되고 있는 급여를 출력 해보세요.
-- 사번, 이름, 급여 순으로 출력
select a.emp_no,  a.first_name, b.salary
  from employees a, salaries b
 where a.emp_no = b.emp_no
   and b.to_date = '9999-01-01';

-- 실습문제3
-- 현재, 직책별 평균연봉과 직원수를 구하되 직책별 직원수가 100명 이상인 직책만 출력하세요.
-- 직책, 평균연봉, 직원수 순으로 출력
  select title, avg(b.salary), count(*)
    from titles a, salaries b
   where a.emp_no = b.emp_no
     and a.to_date = '9999-01-01'
     and b.to_date = '9999-01-01'
group by a.title
  having count(*) >= 100;

-- 실습문제4
-- 현재, 부서별로 직책이 Engineer인 직원들에 대해서만 평균급여를 구하세요.
-- 부서이름, 평균급여 순으로 출력하세요.
  select a.dept_name, avg(d.salary)
    from departments a, dept_emp b, titles c, salaries d
   where a.dept_no = b.dept_no
     and b.emp_no = c.emp_no
     and c.emp_no = d.emp_no
     and b.to_date = '9999-01-01'
     and c.to_date = '9999-01-01'
     and d.to_date = '9999-01-01'
     and c.title = 'Engineer'
group by a.dept_name
order by avg(d.salary) desc;   
   