CREATE TABLE Departments (
	DepartmentsID int IDENTITY(1,1) PRIMARY KEY,
	DepartmentsName varchar(50)
);

CREATE TABLE Projects (
	ProjectsID int IDENTITY(1,1) PRIMARY KEY,
	ProjectName varchar(50),
	DepartmentsID int,
	FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
);

CREATE TABLE Employee (
	EmployeeID int IDENTITY(1,1) PRIMARY KEY,
	Name varchar(50),
	ManagerID int,
	DepartmentsID int,
	FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID),
	FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
);

CREATE TABLE Salaries (
	EmployeeID int,
	Salaries decimal(10,2),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

INSERT INTO Departments (DepartmentsName) VALUES 
('Finance'),
('HR'),
('IT'),
('Marketing');

INSERT INTO Projects (ProjectName, DepartmentsID) VALUES 
('Project Alpha', 1),
('Project Beta', 2),
('Project Gamma', 3),
('Project Delta', 4);

INSERT INTO Employee (Name, ManagerID, DepartmentsID) VALUES 
('John Doe', NULL, 1),
('Jane Smith', 1, 2),
('Emily Davis', 1, 3),
('Michael Brown', 2, 4),
('Sarah Wilson', 3, 1),
('David Johnson', 3, 2);

INSERT INTO Salaries (EmployeeID, Salaries) VALUES 
(1, 7000.00),
(2, 6000.00),
(3, 6500.00),
(4, 5500.00),
(5, 5000.00),
(6, 4800.00);

-- Query Melihat Tabel di database
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
------------------------------------------------------------------

use [Pertemuan 6]

SELECT * FROM Employee;

SELECT 
    c.Name,  d.DepartmentsName
FROM 
    Employee c
    INNER JOIN Departments d ON c.DepartmentsID = d.DepartmentsID;
------------------------------------------------------------------

-- latihan
-- SOAL 1
SELECT 
    c.Name,  d.DepartmentsName
    FROM Employee c
    INNER JOIN Departments d ON c.DepartmentsID = d.DepartmentsID

-- SOAL 2
SELECT 
    c.Name, d.ProjectName
    FROM Employee c
    INNER JOIN Projects d ON c.DepartmentsID = d.DepartmentsID;

SELECT * FROM Projects;

--soal 3
SELECT 
    c.ProjectName, d.DepartmentsName
    FROM Projects c
    LEFT JOIN Departments d ON c.DepartmentsID = d.DepartmentsID;
    SELECT * FROM Projects;

--soal 4
SELECT 
    c.Name,  d.Salaries
    FROM Employee c
    LEFT JOIN Salaries d ON c.EmployeeID = d.EmployeeID;

--soal 5
SELECT 
    c.Name,  d.ProjectName
    FROM Employee c
    CROSS JOIN Projects d;

--soal 6
SELECT 
    c.Name,  d.Name
    FROM Employee c
    LEFT JOIN Employee d ON c.ManagerID = d.EmployeeID;

--soal 7
SELECT 
    c.Name,  d.DepartmentsName
    FROM Employee c
    INNER JOIN Departments d ON c.DepartmentsID = d.DepartmentsID;