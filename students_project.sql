
-- Create Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Course VARCHAR(50),
    Grade CHAR(1),
    City VARCHAR(50),
    Year INT
);

-- Insert Data
INSERT INTO Students VALUES
(1, 'Rahul Kumar', 20, 'BSc', 'A', 'Delhi', 2023),
(2, 'Neha Singh', 21, 'BSc', 'B', 'Mumbai', 2022),
(3, 'Amit Joshi', 22, 'BSc', 'A', 'Bangalore', 2023),
(4, 'Priya Patel', 20, 'BSc', 'C', 'Hyderabad', 2021);

-- Select All
SELECT * FROM Students;

-- Students with Grade A
SELECT * FROM Students WHERE Grade = 'A';

-- Total Students per City
SELECT City, COUNT(*) AS Total_students 
FROM Students 
GROUP BY City;

-- Average Age
SELECT AVG(Age) AS Avg_age FROM Students;

-- Order by Grade
SELECT * FROM Students ORDER BY Grade ASC;

-- Students with Grade B, limit 2
SELECT * FROM Students WHERE Grade = 'B' LIMIT 2;

-- Update Grade for Priya Patel
UPDATE Students SET Grade = 'A'
WHERE Name = 'Priya Patel';

-- Delete StudentID 4
DELETE FROM Students 
WHERE StudentID = 4;

-- Students aged between 20 and 21
SELECT * FROM Students
WHERE Age BETWEEN 20 AND 21;

-- Name starts with N
SELECT * FROM Students WHERE Name LIKE 'N%';

-- Distinct Cities
SELECT DISTINCT City FROM Students;

-- Final check
SELECT * FROM Students;
