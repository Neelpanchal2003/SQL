create table cust(
customer_id int primary key,
customer_name varchar(50),
customer_city varchar(50));

insert into cust(customer_id,customer_name,customer_city)
values 
(101,'neel','ahemdabad'),
(102,'heli','surat'),
(103,'piyu','jaipur'),
(104,'krishu','udaipur'),
(105,'disha','rajasthan');

select * from cust;


create table orderss(
order_id int primary key,
customer_id int,
product_name varchar(50),
quantity int,
amount decimal);

insert into orderss(order_id,customer_id,product_name,quantity,amount)
values 
(1,101,'laptop',1,60000),
(2,108,'mouse',1,3200),
(3,103,'keyboard',1,8000),
(4,104,'phone',1,48000),
(5,109,'headphone',1,5000);

select * from  orderss;


--Task 1--

select
cust.customer_id,
cust.customer_name,
cust.customer_city,
orderss.order_id,
orderss.product_name,
orderss.amount
from cust
inner join orderss
on cust.customer_id = orderss.customer_id;


--Task 2--

select
cust.customer_name,
cust.customer_city,
orderss.product_name,
orderss.amount
from cust
inner join orderss
on cust.customer_id = orderss.customer_id;


--Task 3--

select
cust.customer_id,
cust.customer_name,
orderss.order_id,
orderss.product_name,
orderss.amount
from cust
left join orderss
on cust.customer_id = orderss.customer_id;


--Task 4--

select 
cust.customer_id,
cust.customer_name,
cust.customer_city
from cust 
left join orderss
on cust.customer_id = orderss.customer_id
WHERE orderss.customer_id is null;

--Task 5--

select 
orderss.order_id,
orderss.customer_id,
cust.customer_name,
orderss.product_name,
orderss.amount
from cust 
right join orderss
on cust.customer_id = orderss.customer_id;

--Task 6--

select
orderss.order_id,
orderss.customer_id,
orderss.product_name,
orderss.amount
from cust 
right join orderss
on cust.customer_id = orderss.customer_id
where cust.customer_id IS NULL;


--Task--7

select
cust.customer_id,
cust.customer_name,
orderss.order_id,
orderss.product_name,
orderss.amount
from cust
full join orderss
on cust.customer_id = orderss.customer_id;


--Task 8--

select
cust.customer_name,
orderss.order_id,
orderss.product_name,
orderss.amount
from cust
inner join orderss
on cust.customer_id = orderss.customer_id
where orderss.amount > 10000;


--Task 9--

select
cust.customer_name,
cust.customer_city,
orderss.order_id,
orderss.product_name,
orderss.amount
from cust
inner join orderss
on cust.customer_id = orderss.customer_id
where cust.customer_city = 'ahemdabad';


--Task 10--

select
cust.customer_name,
orderss.product_name,
orderss.quantity,
orderss.amount
from cust
inner join orderss
on cust.customer_id = orderss.customer_id
where orderss.quantity > 2
order by orderss.quantity DESC;

--Task 11--

select 
cust.customer_id,
cust.customer_name,
SUM(orderss.amount) AS total_amount
from cust
left join orderss
on cust.customer_id = orderss.customer_id
group by 
cust.customer_id,
cust.customer_name;


--Task 12--
select 
cust.customer_id,
cust.customer_name,
count(orderss.order_id) AS totalorder
from cust
left join orderss
on cust.customer_id = orderss.customer_id
group by 
cust.customer_id,
cust.customer_name;



--Task 13--

select 
cust.customer_name,
avg(orderss.amount) AS average_order
from cust
inner join orderss
on cust.customer_id = orderss.customer_id
group by 
cust.customer_name;


--Task 14--

select top 1 with ties
cust.customer_name,
orderss.order_id,
orderss.product_name,
orderss.amount
FROM cust
INNER JOIN orderss
ON cust.customer_id = orderss.customer_id
ORDER BY orderss.amount DESC;

--Task 15--

select top 1
cust.customer_name,
orderss.order_id,
orderss.product_name,
orderss.amount
FROM cust
INNER JOIN orderss
ON cust.customer_id = orderss.customer_id
ORDER BY orderss.amount asc;


--Task 16--

select
cust.customer_id,
cust.customer_name,
count(orderss.order_id) as NumberOfOrders,
SUM(orderss.quantity) as TotalQuantity,
SUM(orderss.amount) as TotalAmount
from cust
left join orderss
on cust.customer_id = orderss.customer_id
group by 
cust.customer_id,
cust.customer_name;


--Task 17--

select
cust.customer_id,
cust.customer_name,
SUM(orderss.amount) AS Total_Spending
from cust
left join orderss
on cust.customer_id = orderss.customer_id
group by 
cust.customer_id,
cust.customer_name
HAVING SUM(orderss.amount) > 20000;

--Task 18--

select
cust.customer_id,
cust.customer_name,
count(orderss.order_id) AS NumberOfOrders
from cust
join orderss
on cust.customer_id = orderss.customer_id
group by
cust.customer_id,
cust.customer_name
having count(orderss.order_id) > 1;

--Task 19--

select
cust.customer_id,
cust.customer_name,
orderss.order_id,
orderss.amount
from cust 
full outer join orderss
on cust.customer_id = orderss.customer_id;



--Task 20--

select
cust.customer_id,
cust.customer_name,
cust.customer_city,
orderss.order_id,
orderss.product_name,
orderss.quantity,
orderss.amount,
orderss.quantity * orderss.amount AS TotalValue
from cust
inner join orderss
on cust.customer_id = orderss.customer_id;


 









