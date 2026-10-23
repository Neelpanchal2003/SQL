create database collageDb;

use collageDb;

create table Students(
Student_ID int primary key,
Student_Name varchar(50),
Age int,
Course varchar(50),
Marks Decimal(5,2)
);

INSERT INTO Students(Student_ID,Student_Name,Age,Course,Marks)
Values
(1,'Neel',20,'Data Analytics',80.92),
(2,'Disha',23,'BCA',70.26),
(3,'Darshan',25,'CA',94.02);

select * from Students;


select Student_Name,Age,Marks from Students
where Marks > 80;

select * from Students;