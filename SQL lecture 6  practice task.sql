CREATE TABLE Cust1 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);


INSERT INTO Cust1 (customer_id, customer_name, city)
VALUES
(101, 'Aarav Shah', 'Ahmedabad'),
(102, 'Riya Patel', 'Mumbai'),
(103, 'Rahul Mehta', 'Delhi'),
(104, 'Priya Sharma', 'Ahmedabad'),
(105, 'Karan Desai', 'Pune'),
(106, 'Neha Joshi', 'Mumbai'),
(107, 'Arjun Patel', 'Bangalore'),
(108, 'Sneha Shah', 'Delhi'),
(109, 'Vivek Mehta', 'Ahmedabad'),
(110, 'Anjali Desai', 'Surat'),
(111, 'Rohan Shah', 'Pune'),
(112, 'Meera Patel', 'Mumbai'),
(113, 'Dhruv Shah', 'Ahmedabad'),
(114, 'Kavya Mehta', 'Delhi'),
(115, 'Yash Desai', 'Bangalore'),
(116, 'Ishita Patel', 'Surat'),
(117, 'Manav Shah', 'Pune'),
(118, 'Pooja Joshi', 'Mumbai'),
(119, 'Nikhil Mehta', 'Ahmedabad'),
(120, 'Tanya Shah', 'Delhi');


CREATE TABLE Prod1 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO Prod1
(product_id, product_name, category, price)
VALUES
(201, 'Laptop', 'Electronics', 60000),
(202, 'Mobile Phone', 'Electronics', 35000),
(203, 'Monitor', 'Electronics', 18000),
(204, 'Printer', 'Electronics', 14000),
(205, 'Keyboard', 'Accessories', 1500),
(206, 'Mouse', 'Accessories', 800),
(207, 'Headphones', 'Accessories', 4500),
(208, 'Office Chair', 'Furniture', 9000),
(209, 'Webcam', 'Accessories', 3500),
(210, 'Tablet', 'Electronics', 28000),
(211, 'Desk', 'Furniture', 15000),
(212, 'USB Hub', 'Accessories', 1200);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    quantity INT,
    amount DECIMAL(10,2));

    INSERT INTO Orders 
(order_id, customer_id, product_name, quantity, amount)
VALUES
(1001, 101, 'Laptop', 2, 55000),
(1002, 101, 'Mouse', 5, 800),
(1003, 101, 'Keyboard', 3, 1500),
(1004, 102, 'Laptop', 1, 62000),
(1005, 102, 'Monitor', 2, 18000),
(1006, 103, 'Mobile Phone', 2, 35000),
(1007, 103, 'Headphones', 4, 4500),
(1008, 104, 'Laptop', 1, 58000),
(1009, 104, 'Printer', 2, 12500),
(1010, 104, 'Keyboard', 5, 1400),
(1011, 105, 'Office Chair', 4, 8500),
(1012, 105, 'Monitor', 3, 17000),
(1013, 106, 'Mobile Phone', 3, 32000),
(1014, 106, 'Headphones', 5, 4200),
(1015, 107, 'Laptop', 2, 60000),
(1016, 107, 'Mouse', 10, 750),
(1017, 108, 'Monitor', 4, 16000),
(1018, 108, 'Keyboard', 6, 1300),
(1019, 109, 'Laptop', 2, 57000),
(1020, 109, 'Printer', 3, 13500),
(1021, 109, 'Mouse', 8, 700),
(1022, 110, 'Mobile Phone', 2, 36000),
(1023, 110, 'Headphones', 3, 4800),
(1024, 111, 'Laptop', 1, 65000),
(1025, 111, 'Monitor', 2, 19000),
(1026, 112, 'Printer', 4, 12000),
(1027, 112, 'Keyboard', 7, 1200),
(1028, 113, 'Laptop', 3, 54000),
(1029, 113, 'Mouse', 6, 850),
(1030, 113, 'Headphones', 4, 5000),
(1031, 114, 'Mobile Phone', 2, 34000),
(1032, 114, 'Monitor', 3, 17500),
(1033, 115, 'Laptop', 2, 59000),
(1034, 115, 'Printer', 2, 14000),
(1035, 116, 'Office Chair', 5, 9000),
(1036, 117, 'Laptop', 1, 61000),
(1037, 117, 'Keyboard', 8, 1250),
(1038, 118, 'Mobile Phone', 3, 33000),
(1039, 118, 'Headphones', 6, 4300),
(1040, 119, 'Laptop', 2, 56000),
(1041, 119, 'Monitor', 2, 18500),
(1042, 119, 'Printer', 1, 15000),
(1043, 121, 'Laptop', 1, 60000),
(1044, 122, 'Monitor', 2, 17000);


select * from Cust1;
select * from Prod1;
select * from Orders;


--Task 1--

SELECT 
Cust1.customer_id,
Cust1.customer_name,
Cust1.city,
COUNT(Orders.order_id) As Total_No_Of_Orders,
SUM(quantity) As Total_Quatity_purchase,
SUM(amount) As Toatal_Purchase_Value,
AVG(amount) As Average_Order_Value
FROM Cust1
inner join Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.customer_id,
Cust1.customer_name,
Cust1.city
HAVING 
COUNT(order_id)>=3 
and SUM(amount)>75000
ORDER BY 
Toatal_Purchase_Value desc;

--Task 2--

SELECT 
Cust1.city,
COUNT(Cust1.customer_id) As Total_No_Of_Customers,
COUNT(Orders.order_id) As Total_No_Of_Orders,
SUM(Orders.quantity) As Total_Quantity_Sold,
SUM(Orders.amount) As Total_Sales_Value,
AVG(Orders.amount) As Average_Order_Value
FROM Cust1
inner join Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.city
HAVING 
SUM(Orders.amount)>100000
ORDER BY 
Total_Sales_Value desc;


--Task 3--

SELECT
Cust1.customer_id,
Cust1.customer_name,
Cust1.city,
COUNT(Orders.order_id) As No_Of_Orders,
SUM(Orders.amount) As Total_Purchase_Value,
MAX(Orders.amount) As Highest_Transaction_Value
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id=Orders.customer_id
GROUP BY 
Cust1.customer_id,
Cust1.customer_name,
Cust1.city
HAVING 
MAX(Orders.amount)>=25000 
AND SUM(Orders.amount)>50000;


--Task 4--

SELECT 
Cust1.customer_id,
Cust1.customer_name,
Cust1.city,
COUNT(Orders.order_id) As No_Of_Orders,
SUM(quantity) As  Total_Quantity_Purchase,
SUM(Orders.amount) As Total_Purchase_Value,
AVG(Orders.amount) AS Average_Order_Value
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.customer_id,
Cust1.customer_name,
Cust1.city
HAVING 
COUNT(Orders.order_id) > 4
ORDER BY
No_Of_Orders DESC,Total_Purchase_Value DESC;

--Task 5--

SELECT 
Orders.product_name,
COUNT(Orders.order_id) As No_Of_Orders,
SUM(Orders.quantity) As Total_Quantity_Sold,
SUM(Orders.amount) As Total_Revenue,
AVG(Orders.amount) As Average_Order_Amount,
MAX(Orders.amount) As Highest_Order_Amount
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY 
Orders.product_name
HAVING
COUNT(Orders.order_id) >=3
ORDER BY 
Total_Revenue DESC;


--Task 6--

SELECT
Orders.product_name AS Product_Name,
SUM(Orders.quantity) AS Total_Quantity_Sold,
COUNT(Orders.order_id) AS Number_Of_Orders,
SUM(Orders.amount) AS Total_Revenue
FROM Orders
GROUP BY
Orders.product_name
HAVING
SUM(Orders.quantity) > 100
AND COUNT(Orders.order_id) > 5
ORDER BY
Total_Revenue DESC;


--Task 7--

SELECT
Cust1.city,
COUNT(DISTINCT Cust1.customer_id) AS Total_Customers,
COUNT(Orders.order_id) AS Total_Orders,
SUM(Orders.quantity) AS Total_Quantity_Sold,
SUM(Orders.amount) AS Total_Revenue
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.city
HAVING
COUNT(DISTINCT Cust1.customer_id) >= 3
AND COUNT(Orders.order_id) >= 5
AND SUM(Orders.amount) > 200000
ORDER BY
Total_Revenue DESC;


--Task -8-

SELECT
Cust1.customer_id,
Cust1.customer_name,
Cust1.city,
COUNT(Orders.order_id) AS Number_Of_Orders,
MIN(Orders.amount) AS Minimum_Order_Value,
MAX(Orders.amount) AS Maximum_Order_Value,
AVG(Orders.amount) AS Average_Order_Value,
SUM(Orders.amount) AS Total_Purchase_Value
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.customer_id,
Cust1.customer_name,
Cust1.city
HAVING
COUNT(Orders.order_id) >= 3;


--Task 9--


SELECT
Cust1.customer_id,
Cust1.customer_name,
Cust1.city,
COUNT(Orders.order_id) AS Number_Of_Orders,
SUM(Orders.quantity) AS Total_Quantity_Purchased,
SUM(Orders.amount) AS Total_Purchase_Value
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.customer_id,
Cust1.customer_name,
Cust1.city
HAVING
COUNT(Orders.order_id) >= 5
ORDER BY
Number_Of_Orders DESC;


--Task 10--

SELECT
Cust1.customer_id,
Cust1.customer_name,
Cust1.city,
COUNT(Orders.order_id) AS Number_Of_Orders,
SUM(Orders.amount) AS Total_Purchase_Value
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.customer_id,
Cust1.customer_name,
Cust1.city
HAVING
COUNT(Orders.order_id) IN (1, 2)
ORDER BY
Total_Purchase_Value DESC;


--Task 11--

SELECT
Cust1.customer_id,
Cust1.customer_name,
Cust1.city,
COUNT(Orders.order_id) AS Number_Of_Orders,
SUM(Orders.quantity) AS Total_Quantity_Purchased,
SUM(Orders.amount) AS Total_Purchase_Value
FROM Cust1
LEFT JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.customer_id,
Cust1.customer_name,
Cust1.city;


--Task 12--

SELECT
Cust1.customer_id,
Cust1.customer_name,
Cust1.city
FROM Cust1
LEFT JOIN Orders
ON Cust1.customer_id = Orders.customer_id
WHERE Orders.order_id IS NULL;


--Task 13--

SELECT
Cust1.customer_id,
Cust1.customer_name,
Cust1.city,
COUNT(Orders.order_id) AS Number_Of_Orders,
SUM(Orders.amount) AS Total_Purchase_Value
FROM Cust1
LEFT JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.customer_id,
Cust1.customer_name,
Cust1.city;


--Task 14--

SELECT
Prod1.product_id,
Prod1.product_name,
Prod1.category,
Prod1.price
FROM Prod1
LEFT JOIN Orders
ON Prod1.product_name = Orders.product_name
WHERE Orders.order_id IS NULL;


--Task 15--

SELECT
Cust1.customer_id,
Cust1.customer_name,
Cust1.city,
Orders.order_id,
Orders.product_name,
Orders.quantity,
Orders.amount
FROM Cust1
FULL OUTER JOIN Orders
ON Cust1.customer_id = Orders.customer_id;


--Task 16--

SELECT
Cust1.customer_id AS Customer_ID,
Cust1.customer_name AS Customer_Name,
Orders.order_id AS Order_ID,
Orders.product_name AS Product_Name,
Orders.amount AS Amount
FROM Cust1
FULL OUTER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
WHERE
Cust1.customer_id IS NULL
OR Orders.customer_id IS NULL;


--Task 17--

SELECT
Cust1.customer_id AS Customer_ID,
Cust1.customer_name AS Customer_Name,
Cust1.city AS City,
Orders.order_id AS Order_ID,
Orders.product_name AS Product_Name,
Orders.quantity AS Quantity,
Orders.amount AS Amount,
Orders.quantity * Orders.amount AS Transaction_Value
FROM Cust1
FULL OUTER JOIN Orders
ON Cust1.customer_id = Orders.customer_id;


--Task 18--

SELECT
Cust1.customer_id AS Customer_ID,
Cust1.customer_name AS Customer_Name,
Cust1.city AS City
FROM Cust1
LEFT JOIN Orders
ON Cust1.customer_id = Orders.customer_id
WHERE Orders.order_id IS NULL;


--Task 19--

SELECT
Prod1.product_id AS Product_ID,
Prod1.product_name AS Product_Name,
Prod1.category AS Category,
Prod1.price AS Price
FROM Prod1
LEFT JOIN Orders
ON Prod1.product_name = Orders.product_name
WHERE Orders.order_id IS NULL;


--Task 20--

SELECT
Cust1.customer_id AS Customer_ID,
Cust1.customer_name AS Customer_Name,
Cust1.city AS City
FROM Cust1
LEFT JOIN Orders
ON Cust1.customer_id = Orders.customer_id
WHERE Orders.order_id IS NULL;


--Task 21--

SELECT
Prod1.product_id AS Product_ID,
Prod1.product_name AS Product_Name,
Prod1.category AS Category,
Prod1.price AS Price
FROM Prod1
LEFT JOIN Orders
ON Prod1.product_name = Orders.product_name
WHERE Orders.order_id IS NULL
ORDER BY Prod1.price DESC;


--Task 22--

SELECT
Cust1.customer_id AS Customer_ID,
Cust1.customer_name AS Customer_Name,
Cust1.city AS City,
Prod1.product_id AS Product_ID,
Prod1.product_name AS Product_Name,
Prod1.category AS Category
FROM Cust1
CROSS JOIN Prod1;


--Task 23--

SELECT
COUNT(*) AS Total_Combinations
FROM Cust1
CROSS JOIN Prod1;


--Task 24--
SELECT 
    Cust1.city,
    Prod1.product_name
FROM Cust1 
CROSS JOIN Prod1 
GROUP BY Cust1.city,Prod1.product_name ;


--Task 25--

SELECT
Cust1.customer_id AS Customer_ID,
Cust1.customer_name AS Customer_Name,
Cust1.city AS City,
COUNT(Orders.order_id) AS Number_Of_Orders,
SUM(Orders.quantity) AS Total_Quantity_Purchased,
SUM(Orders.amount) AS Total_Revenue,
AVG(Orders.amount) AS Average_Order_Value,
MAX(Orders.amount) AS Maximum_Order_Value
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.customer_id,
Cust1.customer_name,
Cust1.city
HAVING
COUNT(Orders.order_id) >= 3
ORDER BY
Total_Revenue DESC,
Number_Of_Orders DESC,
Average_Order_Value DESC;


--Task 26--

SELECT
Orders.product_name AS Product_Name,
COUNT(Orders.order_id) AS Number_Of_Orders,
SUM(Orders.quantity) AS Total_Quantity_Sold,
SUM(Orders.amount) AS Total_Revenue,
AVG(Orders.amount) AS Average_Order_Value,
MAX(Orders.amount) AS Maximum_Order_Value
FROM Orders
GROUP BY
Orders.product_name
HAVING
COUNT(Orders.order_id) >= 5
AND SUM(Orders.amount) > 200000;


--Task 27--

SELECT
Cust1.city AS City,
COUNT(DISTINCT Cust1.customer_id) AS Number_Of_Customers,
COUNT(Orders.order_id) AS Number_Of_Orders,
SUM(Orders.quantity) AS Total_Quantity_Sold,
SUM(Orders.amount) AS Total_Revenue,
AVG(Orders.amount) AS Average_Order_Value
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.city
HAVING
COUNT(DISTINCT Cust1.customer_id) >= 5
AND COUNT(Orders.order_id) > 10
AND SUM(Orders.amount) > 500000;


--Task 28--

SELECT
Cust1.customer_id AS Customer_ID,
Cust1.customer_name AS Customer_Name,
Cust1.city AS City,
COUNT(Orders.order_id) AS Number_Of_Qualifying_Orders,
SUM(Orders.quantity * Orders.amount) AS Total_Value_Of_Qualifying_Orders
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
WHERE
Orders.quantity * Orders.amount > 25000
GROUP BY
Cust1.customer_id,
Cust1.customer_name,
Cust1.city
HAVING
COUNT(Orders.order_id) >= 2;


--Task 29--

SELECT
Orders.product_name AS Product_Name,
COUNT(Orders.order_id) AS Number_Of_Orders,
SUM(Orders.quantity) AS Total_Quantity_Sold,
SUM(Orders.amount) AS Total_Revenue,
AVG(Orders.amount) AS Average_Order_Value
FROM Orders
GROUP BY
Orders.product_name
HAVING
SUM(Orders.quantity) > 100
AND COUNT(Orders.order_id) >= 5
AND SUM(Orders.amount) > 100000;


--Task 30--

SELECT
Cust1.customer_id AS Customer_ID,
Cust1.customer_name AS Customer_Name,
Cust1.city AS City,
COUNT(Orders.order_id) AS Number_Of_Orders,
SUM(Orders.quantity) AS Total_Quantity_Purchased,
SUM(Orders.amount) AS Total_Purchase_Value,
AVG(Orders.amount) AS Average_Order_Value,
MIN(Orders.amount) AS Minimum_Order_Value,
MAX(Orders.amount) AS Maximum_Order_Value
FROM Cust1
INNER JOIN Orders
ON Cust1.customer_id = Orders.customer_id
GROUP BY
Cust1.customer_id,
Cust1.customer_name,
Cust1.city
HAVING
COUNT(Orders.order_id) >= 3
AND SUM(Orders.amount) > 100000
ORDER BY
Total_Purchase_Value DESC;

