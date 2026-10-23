create table Customers2(
c_id int,
c_name varchar(50),
c_age int,
c_address varchar(50));

insert into Customers2 (c_id,c_name,c_age,c_address)
values
(1,'Rohan',21,'Jaipur'),
(2,'Mohan',22,'Udipur'),
(3,'Riya',23,'Rajasthan'),
(4,'Het',24,'Ahemdabad'),
(5,'Suresh',25,'Surat');

select * from Customers2;


create table Order2(
o_id int,
c_id int,
item varchar(50),
amount int);

insert into Order2(o_id,c_id,item,amount)
values 
(01,1,'Pizza',200),
(02,2,'Burger',180),
(03,3,'Sandwich',150),
(04,5,'Dosa',290),
(05,7,'Momos',90);

select * from Order2;



--Join Querys-- 

select * from Customers2;
select * from Order2;

select * 
from Customers2
inner join Order2
on Customers2.c_id = Order2.c_id;

select * 
from Customers2
left join Order2
on Customers2.c_id = Order2.c_id;

select * 
from Customers2
right join Order2
on Customers2.c_id = Order2.c_id;


select * 
from Customers2
full join Order2
on Customers2.c_id = Order2.c_id;

