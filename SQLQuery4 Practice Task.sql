select * from sales_transactions1;


--1--
select
COUNT(*)As TotalTransactions,
SUM(quantity) As TotalQuantitySold,
SUM(quantity * unit_price) As TotalSalesValue,
AVG(unit_price) As AverageUnitPrice,
MAX(unit_price) As HighestUnitPrice,
MIN(unit_price) As LowestUnitPrice
from sales_transactions1;


--2--

select category,
COUNT(*)As TotalTransactions,
SUM(quantity) As TotalQuantitySold,
SUM(quantity * unit_price) As TotalSalesValue,
AVG(unit_price) As AverageUnitPrice
from sales_transactions1
Group By Category order by TotalSalesValue desc; 


--3--

select salesperson,
COUNT(*)As TotalTransactions,
SUM(quantity) As TotalQuantitySold,
SUM(quantity * unit_price) As TotalSalesValue,
AVG(unit_price) As AverageUnitPrice
from sales_transactions1
Group By  salesperson order by TotalSalesValue desc; 


--4--

select city,
COUNT(*)As TotalTransactions,
SUM(quantity) As TotalQuantitySold,
SUM(quantity * unit_price) As TotalSalesValue,
AVG(unit_price) As AverageUnitPrice
from sales_transactions1
Group By  city order by TotalSalesValue desc; 


--5--

select customer_type,
COUNT(*)As TotalTransactions,
SUM(quantity) As TotalQuantitySold,
SUM(quantity * unit_price) As TotalSalesValue,
AVG(unit_price) As AverageUnitPrice
from sales_transactions1
Group By  customer_type order by TotalSalesValue desc; 


--6--

select payment_mode,
COUNT(*)As TotalTransactions,
SUM(quantity) As TotalQuantitySold,
SUM(quantity * unit_price) As TotalSalesValue,
AVG(unit_price) As AverageUnitPrice
from sales_transactions1
Group By  payment_mode order by TotalSalesValue desc; 


--7--

select 
category As Category,
SUM(quantity) As TotalQuantitySold,
SUM( quantity * unit_price) As TotalSalesValue,
AVG(unit_price) As AverageUnitPrice
from sales_transactions1
Group By category
HAVING SUM( quantity * unit_price)>300000;


 --8--

 select 
 salesperson As SalesPerson,
 COUNT(*)As TotalTransactions,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue
 from sales_transactions1
 Group By salesperson
 HAVING SUM(quantity * unit_price)>500000
 Order By TotalSalesValue desc;


 --9--

 select
 product_name As ProductName,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue,
 AVG(unit_price) As AverageUnitPrice
 from sales_transactions1
 Group By product_name 
 Having SUM(quantity)>5
 Order By TotalQuantitySold desc;

 --10--

 select
 category,
 COUNT(*)As TotalTransactions,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue,
 AVG(unit_price) As AverageUnitPrice
 from sales_transactions1
 where customer_type='Premium'
 Group By category
 Having SUM(quantity * unit_price)>200000;


 --11--

 select
 salesperson,
 COUNT(*)As TotalTransactions,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue
 from sales_transactions1
 where customer_type='VIP'
 Group By salesperson
 Having SUM(quantity * unit_price)>300000;


 --12--

 select
 city,
 COUNT(*)As TotalTransactions,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue
 from sales_transactions1
 where payment_mode='Online' or payment_mode='Card'
 Group By city
 Having SUM(quantity * unit_price)>300000;

 --13--

 select
 discount_percent,
 COUNT(*)As TotalTransactions,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue,
 AVG(unit_price) As AverageUnitPrice
 from sales_transactions1
 Group By discount_percent
 Having COUNT(*)>=2;


 --14--

 select
 salesperson,
 COUNT(*)As TotalTransactions,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue,
 AVG(unit_price) As AverageUnitPrice,
 AVG(unit_price) As HighestUnitPrice
 from sales_transactions1
 where category='Electronics'
 Group By salesperson
 Having SUM(quantity * unit_price)>250000;


 --15--

 select city,
 COUNT(*) As TotalTransactions,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue,
 AVG(unit_price) As AverageUnitPrice
 from sales_transactions1
 where category='Furniture' and quantity > 2
 Group By city
 Having SUM(quantity * unit_price)> 50000;

 --16--

 select salesperson,
 COUNT(*) As TotalTransactions,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue,
 AVG(unit_price) As AverageUnitPrice
 from sales_transactions1
 where category='Appliances' and payment_mode!='Cash' and discount_percent<20
 Group By salesperson
 Having SUM(quantity * unit_price)> 100000;

 --17--

 
 select customer_type,
 COUNT(*) As TotalTransactions,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue,
 AVG(unit_price) As AverageUnitPrice,
 MAX(unit_price) As MaximumUnitPrice
 from sales_transactions1
 where customer_type in('Premium','VIP')
 Group By customer_type
 Order By TotalSalesValue desc;

 --18--

 select salesperson,
 COUNT(*) As TotalTransactions,
 SUM(quantity) As TotalQuantitySold,
 SUM(quantity * unit_price) As TotalSalesValue,
 AVG(discount_percent) As DiscountPercent
 from sales_transactions1
 where discount_percent > 15
 Group By salesperson
 Having Count(*)>=2;

 --19--

 INSERT INTO sales_transactions1
(transaction_id,
customer_name,
product_name, 
category, 
quantity, 
unit_price,
discount_percent,
city,
payment_mode,
salesperson,
customer_type)
VALUES
(1031, 'Raj Mehta', 'MacBook Pro', 'Electronics', 2, 125000, 10, 'Mumbai', 'Online', 'Rahul', 'Premium');

select * from sales_transactions1;

--20--

select salesperson,
category,
COUNT(*) As TotalTransactions,
SUM(quantity) As TotalQuantitySold,
SUM(quantity * unit_price) As TotalSalesValue,
AVG(unit_price) As AverageUnitPrice,
Min(unit_price) As MinimumUnitPrice,
MAX(unit_price) As MaximumUnitPrice,
AVG(discount_percent) As DiscountPercent
from sales_transactions1
where customer_type in('Premium','VIP') and 
payment_mode !='Cash' and
quantity > 1 and
discount_percent <20
Group By salesperson,category
Having SUM(quantity * unit_price)>200000
Order By TotalSalesValue desc;


--CRUD Operations


--Create--
select * from sales_transactions1

--Read--
select * from sales_transactions1 
where transaction_id = 1031 

--Update--
Update sales_transactions1 
set discount_percent = 12
where transaction_id= 1031;

select * from sales_transactions1;

--Delete--
Delete from sales_transactions1
where transaction_id = 1031

select * from sales_transactions1;



