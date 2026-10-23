Create Database SalesDataDb;

Use SalesDataDb;

CREATE TABLE SalesData(
    order_id INT,
    customer_name VARCHAR(50),

    phone VARCHAR(15),
    mobile VARCHAR(15),
    office_phone VARCHAR(15),
    home_phone VARCHAR(15),

    product_name VARCHAR(50),
    price DECIMAL(10,4),
    quantity INT,

    profit DECIMAL(10,2),
    discount DECIMAL(5,2),

    order_date DATE,
    delivery_date DATE,

    returns DECIMAL(10,2),
    sales DECIMAL(10,2),

    radius DECIMAL(10,2)
);


INSERT INTO SalesData
VALUES
(1, 'Rahul',
 '9876543210', '9876543210', NULL, NULL,
 'Laptop', 55000.4567, 2,
 5000.00, 10.00,
 '2025-01-15', '2025-01-20',
 1000.00, 110000.00, 5),

(2, 'Priya',
 NULL, NULL, '9123456780', NULL,
 'Mouse', 799.9999, 5,
 -500.00, 5.00,
 '2025-02-10', '2025-02-15',
 500.00, 4000.00, 10),

(3, 'Amit',
 '9988776655', NULL, NULL, '9090909090',
 'Keyboard', 1299.5678, 3,
 800.00, NULL,
 '2025-03-22', '2025-03-28',
 0.00, 3900.00, 7.5),

(4, 'Sneha',
 NULL, NULL, NULL, NULL,
 'Monitor', 15499.9955, 1,
 0.00, 15.00,
 '2025-04-05', NULL,
 1000.00, 15500.00, 12),

(5, 'Karan',
 '9012345678', '9012345678', '8123456789', NULL,
 'Headphones', 2499.4999, 4,
 1200.00, NULL,
 '2025-05-18', '2025-05-23',
 300.00, 10000.00, 3.5),

(6, 'Neha',
 NULL, NULL, NULL, '7894561230',
 'Printer', 8999.8755, 2,
 -1500.00, 20.00,
 '2025-06-12', NULL,
 2000.00, 18000.00, 6),

(7, 'Mohit',
 '9876501234', NULL, '8765432109', NULL,
 'Webcam', 1899.1234, 6,
 2500.00, 8.00,
 '2025-07-25', '2025-07-30',
 500.00, 11400.00, 8),

(8, 'Riya',
 NULL, NULL, NULL, NULL,
 'Speaker', 3499.9999, 3,
 0.00, NULL,
 '2025-08-14', NULL,
 0.00, 10500.00, 4),

(9, 'Rahul',
 '9876543210', '9876543210', NULL, NULL,
 'Mouse', 799.9999, 10,
 1800.00, 12.00,
 '2026-01-10', '2026-01-14',
 200.00, 8000.00, 9),

(10, 'Priya',
 NULL, NULL, '9123456780', NULL,
 'Keyboard', 1299.5678, 7,
 2100.00, NULL,
 '2026-02-20', '2026-02-25',
 300.00, 9100.00, 11),

(11, 'Amit',
 '9988776655', NULL, NULL, '9090909090',
 'Monitor', 15499.9955, 2,
 3500.00, 10.00,
 '2026-03-11', NULL,
 1000.00, 31000.00, 15),

(12, 'Sneha',
 NULL, NULL, NULL, NULL,
 'Headphones', 2499.4999, 5,
 -1000.00, NULL,
 '2026-04-08', '2026-04-15',
 500.00, 12500.00, 2.5),

(13, 'Karan',
 '9012345678', '9012345678', '8123456789', NULL,
 'Printer', 8999.8755, 1,
 0.00, 5.00,
 '2026-05-19', NULL,
 0.00, 9000.00, 13),

(14, 'Neha',
 NULL, NULL, NULL, '7894561230',
 'Webcam', 1899.1234, 8,
 3200.00, NULL,
 '2026-06-21', '2026-06-26',
 400.00, 15200.00, 7),

(15, 'Mohit',
 '9876501234', NULL, '8765432109', NULL,
 'Speaker', 3499.9999, 4,
 -2000.00, 18.00,
 '2026-07-16', NULL,
 1500.00, 14000.00, 10);

 Select * From SalesData;


 --Numeric Function Exercises--

 ---Task 1--

--Display the absolute value of the profit column.--
Select 
ABS(Profit)As Absolute_Profit
From SalesData;


--Task 2--

--Display product prices rounded to 2 decimal places.--
Select 
ROUND(Price,2)As Round_Price
From SalesData;


--Task 3--

--Display the ceiling value of every product price.--
Select 
CEILING(Price) As Ceiling_Price
From SalesData;


--Task 4--

--Display the floor value of every product price.--
Select 
FLOOR(Price)As Floor_Price
From SalesData;


--Task 5--

--Calculate the square of every quantity.--
Select 
SQUARE(Quantity)As Square_Quantity
From SalesData;

--Task 6--

--Calculate the square root of a numeric column.--
Select
SQRT(Sales)As SQure_Root_Column
From SalesData;

--Task 7--

--Calculate a total order value using:- quantity × price and round the result to 2 decimal places.--
Select 
quantity,
Price,
ROUND(quantity * Price,2) As Total_Oerder
From SalesData;


--Task 8--

--Display whether each transaction has a positive, negative, or zero profit using SIGN().--
Select 
Sign(Profit)As Transaction_Table
From SalesData;


--Task 9--

--Generate a random number between 1 and 100.--
Select
Floor(Rand() * 100) + 1 As Random_Nomber
From SalesData;

--Task 10--

--Calculate the area of a circle with radius stored in a column.--

SELECT
radius,
PI() * POWER(radius, 2) AS Circle_Area
FROM SalesData;





--Date & Time Exercises--

--Task 11--

--Display the current date and time.--
Select 
GETDATE();

--Task 12--

--Display today's date without the time portion--
Select
CAST(Getdate() As Date);

--Task 13--

--Display the year from every order date.--
Select
Order_Date,
Year(Order_Date) As Order_Year
From SalesData;

--Task 14--

--Display the month number from every order date.--
Select
Order_Date,
Month(Order_Date) As Order_Month
From SalesData;

--Task 15--

--Display the name of the month from every order date.--
Select
Order_Date,
DATENAME(Month,Order_Date)As Order_Month_Name
From SalesData;

--Task 16--

--Display the weekday name for every order.--
Select
Order_Date,
DATENAME(WEEKDAY,Order_Date)As Order_Week_Name
From SalesData;

--Task 17--

--Calculate the number of days between order date and delivery date.--

Select
Order_Date,
Delivery_date,
Datediff(DAY,Order_Date,Delivery_Date)As Difference_Date
From SalesData;

--Task 18--

--Calculate an expected delivery date by adding 7 days to the order date..--
Select 
Order_Date,
DATEADD(Day,7,Order_Date)As Adding_day
From SalesData;


--Task 19--

--Display the last day of the month for every order date.--
Select
Order_Date,
EOMONTH(Order_Date)As Last_Day
From SalesData;

--Task 20--

--Display orders placed in each year and month.--
Select
YEAR(Order_Date)As Order_Year,
MONTH(Order_Date)As Order_Month,
Count(*)As Total_Order
From SalesData
Group By YEAR(Order_Date),
MONTH(Order_Date);







--NULL Handling Exercises--


--Task 21--

--Find all customers whose phone number is NULL.--
Select 
Customer_Name,
Phone
From SalesData
Where Phone IS NULL;


--Task 22--

--Find all customers whose phone number is NOT NULL.--
Select 
Customer_Name,
Phone
From SalesData
Where Phone IS NOT NULL;


--Task 23--

--Display Not Available instead of NULL phone numbers.--
Select
Phone,
ISNULL(Phone,'Not Available') As Replace_Null
From SalesData;

--Task 24--

--Display 0 instead of NULL discount values.--
Select
discount,
ISNULL(discount,0) As Replace_Null
From SalesData;

--Task 25--

Select
Customer_Name,
Coalesce(mobile,office_phone,home_phone,'Not Contact') As First_Available
From SalesData;

--Task 26--

--Find the number of rows in a table using COUNT(*).--
Select
Count(*) As Total_No_Of_Rows
From SalesData;

--Task 27--

--Find the number of non-NULL values in a specific column.--
Select
Count(Phone) As Non_Null
From SalesData;


--Task 28--

--Calculate an average while handling NULL values.--
Select
AVG(discount)As Average_Null
From SalesData;


--Task 29--

--Calculate a percentage without causing a divide-by-zero error. Use NULLIF()--
Select
(profit/NULLIF(Sales,0))*100 As Sales_Percentage
From SalesData;

--Task 30--

--Find orders where the delivery date is NULL and calculate how many days have passed since the order date.--
Select
Order_Date,
Delivery_date,
DateDiff(DAY,Order_Date,GetDate())As DayPath
From Salesdata
where delivery_date IS NULL;