--used for all 
SET search_path TO df_project_group_110;


--1) TABLE BRANCH
-- Simple select:
SELECT * FROM Branch

-- Specific select with a where conditional:
SELECT Employee_Capacity
FROM Branch 
WHERE Employee_Capacity > 300;

-- Specific select with a where conditional and an operator:
SELECT * FROM Branch 
WHERE name = 'Haasrode'
OR name = 'Tienen'



--2) TABLE EMAILADDRESS

-- A simple update:
UPDATE EmailAddress
SET Email = 'new_student@example.com'
WHERE Student_Id = 123;


-- A simple delete:
DELETE FROM EmailAddress
WHERE Employee_Id = 456;


-- Retrieve all email addresses:
SELECT * FROM EmailAddress WHERE Employee_Id IS NOT NULL;


--3) TABLE EMPLOYEE

-- A grouping and counting how many people have a gender:
SELECT gender, COUNT(*) AS Employee_Count
FROM Employee
GROUP BY gender;


SELECT gender, AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM Date_of_Birth)) AS AverageAge
FROM Employee
GROUP BY gender;


SELECT name, COUNT(*) AS NameCount
FROM Employee
WHERE name LIKE 'A%'
GROUP BY first_name
ORDER BY NameCount DESC
LIMIT 100;

SELECT *
FROM STUDENT
FULL OUTER JOIN Lesson ON STUDENT.STUDENT_ID = Lesson.Lesson_Id;

--4) TABLE LESSON 

-- Retrieve all lessons
SELECT * FROM Lesson;

-- Retrieve lessons for a specific date
SELECT * FROM Lesson
WHERE Lesson_Date = '2023-01-02';

SELECT Lesson_Date, COUNT(*) AS LessonCount
FROM Lesson
GROUP BY Lesson_Date;


SELECT *
FROM Lesson
WHERE CAST(Lesson_Time AS TIME) > '12:00 PM';


--5) TABLE STUDENT

-- Retrieve all students
SELECT * FROM STUDENT;

-- Retrieve students with a specific gender
SELECT * FROM STUDENT
WHERE Gender = 'Male';


-- Update the phone number for a specific student
UPDATE STUDENT
SET Phone_Number = 1112223333
WHERE STUDENTID = 1;

SELECT *
FROM STUDENT
WHERE EXTRACT(MONTH FROM Date_of_Birth) = 5;

-- Inner Join
SELECT *
FROM STUDENT
INNER JOIN Lesson ON STUDENT.STUDENT_ID = Lesson.Lesson_Id;


--6) TABLE STUDENTBOOKSLESSON

-- Insert a new record
INSERT INTO studentbooklesson (Student_Id, Lesson_Id, Vehicle_Type, Passed_Theoretical)
VALUES (1, 101, 'Car', true);

-- Insert another record
INSERT INTO studentbooklesson (Student_Id, Lesson_Id, Vehicle_Type, Passed_Theoretical)
VALUES (2, 102, 'Motorcycle', false);

UPDATE studentbooklesson
SET Vehicle_Type = 'car'
WHERE BOOK_ID = 1;

SELECT Vehicle_Type, COUNT(*) AS PassedCount
FROM studentbooklesson
WHERE Passed_Theoretical = true
GROUP BY Vehicle_Type;

SELECT SBL.*, S.Name ,L.Lesson_Date, L.Lesson_Time
FROM studentbooklesson SBL
INNER JOIN Student S ON SBL.Student_Id = S.STUDENT_ID
INNER JOIN Lesson L ON SBL.Lesson_Id = L.Lesson_Id;



--7) TABLE THEORETICAL_CLASS

UPDATE Theoretical_Class
SET Topic = 'Advanced SQL Queries'
WHERE Theoretical_ClassID = 1;

SELECT Topic, COUNT(*) AS ClassCount
FROM Theoretical_Class
GROUP BY Topic;


SELECT *
FROM Theoretical_Class
WHERE MaxCapacity > 25;

SELECT TC.*, L.Lesson_Date, L.Lesson_Time
FROM Theoretical_Class TC
INNER JOIN Lesson L ON TC.Lesson_id = L.Lesson_Id;