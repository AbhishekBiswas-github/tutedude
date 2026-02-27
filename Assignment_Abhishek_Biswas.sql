-- CREATE DATABASE
create database company_db;

-- USE DATABASE
use company_db;

-- CREATE companies TABLE
create table companies (
	company_id INT Primary Key,
	company_name VARCHAR(255) Not Null
);

-- CREATE departments TABLE
create table departments (
	department_id INT Primary Key,
	department_name VARCHAR(255) Not Null,
	company_id INT ,
    Foreign Key (company_id) references companies(company_id)
);

-- CREATE employees TABLE
create table employees (
	employee_id INT Primary Key,
	first_name VARCHAR(255) Not Null,
	last_name VARCHAR(255) Not Null,
	department_id INT ,
	salary DECIMAL(15, 2) Not Null,
	hire_date DATE Not Null,
	manager_id INT ,
	job_title VARCHAR(255) Not Null,
    Foreign Key(department_id) references departments(department_id)
);

-- INSERTING DATA IN companies
INSERT INTO companies (company_id, company_name) VALUES
	(1, 'TechNova Solutions'),
	(2, 'DataBridge Analytics'),
	(3, 'FinCore Systems'),
	(4, 'HealthPlus Technologies'),
	(5, 'RetailSphere Pvt Ltd');
    
-- INSERTING DATA IN departments
INSERT INTO departments (department_id, department_name, company_id) VALUES
	(101, 'Human Resources', 1),
	(102, 'Software Development', 1),
	(103, 'Business Intelligence', 2),
	(104, 'Data Engineering', 2),
	(105, 'Finance & Accounting', 3),
	(106, 'Risk Management', 3),
	(107, 'Clinical Operations', 4),
	(108, 'IT Support', 4),
	(109, 'Sales & Marketing', 5),
	(110, 'Supply Chain Management', 5);
    
-- INSERTING DATA IN employees
INSERT INTO employees
(employee_id, first_name, last_name, department_id, salary, hire_date, manager_id, job_title)
VALUES
-- Top Level Managers (No Manager)
(1001, 'Amit', 'Sharma', 101, 90000.00, '2020-03-15', NULL, 'HR Manager'),
(1002, 'Neha', 'Verma', 102, 120000.00, '2019-07-10', NULL, 'Engineering Manager'),
(1003, 'Rahul', 'Mehta', 103, 110000.00, '2021-01-05', NULL, 'BI Manager'),
(1004, 'Sneha', 'Iyer', 105, 115000.00, '2018-11-20', NULL, 'Finance Manager'),
(1005, 'Vikram', 'Singh', 109, 100000.00, '2022-02-18', NULL, 'Sales Manager'),
-- Employees under HR (101)
(1006, 'Priya', 'Nair', 101, 50000.00, '2022-06-12', 1001, 'HR Executive'),
(1007, 'Karan', 'Malhotra', 101, 52000.00, '2023-01-25', 1001, 'Recruiter'),
-- Employees under Engineering (102)
(1008, 'Rohit', 'Das', 102, 80000.00, '2021-09-14', 1002, 'Software Engineer'),
(1009, 'Anjali', 'Kapoor', 102, 85000.00, '2020-12-01', 1002, 'Senior Developer'),
-- Employees under BI (103)
(1010, 'Saurabh', 'Jain', 103, 75000.00, '2022-04-19', 1003, 'Data Analyst'),
(1011, 'Megha', 'Roy', 103, 72000.00, '2023-03-11', 1003, 'BI Developer'),
-- Employees under Finance (105)
(1012, 'Arjun', 'Reddy', 105, 65000.00, '2021-08-30', 1004, 'Accountant'),
(1013, 'Pooja', 'Kulkarni', 105, 68000.00, '2022-10-05', 1004, 'Financial Analyst'),
-- Employees under Sales (109)
(1014, 'Deepak', 'Yadav', 109, 60000.00, '2023-02-20', 1005, 'Sales Executive'),
(1015, 'Ritika', 'Chopra', 109, 62000.00, '2022-05-17', 1005, 'Marketing Specialist'),
-- Additional Employees in Other Departments
(1016, 'Manish', 'Gupta', 104, 78000.00, '2021-06-21', NULL, 'Data Engineer Lead'),
(1017, 'Lavanya', 'Menon', 104, 70000.00, '2023-07-01', 1016, 'Data Engineer'),
(1018, 'Nitin', 'Bose', 107, 67000.00, '2020-09-09', NULL, 'Operations Head'),
(1019, 'Shalini', 'Mishra', 107, 55000.00, '2022-12-15', 1018, 'Operations Executive'),
(1020, 'Tarun', 'Bhatia', 110, 72000.00, '2021-11-11', NULL, 'Supply Chain Manager');