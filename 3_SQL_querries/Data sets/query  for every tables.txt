1) for the table branch
select * from Branch

Select EmployeeCapacity
from Branch 
where EmployeeCapacity > 300;

select * from Branch 
where city = 'Haasrode'
or city = 'Tienen'



2) for the table Email address

UPDATE EmailAddress
SET Email = 'new_student@example.com'
WHERE StudentId = 123;


-- Delete the email address for an employee

DELETE FROM EmailAddress
WHERE EmployeeId = 456;


-- Retrieve all email addresses


SELECT * FROM EmailAddress WHERE EmployeeId IS NOT NULL;
-- Retrieve email addresses along with student or employee information


3) for the table employee

SELECT gender, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY gender;


SELECT gender, AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM Date_of_Birth)) AS AverageAge
FROM Employee
GROUP BY gender;


SELECT first_name, COUNT(*) AS NameCount
FROM Employee
WHERE first_name LIKE 'A%'
GROUP BY first_name
ORDER BY NameCount DESC
LIMIT 100;

SELECT *
FROM STUDENT
FULL OUTER JOIN Lesson ON STUDENT.STUDENT_ID = Lesson.Lesson_Id;

4) for the table lesson 

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


5) for the table student

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


6) for the studentbooklesson

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

SELECT SBL.*, S.First_Name, S.Last_Name, L.Lesson_Date, L.Lesson_Time
FROM studentbooklesson SBL
INNER JOIN STUDENT S ON SBL.Student_Id = S.STUDENT_ID
INNER JOIN Lesson L ON SBL.Lesson_Id = L.Lesson_Id;



7) for the table Theoretical_Class

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