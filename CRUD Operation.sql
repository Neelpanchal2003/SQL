Create Database crud;

use crud;

--1. Create a table named products--
CREATE TABLE products
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT
);

--2. Insert 5 product records--
INSERT INTO products
VALUES
(1, 'Laptop', 45000, 10),
(2, 'Mouse', 300, 50),
(3, 'Keyboard', 800, 25),
(4, 'Monitor', 12000, 15),
(5, 'Headphones', 500, 30);

--3. Display all records--
SELECT *
FROM products;

--4. Update the price of one product--
UPDATE products
SET price = 400
WHERE product_id = 2;

--5. Delete one product record--
DELETE FROM products
WHERE product_id = 5;

--6. Select only product name and price--
SELECT product_name, price
FROM products;

--7. Find products with price greater than 500--
SELECT *
FROM products
WHERE price > 500;

