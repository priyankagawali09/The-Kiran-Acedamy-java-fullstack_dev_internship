-- part A: database & table creation

create database if not exists ecommerce_db;
use ecommerce_db;

create table products (
    product_id int primary key,
    product_name varchar(100),
    category varchar(50),
    brand varchar(50),
    price decimal(10,2),
    quantity int,
    city varchar(50),
    status varchar(20)
);

-- part B: insert operations
insert into products values (201, 'galaxy m55', 'mobile', 'samsung', 32000, 15, 'pune', 'available');
insert into products values (202, 'iphone 15', 'mobile', 'apple', 65000, 8, 'mumbai', 'available');
insert into products values (203, 'moto edge 50', 'mobile', 'motorola', 28000, 20, 'pune', 'available');
insert into products values (204, 'inspiron 15', 'laptop', 'dell', 58000, 6, 'nashik', 'available');
insert into products values (205, 'ideapad slim 3', 'laptop', 'lenovo', 45000, 12, 'mumbai', 'available');
insert into products values (206, 'galaxy watch 6', 'watch', 'samsung', 22000, 4, 'pune', 'out of stock');
insert into products values (207, 'apple watch se', 'watch', 'apple', 30000, 10, 'mumbai', 'available');
insert into products values (208, 'redmi pad', 'tablet', 'xiaomi', 24000, 18, 'pune', 'available');
insert into products values (209, 'oneplus pad', 'tablet', 'oneplus', 35000, 5, 'nashik', 'available');
insert into products values (210, 'bluetooth speaker', 'accessories', 'jbl', 7000, 25, 'mumbai', 'available');

-- part C: basic select & operator practice
select * from products;

select product_name 
from products;

select product_name, price 
from products;

select product_name, category, brand, price
 from products;
 
select * from products 
where city = 'pune';
select * from products 
where city = 'mumbai';

select * from products 
where category = 'mobile';

select * from products 
where category = 'laptop';

select * from products 
where price > 30000;

select * from products 
where price < 30000;
select * from products 
where price = 35000;
select * from products 
where price >= 45000;

select * from products 
where price <= 30000;

select * from products 
where quantity > 10;

select * from products 
where quantity < 10;

-- part D: logical operators
select * from products 
where city = 'pune' and category = 'mobile';

select * from products 
where city = 'mumbai' and status = 'available';

select * from products 
where price > 30000 and quantity > 5;
select * from products 
where price >= 30000 and price <= 60000;
select * from products 
where city = 'pune' or city = 'mumbai';
select * from products 
where category = 'mobile' or category = 'laptop';
select * from products 
where quantity < 10 or price > 50000;
select * from products 
where category = 'mobile' and price > 30000;
select * from products
 where brand = 'samsung' or brand = 'apple';
select * from products
 where city = 'pune' and status = 'available' and quantity > 10;

-- part E: slightly higher operator logic
select * from products 
where price between 25000 and 50000;

select * from products 
where quantity between 5 and 15; 

select * from products 
where category in ('mobile', 'laptop', 'tablet');

select * from products 
where city in ('pune', 'mumbai');

select * from products 
where brand <> 'samsung';

select * from products 
where status <> 'out of stock';

select * from products where price <> 30000;

select * from products where product_name like 'galaxy%';

select * from products 
where product_name like '%pad%';

select * from products 
where category = 'mobile' and (price > 30000 or quantity > 15);

-- part F: update operations
update products set price = 34000 
where product_id = 201;
update products set quantity = 12 
where product_id = 202;
update products set status = 'available' 
where product_id = 206;
update products set price = price + 2000 
where category = 'mobile';
update products set quantity = quantity + 5
 where city = 'pune';
update products set status = 'out of stock'
 where quantity < 5;

-- part G: delete operations
delete from products where product_id = 210;
delete from products where price < 8000;
delete from products where status = 'out of stock' and quantity < 5;
delete from products where category = 'tablet' and price > 30000;
