CREATE database StringFunDb;

use StringFunDb;

CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Employees
VALUES
(101, 'Rahul Sharma', 'rahul.sharma@gmail.com', 'IT', 'Ahmedabad'),
(102, 'Priya Patel', 'priya.patel@gmail.com', 'HR', 'Mumbai'),
(103, 'Amit Shah', 'amit.shah@gmail.com', 'Finance', 'Ahmedabad'),
(104, 'Neha Mehta', 'neha.mehta@gmail.com', 'IT', 'Pune'),
(105, 'Rohan Desai', 'rohan.desai@gmail.com', 'Sales', 'Delhi');

select * from Employees;

--Upper--

SELECT
    employee_id,
    UPPER(city) AS city
FROM Employees;

--Lower--

SELECT LOWER(email) AS email
FROM Employees;

--Length--


SELECT
    employee_name,
    LEN('Rahul Sharma') AS name_length
FROM Employees;


--DATALENGTH--

SELECT
    employee_name,
    DATALENGTH(' Rahul Sharma ' ) AS byte_count
FROM Employees;

--Length va Datalegth--

SELECT
    LEN('Rahul ') AS Character_Count,
    DATALENGTH(' Rahul ') AS Byte_Count
FROM Employees;


--single concat--

SELECT
    CONCAT(employee_name, ' - ', department) AS Employee_Info
FROM Employees;


--multiple concat--

SELECT CONCAT(
    employee_id,
    ' | ',
    employee_name,
    ' | ',
    department
) AS Employee_Details
FROM Employees;


--CONCAT_WS--

SELECT
    CONCAT_WS(' - ', employee_name, department, city) AS Employee_Info
FROM Employees;


--LEFT--

SELECT
    LEFT(employee_name, 5) AS First_Five_Characters
FROM Employees;

--Right--

SELECT 
RIGHT(employee_name,5) As Last_Five_Characters
FROM Employees;


--SUBSTRING / Show First Name --

SELECT 
SUBSTRING(employee_name,1,5) As Extract_Name
FROM Employees;


--SUBSTRING / Show Last Name --
SELECT
    SUBSTRING(employee_name, 7, 6) AS Last_Name
FROM Employees;

--CHARINDEX--

SELECT
    employee_name,
    CHARINDEX(' ', employee_name) AS Space_Position
FROM Employees;

--Another Example--

SELECT
    employee_name,
    CHARINDEX('a', employee_name) AS Position
FROM Employees;


--PATINDEX--

SELECT
    employee_name,
    PATINDEX('%Me%', employee_name) AS Position
FROM Employees;


--REPLACE--

SELECT 
REPLACE(employee_name,'Rahul Sharma','Neel Panchal')
FROM Employees;

--Another Example--

SELECT
    REPLACE(email, 'gmail.com', 'company.com') AS Company_Email
FROM Employees;


--TRANSLATE--

SELECT TRANSLATE('123-456-789', '123', '321');

--Another Example--

SELECT TRANSLATE('ABC123', 'ABC', 'XYZ');


--TRIM--

SELECT
    TRIM('Rahul Sharma') AS Clean_Name
FROM Employees;

--LTRIM--

SELECT LTRIM('     Rahul');


--RTRIM--

SELECT RTRIM('Rahul     ');


--LTRIM() + RTRIM--

SELECT LTRIM(RTRIM(employee_name))
FROM Employees;


--REVERSE()--
SELECT
    REVERSE(employee_name) AS Reversed_Name
FROM Employees;

--SPACE()--
SELECT CONCAT('Hello', SPACE(5), 'World');

--REPLICATE()--
SELECT REPLICATE('*', 10);

-- FORMAT()--
SELECT FORMAT(1234567, 'N0') AS Formatted_Number;

--STRING_AGG()--
SELECT
    department,
    STRING_AGG(employee_name, ', ') AS Employees
FROM Employees
GROUP BY department;

--STRING_SPLIT()--
SELECT value
FROM STRING_SPLIT('SQL,Python,Power BI,Excel', ',');

--ASCII()--
SELECT ASCII('A');

-- CHAR()--
SELECT CHAR(65);

--UNICODE()--
SELECT UNICODE('A');

--NCHAR()--
SELECT NCHAR(65);

-- DIFFERENCE()--
SELECT DIFFERENCE('Smith', 'Smyth');

-- SOUNDEX()--
SELECT SOUNDEX('Smith');

--QUOTENAME()--
SELECT QUOTENAME('Employees');

--STR()--
SELECT STR(123.45, 10, 2);

--STRING_ESCAPE()--
SELECT STRING_ESCAPE('Rahul "Sharma"', 'json');

-- SPACE() vs REPLICATE()--
SELECT REPLICATE('*', 5);

--CONCAT() vs + Operator--
--Using +--
SELECT employee_name + ' - ' + department
FROM Employees;
--Using CONCAT()--
SELECT CONCAT(employee_name, ' - ', department)
FROM Employees;
--Important Difference--
SELECT CONCAT('Rahul', NULL, 'Sharma');

--Combining String Functions--
SELECT
    UPPER(TRIM(employee_name)) AS Clean_Name
FROM Employees;



SELECT
    LEFT(
        employee_name,
        CHARINDEX(' ', employee_name) - 1
    ) AS First_Name
FROM Employees;

SELECT
    RIGHT(
        employee_name,
        LEN(employee_name) - CHARINDEX(' ', employee_name)
    ) AS Last_Name
FROM Employees;

--Create Employee Username--
SELECT
    LOWER(REPLACE(employee_name, ' ', '.')) AS Username
FROM Employees;

-- Extract Email Username--
SELECT
    LEFT(
        email,
        CHARINDEX('@', email) - 1
    ) AS Email_Username
FROM Employees;

--Extract Email Domain--SELECT
    SUBSTRING(
        email,
        CHARINDEX('@', email) + 1,
        LEN(email)
    ) AS Email_Domain
FROM Employees;

--Find Employees From Gmail--
SELECT *
FROM Employees
WHERE CHARINDEX('@gmail.com', email) > 0;

--Standardize Names-
SELECT
    UPPER(LEFT(employee_name, 1)) +
    LOWER(SUBSTRING(employee_name, 2, LEN(employee_name))) AS Employee_Name
FROM Employees;

--String Functions in WHERE--
SELECT *
FROM Employees
WHERE LEN(employee_name) > 10;

SELECT *
FROM Employees
WHERE LEFT(employee_name, 1) = 'R';

SELECT *
FROM Employees
WHERE employee_name LIKE '%ah%';

--String Functions in ORDER BY--
SELECT
    employee_name,
    LEN(employee_name) AS Name_Length
FROM Employees
ORDER BY LEN(employee_name) DESC;

--String Functions with GROUP BY--
SELECT
    UPPER(city) AS City,
    COUNT(*) AS Employee_Count
FROM Employees
GROUP BY UPPER(city);

--String Functions with CASE--
SELECT
    employee_name,
    CASE
        WHEN LEN(employee_name) > 12 THEN 'Long Name'
        WHEN LEN(employee_name) >= 8 THEN 'Medium Name'
        ELSE 'Short Name'
    END AS Name_Category
FROM Employees;

