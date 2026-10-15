create database samplesuperstoredb;

use samplesuperstoredb;


--LEVEL:1--

--------------
select*from samplesuperstore;

--Display only:-Order_ID,Order_Date,Customer_Name,Category,Sales,Profit--
select Order_ID,
Order_Date,
Customer_Name,
Category,
Sales,
Profit
From samplesuperstore;

--Find all orders where Sales is greater than 500.--
Select Order_ID,
Sales 
From samplesuperstore
Where Sales>500;

--Find all products where Profit is negative.--
Select
Product_ID,
Profit
From samplesuperstore
Where Profit<0;

--Find all orders belonging to the Consumer segment.--
Select Order_ID,
Customer_Name,
Segment 
From samplesuperstore
Where Segment='Consumer';

--Display all orders from the Technology category.--
Select Order_ID,
Product_Name,
Category
From samplesuperstore
Where Category='Technology';

--Find all orders where Discount is greater than 0.20.--
Select Order_ID,
Discount
From samplesuperstore
Where Discount>0.20;

--Display orders shipped using First Class.--
Select 
Order_ID,
Ship_Mode
From samplesuperstore
Where Ship_Mode='First Class';

--Find all records from the West region.--
Select * from samplesuperstore
Where Region='West';

--Display products whose name contains the word Chair.--
Select 
Product_Name,
Sub_Category
From samplesuperstore
Where Sub_Category='Chairs';




--LEVEL:2--

--Display the 20 highest-sales orders.--
Select top 20 Order_ID,
Sales
From samplesuperstore 
Order By Sales DESC;

--Display the 20 orders with the lowest profit.--
Select top 20 Order_ID,
Profit
From samplesuperstore
Order BY Profit ASC;

--Display all unique: *Categories,*Sub-Categories,*Segments,*Regions--
Select Distinct
Category,
Sub_Category,
Segment,
Region
From samplesuperstore;

--Display products sorted by Sales from highest to lowest.--
Select 
Product_ID,
Product_Name,
Sales
From samplesuperstore
Order By Sales DESC;

--Display products sorted by Profit from lowest to highest.--
Select 
Product_ID,
Profit
From samplesuperstore
Order By Profit ASC;

--Display customers alphabetically by Customer_Name.--
Select 
Customer_Name
From samplesuperstore
Order By Customer_Name ASC;

--Display the orders with the highest discount.--
Select Order_ID,
Discount
From samplesuperstore
Order By Discount DESC;

--Display the 10 most expensive individual sales transactions.--
Select Top 10 
Order_ID,
Sales
From samplesuperstore
Order By Sales Desc; 





--LEVEL:3--

--Find the total sales--
Select 
Sum(Sales) As Total_Sales
From samplesuperstore;

--Find the total profit.--
Select 
Sum(Profit) As Total_Profit
From samplesuperstore;

--Find the average sales.
Select 
Avg(Sales) As Average_Sales
From samplesuperstore;

--Find the average profit.--
Select 
Avg(Profit) As Average_Profit
From samplesuperstore;

--Find the minimum and maximum sales.--
Select
Min(Sales) As Minimun_Sales,
Max(Sales) As Maximum_Sales
From samplesuperstore;

--Find the minimum and maximum profit.--
Select
Min(Profit) As Minimun_Profit,
Max(Profit) As Maximum_Profit
From samplesuperstore;

--Count the total number of records.--
Select 
Count(*) As Total_Number_Of_Records
From samplesuperstore;

--Count the number of unique customers.--
Select 
Count(Distinct Customer_ID) As Unique_Customers
From samplesuperstore;

--Count the number of unique products.--
Select 
Count(Distinct Product_ID) As Unique_Products
From samplesuperstore;

--Find the total quantity sold.--
Select 
Sum(Quantity) As Total_Quantity_Sold
From samplesuperstore;






--LEVEL:4--

--Find total sales by category.--
Select 
Sum(Sales) As Total_sales,
Category 
From samplesuperstore
Group By Category;

--Find total profit by category.--
Select 
Sum(Profit) As Total_Profit,
Category 
From samplesuperstore
Group By Category;

--Find average sales by category.--
Select 
Avg(Sales) As Average_sales,
Category 
From samplesuperstore
Group By Category;

--Find total sales by sub-category.--
Select 
Sum(Sales) As Total_sales,
Sub_Category 
From samplesuperstore
Group By Sub_Category;

--Find total profit by sub-category.--
Select 
Sum(Profit) As Total_Profit,
Sub_Category 
From samplesuperstore
Group By Sub_Category;

--Find total sales by region.--
Select 
Sum(Sales) As Total_sales,
Region 
From samplesuperstore
Group By Region;

--Find total profit by region.--
Select 
Sum(Profit) As Total_Profit,
Region 
From samplesuperstore
Group By Region;

--Find total sales by customer segment.--
Select 
Sum(Sales) As Total_sales,
Segment 
From samplesuperstore
Group By Segment;

--Find total quantity sold by category.--
Select 
Sum(Quantity) As Total_Quantity_Sold,
Category
From samplesuperstore
Group By Category;

--Find the number of orders for each ship mode.--
Select 
Count(Order_ID) As Number_Of_Orders,
Ship_Mode
From samplesuperstore
Group By Ship_Mode;

--Find the number of customers in each segment.--
Select 
Count(Customer_ID) As Number_Of_Customers,
Segment
From samplesuperstore
Group By Segment;

--Find total sales by state.--
Select 
Sum(Sales) As Total_sales,
State_Province 
From samplesuperstore
Group By State_Province;





--LEVEL 5--

--Find categories whose total sales are greater than 100,000--
Select 
Category,
Sum(Sales) As Total_Sales
From 
samplesuperstore
Group By
Category
Having Sum(Sales)>100000;

--Find sub-categories whose total profit is greater than 10,000.--
Select 
Sub_Category,
Sum(Profit) As Total_Profit
From 
samplesuperstore
Group By 
Sub_Category
Having Sum(Profit)>10000;

--Find customers whose total sales exceed 5,000.--
Select 
Customer_ID,
Sum(Sales) As Total_Sales
From 
samplesuperstore
Group By 
Customer_ID
Having Sum(Sales)>=5000;

--Find states whose total sales exceed 50,000--
Select 
State_Province,
Sum(Sales) As Total_Sales
From
samplesuperstore
Group By 
State_Province
Having Sum(Sales)>=50000;

--Find products whose total sales exceed 10,000.--
Select 
Product_ID,
Sum(Sales) As Total_Sales
From
samplesuperstore
Group By 
Product_ID
Having Sum(Sales)>=10000;

--Find categories having an average discount greater than 20%.--
Select Category,
Avg(Discount) As Average_Discount
From  
samplesuperstore
Group By 
Category
Having Avg(Discount)>20;

--Find customers who have placed more than 10 orders.--
Select Customer_ID,
Count(Order_ID) As Total_Order
From samplesuperstore
Group By Customer_ID
Having Count(Order_ID)>10;

--Find sub-categories with total profit below 0.--
Select Sub_Category,
Sum(Profit) As Total_Profit
From samplesuperstore
Group By Sub_Category
Having Sum(Profit)<0;






--LEVEL 6--

--Create a column called Profit_Status:-Profit > 0  → Profitable,Profit < 0 → Loss,Profit = 0 → No Profit--   

SELECT *,
CASE
WHEN Profit > 0 THEN 'Profitable'
WHEN Profit < 0 THEN 'Loss'
ELSE 'No Profit'
END AS Profit_Status
FROM samplesuperstore;


--Create a Sales_Category:- Sales < 100 → Low ,100–500 → Medium ,501–1000 → High ,>1000 → Very High--
SELECT *,
Case
When Sales < 100 Then 'LOW'
When Sales Between 100 And 500 Then 'Medium'
When Sales Between 501 And 1000 Then 'High'
Else 'Very High'
End As Sales_Category
From samplesuperstore;


--Classify discounts into:- 0 → No Discount ,0–10% → Low,10–30% → Medium ,>30% → High--
SELECT 
    *,
    CASE
        WHEN Discount = 0 THEN 'No Discount'
        WHEN Discount > 0 AND Discount <= 0.10 THEN 'Low'
        WHEN Discount > 0.10 AND Discount <= 0.30 THEN 'Medium'
        WHEN Discount > 0.30 THEN 'High'
    END AS Discount_Category
FROM samplesuperstore;

---Wrong---

SELECT
Category,
SUM(Sales) AS Total_Sales,
CASE
WHEN SUM(Sales) < 100 Then 'LOW'
When Sales Between 100 And 500 Then 'Medium'
When Sales Between 501 And 1000 Then 'High'
Else 'Very High'
End As Sales_Category
FROM samplesuperstore
Group By Category;






--LEVEL:-7--


--Find Consumer customers from the West region.--
SELECT *
FROM samplesuperstore
WHERE Segment = 'Consumer'
AND Region = 'West';


--Find Technology products with sales above 1,000.--
Select *
From samplesuperstore
Where Category='Technology'
And Sales >1000;

--Find orders where:- *Sales > 500,*Profit > 100 ,*Discount < 20%--
Select *
From samplesuperstore
Where Sales > 500
And Profit > 100
And Discount < 0.20;

--Find Furniture orders where profit is negative.--
Select *
From samplesuperstore
Where Category='Furniture'
And Profit < 0;

--Find Corporate customers who purchased Technology products.--
Select *
From samplesuperstore
Where Segment ='Corporate'
And Category ='Technology';

--Find orders from the East region with discounts greater than 30%.--
Select * 
From samplesuperstore
Where Region ='East'
And Discount > 0.30;





--LEVEL:-8--

--Find the earliest order date.--
select 
MIN(Order_Date) AS Earliest_Order_date 
from samplesuperstore; 

--Find the latest order date.--
select 
MAX(Order_Date) AS Latest_Order_date 
from samplesuperstore;

--Find total sales by year.--
select 
Year(Order_Date) AS Year_Order,
SUM(Sales) AS total_sales
from samplesuperstore
group by Year(Order_Date)
order by Year_Order;

--Find total profit by year.--
select 
Year(Order_Date) AS year_Order,
Sum(Profit) AS Total_Profit
from samplesuperstore
group by Year(Order_Date)
order by Year_Order;

--Find total sales by month.--
select 
Month(Order_Date) AS month_Order,
SUM(Sales) AS totalsales
from samplesuperstore
group by Month(Order_Date)
order by month_Order;

--Find the number of orders placed in each year.--
    select
    YEAR (Order_Date) AS Order_year,
    COUNT(*) AS number_of_orders
    from samplesuperstore
    group by YEAR (Order_Date)
    order by Order_year;

--Find sales for each year and category.--
       select
       category,
       Year(Order_date) AS Order_year,
       SUM(sales) AS total_sales
       from samplesuperstore 
       group by category,
       Year(Order_date)
       order by Order_year,
       category;

--Find the year with the highest total sales--
     select top 1
     Year(Order_date) AS Order_year,
     sum(sales) AS totalsales
     from samplesuperstore
     group by Year(Order_date)
     order by totalsales desc;

--Find the month with the highest sales.--
     select top 1
     Month(Order_date) AS Order_month,
     sum(sales) AS total_sales
     from samplesuperstore
     group by Month(Order_date)
     order by total_sales desc;

--Find orders where the shipping date is later than the order date by more than 5 days.--


 select * 
 From samplesuperstore
 Where DATEDIFF(Day,Order_Date,Ship_Date)>5;














--LEVEL:-9--


--Find products whose sales are greater than the average sales of all products.--


--Find customers whose total sales are greater than the average customer sales.--
