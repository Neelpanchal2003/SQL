create database companyDb;

use companyDb;

create table customers(
id int Primary key,
user_name varchar(50),
age int,
country varchar(50),
amount_spend int
);

INSERT INTO customers(id,user_name,age, country, amount_spend)
VALUES
(1,'Neel',20,'India',30000),
(2,'Heli',21,'US',20000),
(3,'Piyu',22,'USA',19000),
(4,'Roshan',23,'UK',34000),
(5,'Darshan',24,'India',40000);

select * from customers;

select user_name,age from customers;

select user_name ,amount_spend from customers;


select *
from customers
where age > 30;


select *
from customers
where age > 30 and country = 'India';


select *
from customers
where country = 'India' and user_name like '%A';

-- %A = End A
-- A% = start A
-- %A% = Contains A

select *
from customers
where amount_spend between 20000 and 30000;

select * 
from customers
-- order by age desc;
order by age asc;

select * 
from customers
where age > 30
order by amount_spend desc;

select top 2 * 
from customers
where age > 30
order by amount_spend desc;
