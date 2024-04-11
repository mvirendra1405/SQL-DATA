-- Table Creation
CREATE DATABASE Employee_management_system;
USE Employee_management_system;

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    DepartmentName VARCHAR(30),
    Manager_ID INT,
    location VARCHAR(50),
    budget REAL
);
desc department;

CREATE TABLE Employees (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(100),
    department_id INT,
    position TEXT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);
desc employees;

CREATE TABLE Salary (
    salary_id INT PRIMARY KEY,
    Emp_id INT,
    salary_amount REAL,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (Emp_id) REFERENCES Employees(Emp_id)
);
desc salary;

CREATE TABLE Leave_C (
    leave_id INT PRIMARY KEY,
    Emp_id INT,
    LeaveType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (Emp_id) REFERENCES Employees(Emp_id)
);
desc leave_C;

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    Emp_id INT,
    Date DATE,
    Timein TIME,
    Timeout TIME,
    FOREIGN KEY (Emp_id) REFERENCES Employees(Emp_id)
);
desc attendance;

-- Data Insertion
INSERT INTO Department VALUES
    (1, 'HR', 101, 'nashik', 100000),
    (2, 'Finance', 102, 'hyderabad', 150000),
    (3, 'IT', 103, 'mumbai', 200000),
    (4, 'Marketing', 104, 'kolkata', 120000),
    (5, 'Operations', 105, 'delhi', 180000);

INSERT INTO Employees VALUES
    (1, 'himashu tripathi', 1, 'Hr assistant', '2023-01-15'),
    (2, 'virendra mishra', 2, 'accountant', '2022-08-20'),
    (3, 'anuj singh', 3, 'IT specialist', '2024-08-10'),
    (4, 'Vijay mishra', 4, 'Marketing Coordinator', '2022-08-20'),
    (5, 'rohit shelar', 5, 'Operation manager', '2022-05-15'),
    (6, 'asish kamble', 1, 'hr manager', '2021-12-10'),
    (7, 'robert oral', 3, 'system administrator', '2023-09-18'),
    (8, 'saud shaikh', 4, 'marketing assistant', '2024-06-25'),
    (9, 'abhishek jagtap', 5, 'operation assistant', '2022-03-15'),
    (10, 'subhash chauhan', 2, 'financial analyst', '2023-07-30');

-- Insert into Salary table
INSERT INTO Salary VALUES
    (1, 1, 50000, '2023-01-15', '2024-01-15'),
    (2, 2, 60000, '2022-08-20', '2023-08-20'),
    (3, 3, 70000, '2024-02-10', '2025-02-10'),
    (4, 4, 55000, '2023-11-05', '2024-11-05'),
    (5, 5, 80000, '2022-05-03', '2023-05-03');

INSERT INTO Leave_C VALUES
    (1, 1, 'Vacation', '2023-07-01', '2023-07-05'),
    (2, 2, 'Sick Leave', '2022-10-15', '2022-10-17'),
    (3, 3, 'Maternity Leave', '2024-06-01', '2025-01-01'),
    (4, 4, 'Personal Leave', '2023-12-20', '2023-12-21'),
    (5, 5, 'Vacation', '2022-08-10', '2022-08-15');

INSERT INTO Attendance VALUES
    (1, 1, '2023-07-01', '09:00:00', '17:00:00'),
    (2, 2, '2022-10-15', '08:30:00', '16:30:00'),
    (3, 3, '2024-06-01', '09:15:00', '18:00:00'),
    (4, 4, '2023-12-20', '09:30:00', '16:00:00'),
    (5, 5, '2022-08-10', '08:45:00', '17:15:00');
select * from attendance;
-- sql Query
-- 1.Query to retrieve employee information along with their department details.
SELECT Employees.Emp_id, Employees.Emp_name, Employees.position, Department.DepartmentName
FROM Employees Employees
JOIN Department Department ON Employees.department_id = Department.department_id;

-- 2.Query to calculate total salary expenditure for a department.
SELECT Department.DepartmentName, SUM(salary.salary_amount) AS total_salary_expenditure
FROM Department department
JOIN Employees employees ON department.department_id = employees.department_id
JOIN Salary salary ON employees.Emp_id = salary.Emp_id
GROUP BY department.DepartmentName;

-- 3.Query to find employees on leave during a specific period.
SELECT employees.Emp_id, employees.Emp_name, l.LeaveType, l.StartDate, l.EndDate
FROM Employees employees
JOIN Leave_C l ON employees.Emp_id = l.Emp_id
WHERE (l.StartDate BETWEEN '2023-07-01' AND '2023-07-05')
   OR (l.EndDate BETWEEN '2023-07-05' AND '2023-07-05');
   

   
