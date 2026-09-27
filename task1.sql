-- creating database 
CREATE DATABASE IF NOT EXISTS capgemini;
USE capgemini;

-- Creating table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    profile VARCHAR(50),
    email VARCHAR(100),
    salary INT,
    age INT,
    experience INT
);

INSERT INTO employees (id, name, profile, email, salary, age, experience) VALUES
(1, 'rani',  'dev',  'rani@gmail.com',  11000, 43, 27),
(2, 'raj',   'test', 'raj@gmail.com',   21000, 33, 17),
(3, 'radha', 'test', 'radha@gmail.com', 26000, 38, 21),
(4, 'raj',   'dev',  'raj12@gmail.com', 51000, 32, 12),
(5, 'john',  'dev',  'john@gmail.com',  51000, 39, 27);

select * from employees;


-- 1. Add branch_location column
ALTER TABLE employees
add column branch_location varchar(60);

-- 2. Total salary expenses
 select  sum(salary) as total_sal_expence
 from employees;

-- 3. Maximum salary from test profile
 select max(salary) as max_sal
 from employees 
 where profile='test';
 
--  4. Average experience of employees
 select avg(experience) as avg_experience
 from employees;
 
--  5. Name of highest-paid employee
select name
from employees
where  salary = (select max(salary) from employees);


-- 6. Name and experience of lowest-paid employee
select name, experience
    from employees
    where salary = (select min(salary) from employees);
    
    
-- 7. Count total employees
select count(*) as total_employees
from employees;


-- 8. Employees from test profile with salary > 25K
select name
from employees
where profile = 'test'
and salary > 25000;


-- 9. Shift Radha to support profile
update employees
set profile = 'support'
where name = 'Radha';


-- 10. Second-highest salary
select max(salary) as second_highest_salary
from employees
where salary < (select max(salary) from employees);

-- or

select distinct salary
from employees
order by salary desc 
limit 1 offset 1;


-- 11. Second-lowest salary
select distinct salary
from employees
order by salary asc 
limit 1 offset 1;

-- 12. Average salary of dev employees
select avg(salary) as average_dev_salary
from employees
where profile = 'dev';

-- 13. Name and salary of employee having lowest experience

SELECT name, salary
FROM employees
where experience = (SELECT MIN(experience) FROM employees);


-- 14. Employee name having lowest age with maximum salary
select name
from employees
where age = (SELECT MIN(age) FROM employees)
and salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE age = (SELECT MIN(age) FROM employees)
);

-- 15. Remove all employees
delete from employee;
 