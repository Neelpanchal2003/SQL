CREATE DATABASE SalesAnalyticsDB;

USE SalesAnalyticsDb;

CREATE TABLE customers(
id INT PRIMARY KEY,
user_name VARCHAR(50),
age INT,
country VARCHAR(50),
amount_spend INT
);

INSERT INTO customers(id,user_name,age,country,amount_spend)
VALUES 
(1,'NEEL',20,'INDIA',40000),
(2,'HELI',25,'INDIA',23000),
(3,'PIYU',24,'INDIA',56000),
(4,'DARSHAN',32,'INDIA',15000),
(5,'DISHA',28,'INDIA',7000),
(6,'NIDHI',18,'INDIA',67000),
(7,'KRISHVA',19,'INDIA',28000),
(8,'BHAVNA',50,'INDIA',30000),
(9,'HARSHAD',55,'INDIA',26000),
(10,'KALPESH',65,'INDIA',47000),
(11,'MOKSHI',36,'INDIA',18000),
(12,'MAHIR',31,'INDIA',18000),
(13,'HEER',38,'INDIA',64000),
(14,'KRISHNA',47,'INDIA',10000),
(15,'RADHA',62,'INDIA',12000);

SELECT * FROM customers;

SELECT user_name,age,country from customers;

SELECT user_name,country,amount_spend from customers;

SELECT *FROM customers 
where amount_spend >50000;

SELECT *FROM customers 
where age < 30;

SELECT *FROM customers 
where country ='INDIA';

SELECT *FROM customers 
where amount_spend >20000;

SELECT *FROM customers 
where age <30 and amount_spend >30000;

SELECT *FROM customers 
where country ='INDIA' and amount_spend > 40000;

SELECT *FROM customers 
where country ='INDIA' or country = 'USA';

SELECT *FROM customers 
where country ='INDIA' or country = 'USA' and amount_spend >50000;

SELECT *FROM customers 
where  not country ='INDIA';

SELECT * FROM customers order by amount_spend asc;

SELECT * FROM customers order by amount_spend desc;

SELECT user_name ,age , country, amount_spend from customers order by age desc;

SELECT * from customers where (age between 25 and 40) and (amount_spend > 30000) and (country ='INDIA' )or  (country ='USA') order by 
amount_spend desc;

SELECT * from customers where age >=30 and amount_spend > 40000 and not country='INDIA' order by 
amount_spend desc;






(1, 'Rahul Sharma', 'Laptop', 'Electronics', 1, 55000, 10, 'Ahmedabad', 'UPI', 'Amit Patel', 'Regular'),
(2, 'Priya Shah', 'Smartphone', 'Electronics', 2, 28000, 5, 'Mumbai', 'Credit Card', 'Neha Desai', 'Premium'),
(3, 'Amit Patel', 'Office Chair', 'Furniture', 2, 7500, 8, 'Surat', 'Cash', 'Rohan Mehta', 'Regular'),
(4, 'Neha Mehta', 'Running Shoes', 'Footwear', 1, 4500, 15, 'Pune', 'UPI', 'Karan Shah', 'New'),
(5, 'Vikram Joshi', 'T-Shirt', 'Clothing', 4, 1200, 5, 'Delhi', 'Debit Card', 'Priya Patel', 'Regular'),
(6, 'Sneha Patel', 'Washing Machine', 'Appliances', 1, 32000, 12, 'Ahmedabad', 'Credit Card', 'Amit Patel', 'Premium'),
(7, 'Rakesh Kumar', 'Headphones', 'Electronics', 3, 2500, 10, 'Jaipur', 'UPI', 'Neha Desai', 'Regular'),
(8, 'Kavita Shah', 'Dining Table', 'Furniture', 1, 18000, 7, 'Vadodara', 'Bank Transfer', 'Rohan Mehta', 'Premium'),
(9, 'Manish Patel', 'Jeans', 'Clothing', 2, 2200, 10, 'Rajkot', 'Cash', 'Karan Shah', 'Regular'),
(10, 'Pooja Mehta', 'Mixer Grinder', 'Appliances', 1, 6500, 5, 'Nashik', 'UPI', 'Priya Patel', 'New'),
(11, 'Arjun Singh', 'Smartwatch', 'Electronics', 2, 6000, 15, 'Delhi', 'Credit Card', 'Amit Patel', 'Premium'),
(12, 'Nisha Joshi', 'Sofa Set', 'Furniture', 1, 42000, 10, 'Mumbai', 'Bank Transfer', 'Neha Desai', 'Premium'),
(13, 'Harsh Shah', 'Formal Shirt', 'Clothing', 3, 1800, 8, 'Surat', 'UPI', 'Rohan Mehta', 'Regular'),
(14, 'Komal Patel', 'Air Conditioner', 'Appliances', 1, 48000, 12, 'Ahmedabad', 'Credit Card', 'Karan Shah', 'Premium'),
(15, 'Suresh Kumar', 'Casual Shoes', 'Footwear', 2, 3200, 10, 'Indore', 'Debit Card', 'Priya Patel', 'Regular'),
(16, 'Anjali Shah', 'Tablet', 'Electronics', 1, 22000, 5, 'Vadodara', 'UPI', 'Amit Patel', 'New'),
(17, 'Deepak Mehta', 'Bookshelf', 'Furniture', 2, 5500, 6, 'Pune', 'Cash', 'Neha Desai', 'Regular'),
(18, 'Riya Patel', 'Kurti', 'Clothing', 3, 1600, 10, 'Ahmedabad', 'UPI', 'Rohan Mehta', 'Regular'),
(19, 'Yash Joshi', 'Refrigerator', 'Appliances', 1, 38000, 15, 'Surat', 'Credit Card', 'Karan Shah', 'Premium'),
(20, 'Meena Shah', 'Sports Shoes', 'Footwear', 1, 5200, 12, 'Mumbai', 'Debit Card', 'Priya Patel', 'New'),
(21, 'Nitin Patel', 'Monitor', 'Electronics', 2, 14500, 8, 'Rajkot', 'UPI', 'Amit Patel', 'Regular'),
(22, 'Bhavna Mehta', 'Wardrobe', 'Furniture', 1, 25000, 10, 'Jaipur', 'Bank Transfer', 'Neha Desai', 'Premium'),
(23, 'Raj Malhotra', 'Jacket', 'Clothing', 2, 3500, 15, 'Delhi', 'Credit Card', 'Rohan Mehta', 'Regular'),
(24, 'Simran Kaur', 'Microwave Oven', 'Appliances', 1, 12000, 7, 'Chandigarh', 'UPI', 'Karan Shah', 'New'),
(25, 'Mohit Shah', 'Sandals', 'Footwear', 3, 1800, 5, 'Vadodara', 'Cash', 'Priya Patel', 'Regular'),
(26, 'Isha Patel', 'Gaming Laptop', 'Electronics', 1, 85000, 10, 'Ahmedabad', 'Credit Card', 'Amit Patel', 'Premium'),
(27, 'Kunal Joshi', 'Coffee Table', 'Furniture', 1, 8500, 8, 'Nashik', 'UPI', 'Neha Desai', 'Regular'),
(28, 'Tanvi Shah', 'Saree', 'Clothing', 2, 4500, 12, 'Surat', 'Debit Card', 'Rohan Mehta', 'Premium'),
(29, 'Vishal Patel', 'Air Cooler', 'Appliances', 2, 9000, 10, 'Indore', 'UPI', 'Karan Shah', 'Regular'),
(30, 'Ayesha Khan', 'Bluetooth Speaker', 'Electronics', 3, 3500, 5, 'Mumbai', 'Credit Card', 'Priya Patel', 'New');






