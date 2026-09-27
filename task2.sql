-- part A: database & table creation
create database if not exists company_db;
use company_db;

create table employees (
    employee_id int primary key,
    employee_name varchar(100),
    department varchar(50),
    salary decimal(10,2),
    city varchar(50),
    joining_date date,
    status varchar(20)
);

-- part B: insert operations
insert into employees values (101, 'Rahul patil', 'Development', 45000, 'pune', '2026-01-10', 'active');
insert into employees values (102, 'priya sharma', 'Testing', 38000, 'mumbai', '2026-02-15', 'active');
insert into employees values (103, 'Amit joshi', 'Development', 52000, 'pune', '2025-12-05', 'active');
insert into employees values (104, 'Sneha kulkarni', 'Hr', 35000, 'nashik', '2026-03-20', 'active');
insert into employees values (105, 'Rohan deshmukh', 'Support', 30000, 'mumbai', '2026-04-01', 'inactive');
insert into employees values (106, 'Anjali more', 'Testing', 42000, 'pune', '2026-05-12', 'active');

-- part c: basic select queries
select * from employees;

select employee_name from employees;

select employee_name, salary from employees;

select employee_name, department, city from employees;

select * from employees 
where city = 'pune';

select * from employees 
where city = 'mumbai';

select * from employees
 where department = 'development';

select * from employees 
where department = 'testing';

select * from employees
 where status = 'active'; 

select * from employees 
where status = 'inactive';
 
select * from employees 
where employee_id = 103;

select * from employees
 where employee_name = 'priya sharma';

select * from employees
 where salary > 40000;

select * from employees 
where salary < 40000;

select * from employees 
where salary = 35000;

select * from employees where salary >= 42000;

select * from employees 
where city = 'pune'
 and status = 'active';
 
select * from employees 
where department = 'development'
 and salary > 45000;
 
select * from employees
 where city in ('pune', 'mumbai');

-- part d: update operations

update employees 
set salary = 48000 
where employee_id = 101;

update employees 
set status = 'active'
 where employee_id = 105;
 
update employees set city = 'pune' 
where employee_id = 104;

update employees 
set department = 'development'
 where employee_id = 102;
 
update employees set salary = 45000 
where employee_id = 106;

update employees set salary = salary + 3000 
where employee_id = 103;

update employees set salary = salary + 2000 
where department = 'testing';

update employees 
set city = 'mumbai branch'
 where city = 'mumbai';

-- part E: delete operations
delete from employees 
where employee_id = 105;

delete from employees where employee_name = 'rohan deshmukh';

delete from employees where status = 'inactive';

delete from employees where salary < 30000;

delete from employees where employee_id = 104;


-- part F: alter table / DDL practice
alter table employees add column email varchar(100);

alter table employees add column mobile varchar(15);

alter table employees modify column city varchar(100);

alter table employees rename column employee_name to name;

alter table employees drop column mobile;

alter table employees add column experience int;

update employees set experience = 5 where employee_id = 101;

-- part G: table-level ddl practice
create table departments (
    department_id int primary key,
    department_name varchar(100),
    location varchar(100)
);

insert into departments values (1, 'development', 'pune');
insert into departments values (2, 'testing', 'mumbai');
insert into departments values (3, 'hr', 'nashik');

select * from departments;

update departments set location = 'pune branch' where department_id = 1;

delete from departments where department_id = 3;

rename table departments to company_departments;

describe company_departments;

truncate table company_departments;

drop table company_departments;
show tables;
