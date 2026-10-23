--GROUP BY Clause--

/*
SELECT column, AGGREGATE_FUNCTION(column)
FROM table_name
GROUP BY column;
*/

--HAVING Clause--

/*
SELECT course, AVG(marks)
FROM students
GROUP BY course
HAVING AVG(marks) > 70;
*/

--Top--

--IN Clause--

/*
SELECT * FROM students
WHERE course IN ('BCA', 'MCA');
*/

--BETWEEN Clause--

/*
SELECT * FROM students
WHERE marks BETWEEN 60 AND 90;
*/

--LIKE Clause--

/*
SELECT * FROM students
WHERE name LIKE 'A%';
*/

create database Aggregate_FunctionsDb; 

use Aggregate_FunctionsDb;

create table Students (
id int primary key,
name varchar(50),
course varchar(50),
marks int
);

insert into Students(id,name,course,marks)
values 
(1, 'Aman', 'BCA', 75),
(2, 'Neha', 'MCA', 90),
(3, 'Karan', 'BCA', 65),
(4, 'Riya', 'BBA', 80),
(5, 'Meena', 'MCA', 88);

select * from Students;

--GROUP BY Example--
SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course;


