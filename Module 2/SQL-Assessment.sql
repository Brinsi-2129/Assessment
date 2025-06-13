#A
USE test1;

drop table if exists Worker;
CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT,
    JOINING_DATE DATETIME,
    DEPARTMENT VARCHAR(50)
);
INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES 
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');

select * from Worker;

#QUESTION-1
SELECT * 
FROM Worker 
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

#QUESTION-2
SELECT * 
FROM Worker 
WHERE FIRST_NAME IN ('Vipul', 'Satish');

#QUESTION-3
SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '_____h';

#QUESTION-4
SELECT * 
FROM Worker 
WHERE SALARY BETWEEN 1 AND 10000000;

#QUESTION-5
SELECT FIRST_NAME, DEPARTMENT, COUNT(*) 
FROM Worker 
GROUP BY FIRST_NAME, DEPARTMENT 
HAVING COUNT(*) > 1;

#QUESTION-6
SELECT * 
FROM Worker 
LIMIT 6;

#QUESTION-7
SELECT DEPARTMENT, COUNT(*) AS dept_count
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;

#QUESTION-8
SELECT DEPARTMENT, COUNT(*) AS dept_count
FROM Worker
GROUP BY DEPARTMENT;

#QUESTION-9
SELECT DEPARTMENT, FIRST_NAME, LAST_NAME, SALARY
FROM Worker w
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM Worker
    WHERE DEPARTMENT = w.DEPARTMENT
);

#B
use test1;

drop table if exists studentss;
CREATE TABLE studentss (
    StdID INT PRIMARY KEY,
    StdName VARCHAR(100),
    Sex VARCHAR(10),
    Percentage INT,
    Class INT,
    Sec CHAR(1),
    Stream VARCHAR(20),
    DOB DATE
);

INSERT INTO studentss (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB)
VALUES 
(1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '1998-03-08'),
(1002, 'MAAHI AGARWAL', 'Female', 56, 11, 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '1997-11-05'),
(1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '2003-09-14'),
(1006, 'JAGANVATH Puri', 'Female', 70, 11, 'C', 'Commerce', '2008-11-17'),
(1007, 'Sanam Kumar', 'Male', 72, 12, 'F', 'Commerce', '1998-03-08'),
(1008, 'SAHIL SARAS', 'Male', 64, 12, 'F', 'Commerce', '2008-11-17'),
(1009, 'AKSHRA AGARWAL', 'Female', 72, 12, 'B', 'Commerce', '1996-10-11'),
(1010, 'STUTI MISHRA', 'Female', 56, 11, 'C', 'Science', '2008-11-23'),
(1011, 'HARSH AGARWAL', 'Male', 72, 11, 'C', 'Science', '1998-03-08'),
(1012, 'NIKUNJ AGARWAL', 'Male', 89, 12, 'G', 'Commerce', '1998-05-26'),
(1013, 'AKRITI SAXENA', 'Female', 89, 12, 'A', 'Science', '2008-11-23'),
(1014, 'TANI RASTOGI', 'Female', 82, 12, 'A', 'Science', '2008-11-23');
							
SELECT * FROM studentss;

SELECT StdName, DOB FROM studentss;

SELECT * FROM student
WHERE Percentage >= 80;

SELECT StdName, Stream, Percentage
FROM studentss
WHERE Percentage > 80;

SELECT * FROM student
WHERE Stream = 'Science' AND Percentage > 75;













