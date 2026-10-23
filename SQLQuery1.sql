CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE Students1(
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    Marks DECIMAL(5,2)
);

INSERT INTO Students1 (Student_ID, Student_Name, Age, Course, Marks)
VALUES 
(1, 'Amit Sharma', 21, 'Data Analytics', 85.50),
(2, 'Neha Gupta', 22, 'Computer Science', 90.75),
(3, 'Ravi Singh', 20, 'Business Analytics', 78.25),
(4,'Neel Panchal',20,'BCA',91.25),
(5,'Priyanshi Patel',21,'CA',86.37);

SELECT * FROM Students1;

CREATE TABLE Employee(
Emp_ID INT Primary Key,
Emp_Name varchar(50),
Emp_salary decimal(10,2),
Joining_date date,
IsActive Bit
);


insert into Employee(Emp_ID,Emp_Name,Emp_salary,Joining_date,IsActive)
VALUES
(101,'Neel',40000,'2017-08-12',1),
(102,'piyu',38000,'2020-02-17',0),
(103,'Darshan',15000,'2023-06-27',1);

select * from Employee;
