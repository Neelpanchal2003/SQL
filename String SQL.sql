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


