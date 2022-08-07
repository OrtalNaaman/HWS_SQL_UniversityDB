USE [University]

--1
SELECT * FROM [Students]

--2
SELECT FirstName, LastName FROM [Students]

--3
SELECT DISTINCT FirstName  FROM [Students] 

--4
SELECT FirstName, Age FROM [Students]
WHERE Age<80

--5
SELECT * FROM [Students]
WHERE Id=1

--6
SELECT Id FROM [Students]
WHERE FirstName='Ami' AND LastName='Sason'

--7
SELECT * FROM [Students]
WHERE (FirstName='Ami' OR FirstName='Yael') AND Age>20

--8
SELECT * FROM [Students]
WHERE Age IS NULL

--9
SELECT * FROM [Students]
WHERE Age IS NOT NULL

--10
SELECT FirstName FROM [Students]
ORDER BY FirstName

--11
SELECT * FROM [Students]
ORDER BY Age DESC

--12
SELECT TOP 2 * FROM [Students]
ORDER BY Age DESC 

--13
SELECT * FROM [Students]
WHERE Age>20 AND FirstName LIKE 'A%'
ORDER BY FirstName

--14
INSERT INTO [Courses]([CourseName])
VALUES 
('Gaming')

--15
UPDATE Students
SET Age=70
WHERE Age>80

--16
DELETE FROM Students
WHERE Id=4

--17
SELECT CourseId , CourseName, StudentId, FirstName, Grade
FROM CoursesStudents cs
JOIN Courses c ON cs.CourseId=c.Id
JOIN Students s ON s.Id=cs.StudentId