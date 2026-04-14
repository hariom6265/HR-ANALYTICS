DROP TABLE IF EXISTS Employees;
CREATE DATABASE HR_Analytics;
USE HR_Analytics;
CREATE TABLE Employees(
EmpID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Age INT,
Department VARCHAR(50),
JobRole VARCHAR(50),
Salary FLOAT,
Experience INT,
Attrition VARCHAR(10),
HireDate DATE,
PerformanceRating INT
);

insert into Employees values
(101,'Amit Sharma','Male',29,'IT','Developer', 60000, 3, 'No', '2021-03-15',4),
(102,'Priya Singh','Female',34,'HR', 'Manager', 75000, 8, 'No','2018-07-10',5),
(103, 'Rahul Verma', 'Male', 26, 'IT', 'Developer', 50000, 2, 'Yes', '2022-01-20', 3),
(104, 'Sneha Gupta', 'Female', 30, 'Finance', 'Analyst', 65000, 5, 'No', '2020-06-12', 4),
(105, 'Arjun Patel', 'Male', 40, 'Sales', 'Executive', 70000, 10, 'Yes', '2015-09-25', 2),

-- NULL values
(106, NULL, 'Female', NULL, 'HR', 'Recruiter', 45000, 1, 'No', '2023-02-01', NULL),
(107, 'Karan Mehta', NULL, 28, 'IT', NULL, NULL, 3, 'No', '2021-11-11', 3),
(108, 'Neha Jain', 'Female', 31, 'Finance', 'Analyst', 62000, NULL, 'Yes', '2019-04-04', 4),
(109, 'Rohit Sharma', 'Male', 35, 'Sales', 'Manager', 80000, 9, 'No', '2017-08-18', 5),
(110, 'Anjali Verma', 'Female', 27, 'IT', 'Tester', 48000, 2, 'No', '2022-05-22', 3);

SELECT * FROM Employees

-- HANDLE NULL VALUES
UPDATE Employees
SET Name = ISNULL(Name, 'Unknown'),
Gender = ISNULL(Gender, 'Not Specified'),
Age = ISNULL(Age, 30),
JobRole = ISNULL(JobRole, 'Not Assigned'),
Salary = ISNULL(Salary, 40000),
Experience = ISNULL(Experience, 1),
PerformanceRating = ISNULL(PerformanceRating, 3);

    -- DATA EXTRACTION QUERIES
    
    --TOTAL EMPLOYEES
SELECT COUNT(*) AS TotalEmployees FROM Employees;
    
    --ATTRITION COUNT
SELECT Attrition, COUNT(*) AS Count
FROM Employees
GROUP BY Attrition;

-- AVERAGE SALARY BY DEPARTMENT

SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

-- EXPERIENCE VS SALARY

SELECT Experience, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Experience;