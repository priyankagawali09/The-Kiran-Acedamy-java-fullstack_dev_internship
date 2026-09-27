-- create database and table
create database if not exists company_db;
use company_db;


create table if not exists employees (
    employee_id int primary key,
    employee_name varchar(100) not null,
    department varchar(50),
    salary decimal(10,2),
    city varchar(50),
    joining_date date,
    email varchar(100),
    status varchar(20)
);

-- Part A — Table Structure & Initial Verification
insert into employees values
(101, 'aarav sharma', 'it', 55000, 'pune', '2025-01-15', 'aarav@company.com', 'active'),
(102, 'priya sharma', 'hr', 35000, 'mumbai', '2024-11-20', 'priya@company.com', 'active'),
(103, 'rohan joshi', 'sales', 42000, 'pune', '2026-02-10', null, 'active'),
(104, 'sneha kulkarni', 'testing', 67000, 'nashik', '2025-08-05', 'sneha@company.com', 'active'),
(105, 'vikram deshmukh', 'support', 18500, 'pune', '2023-06-18', null, 'inactive'),
(106, 'neha more', 'finance', 22500, 'mumbai', '2024-03-12', 'neha@company.com', 'active'),
(107, 'radha patil', 'it', 60000, 'nagpur', '2025-07-01', 'radha@company.com', 'active'),
(108, 'john fernandes', 'sales', 48000, 'pune', '2026-01-05', 'john@company.com', 'active'),
(109, 'meera naik', 'hr', 32000, 'mumbai', '2025-09-12', null, 'inactive'),
(110, 'raj malhotra', 'testing', 75000, 'nashik', '2026-03-20', 'raj@company.com', 'active'),
(111, 'anita desai', 'finance', 29000, 'pune', '2024-12-01', 'anita@company.com', 'active'),
(112, 'suresh gupta', 'support', 31000, 'mumbai', '2025-05-15', null, 'active'),
(113, 'pooja khan', 'it', 95000, 'pune', '2026-06-10', 'pooja@company.com', 'active'),
(114, 'amit verma', 'sales', 28000, 'nagpur', '2025-04-22', 'amit@company.com', 'inactive'),
(115, 'kiran reddy', 'hr', 45000, 'pune', '2026-02-18', 'kiran@company.com', 'active'),
(116, 'deepa mehta', 'finance', 37000, 'mumbai', '2024-10-30', null, 'active'),
(117, 'alok singh', 'support', 33000, 'nashik', '2025-11-25', 'alok@company.com', 'active'),
(118, 'geeta rai', 'it', 72000, 'pune', '2026-01-20', 'geeta@company.com', 'active'),
(119, 'manoj tiwari', 'sales', 41000, 'mumbai', '2025-08-14', 'manoj@company.com', 'inactive'),
(120, 'shweta ghosh', 'hr', 53000, 'nagpur', '2026-03-01', 'shweta@company.com', 'active'),
(121, 'rahul kapoor', 'testing', 36000, 'pune', '2025-09-09', null, 'active'),
(122, 'nisha jain', 'finance', 64000, 'mumbai', '2026-02-25', 'nisha@company.com', 'active'),
(123, 'arjun yadav', 'support', 27000, 'nashik', '2024-07-17', 'arjun@company.com', 'inactive'),
(124, 'sonali thakur', 'it', 58000, 'pune', '2025-12-12', 'sonali@company.com', 'active'),
(125, 'vivek kumar', 'sales', 30000, 'mumbai', '2023-11-05', null, 'inactive');

-- part B: basic equality & direct comparison filters
select * from employees where city = 'pune';

select * from employees where city = 'mumbai';

select * from employees where department = 'it';

select * from employees where department = 'hr';

select * from employees where department = 'sales';

select * from employees where status = 'active';

select * from employees where status = 'inactive';

select * from employees where employee_id = 103;

select * from employees where employee_name = 'priya sharma';

select * from employees where salary = 35000;

select * from employees where city != 'pune';
select * from employees where department <> 'testing';

-- part C: relational comparison operators
select * from employees 
where salary > 40000;
select * from employees 
where salary < 35000;
select * from employees 
where salary >= 50000;
select * from employees 
where salary <= 30000;
select * from employees 
where joining_date > '2025-01-01';
select * from employees 
where joining_date <= '2024-12-31';
select * from employees 
where employee_id > 110;
select employee_name, joining_date from employees 
where joining_date >= '2026-01-01';

-- part d: combining conditions with and
select * from employees 
where city = 'pune' and status = 'active';
select * from employees 
where department = 'it' and salary > 50000;
select * from employees 
where city = 'mumbai' and status = 'inactive';
select * from employees
 where department = 'sales' and city = 'pune' and salary >= 42000;
select * from employees
 where department = 'hr' and joining_date > '2025-06-01';
select * from employees 
where status = 'active' and salary >= 40000 and salary <= 70000;
select * from employees 
where city = 'mumbai' and department = 'testing' and salary > 38000;
select * from employees 
where status = 'active' and joining_date >= '2026-01-01' and salary > 45000;

-- part E: logical or & not
select * from employees where city = 'pune' or city = 'mumbai';
select * from employees where department = 'it' or department = 'hr';
select * from employees where salary < 32000 or salary > 60000;
select * from employees where city = 'nashik' or salary > 55000;
select * from employees where not department = 'hr';
select * from employees where status <> 'inactive';
select * from employees where (city = 'pune' or city = 'mumbai') and status = 'active';
select * from employees where city <> 'pune' and salary > 40000;

-- part F: range & membership operators
select * from employees where salary between 35000 and 55000;
select * from employees where salary not between 40000 and 65000;
select * from employees where joining_date between '2025-01-01' and '2025-12-31';
select * from employees where employee_id between 105 and 115;
select * from employees where department in ('it','hr','sales');
select * from employees where city in ('pune','mumbai','nagpur');
select * from employees where department not in ('testing','support');
select * from employees where city not in ('mumbai','nashik');
select * from employees where employee_id in (101,105,110,115,120);
select * from employees where department in ('it','sales') and salary between 45000 and 75000;

-- part G: pattern matching with like
select * from employees where employee_name like 'a%';
select * from employees where employee_name like 'r%';
select * from employees where employee_name like '%a';
select * from employees where employee_name like '%sh%';
select * from employees where employee_name like 'p%a';
select * from employees where employee_name like '_____';
select * from employees where employee_name like '_a%';
select * from employees where employee_name not like 'r%';

-- part H: null value checks
select * from employees where email is null;
select * from employees where email is not null;
select * from employees where city = 'pune' and email is null;
select * from employees where status = 'active' and email is not null and salary > 40000;

-- part I: combined industrial challenge queries
select * from employees 
where status = 'active' 
and city in ('pune','mumbai') 
and department in ('it','sales') 
and salary between 40000 and 70000 
and joining_date > '2025-01-01';

select * from employees 
where (employee_name like 's%' or employee_name like 'r%') 
and email is not null 
and status = 'active' 
and city in ('pune','nashik');
