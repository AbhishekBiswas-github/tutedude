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
-- HR Department (101)
(1000, 'Amit', 'Sharma', 101, 95000.00, '2019-04-15', NULL, 'HR Manager'),
(1001, 'Priya', 'Nair', 101, 52000.00, '2021-06-10', 1000, 'HR Executive'),
(1002, 'Karan', 'Malhotra', 101, 50000.00, '2022-01-12', 1000, 'HR Executive'),
(1003, 'Sneha', 'Roy', 101, 48000.00, '2023-03-05', 1000, 'Recruiter'),
(1004, 'Rohit', 'Das', 101, 47000.00, '2023-07-18', 1000, 'Recruiter'),
-- Engineering (102)
(1005, 'Neha', 'Verma', 102, 130000.00, '2018-09-20', NULL, 'Engineering Manager'),
(1006, 'Anjali', 'Kapoor', 102, 85000.00, '2020-11-11', 1005, 'Software Engineer'),
(1007, 'Saurabh', 'Jain', 102, 82000.00, '2021-02-19', 1005, 'Software Engineer'),
(1008, 'Megha', 'Roy', 102, 90000.00, '2019-05-25', 1005, 'Senior Software Engineer'),
(1009, 'Tarun', 'Bhatia', 102, 78000.00, '2022-08-01', 1005, 'Software Engineer'),
-- BI Department (103)
(1010, 'Rahul', 'Mehta', 103, 115000.00, '2019-01-10', NULL, 'BI Manager'),
(1011, 'Arjun', 'Reddy', 103, 75000.00, '2021-07-14', 1010, 'Data Analyst'),
(1012, 'Pooja', 'Kulkarni', 103, 72000.00, '2022-09-30', 1010, 'Data Analyst'),
(1013, 'Nitin', 'Bose', 103, 80000.00, '2020-12-22', 1010, 'BI Developer'),
(1014, 'Lavanya', 'Menon', 103, 78000.00, '2023-04-18', 1010, 'BI Developer'),
-- Data Engineering (104)
(1015, 'Vikram', 'Singh', 104, 120000.00, '2018-06-15', NULL, 'Data Engineering Manager'),
(1016, 'Deepak', 'Yadav', 104, 85000.00, '2020-10-10', 1015, 'Data Engineer'),
(1017, 'Ritika', 'Chopra', 104, 83000.00, '2021-03-19', 1015, 'Data Engineer'),
(1018, 'Manish', 'Gupta', 104, 78000.00, '2022-11-05', 1015, 'ETL Developer'),
(1019, 'Shalini', 'Mishra', 104, 76000.00, '2023-01-25', 1015, 'ETL Developer'),
-- Finance (105)
(1020, 'Sneha', 'Iyer', 105, 125000.00, '2017-08-08', NULL, 'Finance Manager'),
(1021, 'Kunal', 'Agarwal', 105, 70000.00, '2020-02-15', 1020, 'Accountant'),
(1022, 'Ishita', 'Sen', 105, 68000.00, '2021-09-09', 1020, 'Accountant'),
(1023, 'Varun', 'Khanna', 105, 72000.00, '2022-04-14', 1020, 'Financial Analyst'),
(1024, 'Divya', 'Nair', 105, 71000.00, '2023-06-30', 1020, 'Financial Analyst'),
-- Risk (106)
(1025, 'Aditya', 'Rao', 106, 110000.00, '2018-12-01', NULL, 'Risk Manager'),
(1026, 'Preeti', 'Shah', 106, 75000.00, '2021-01-19', 1025, 'Risk Analyst'),
(1027, 'Mohit', 'Bansal', 106, 74000.00, '2022-05-17', 1025, 'Risk Analyst'),
(1028, 'Sakshi', 'Verma', 106, 72000.00, '2023-02-22', 1025, 'Compliance Officer'),
(1029, 'Gaurav', 'Joshi', 106, 73000.00, '2020-07-11', 1025, 'Compliance Officer'),
-- Operations (107)
(1030, 'Naveen', 'Pillai', 107, 105000.00, '2019-03-03', NULL, 'Operations Head'),
(1031, 'Swati', 'Rao', 107, 60000.00, '2021-06-21', 1030, 'Operations Executive'),
(1032, 'Harsh', 'Patel', 107, 58000.00, '2022-08-14', 1030, 'Operations Executive'),
(1033, 'Mitali', 'Ghosh', 107, 62000.00, '2023-01-01', 1030, 'Operations Analyst'),
(1034, 'Abhay', 'Singh', 107, 61000.00, '2020-10-10', 1030, 'Operations Analyst'),
-- IT Support (108)
(1035, 'Ramesh', 'Kumar', 108, 95000.00, '2018-04-25', NULL, 'IT Manager'),
(1036, 'Alok', 'Sinha', 108, 65000.00, '2021-11-11', 1035, 'System Administrator'),
(1037, 'Tina', 'Dutta', 108, 64000.00, '2022-02-15', 1035, 'System Administrator'),
(1038, 'Pankaj', 'Mishra', 108, 60000.00, '2023-07-07', 1035, 'IT Support Engineer'),
(1039, 'Reema', 'Paul', 108, 59000.00, '2020-09-18', 1035, 'IT Support Engineer'),
-- Sales (109)
(1040, 'Vikas', 'Chauhan', 109, 115000.00, '2019-01-09', NULL, 'Sales Manager'),
(1041, 'Simran', 'Kaur', 109, 65000.00, '2021-04-04', 1040, 'Sales Executive'),
(1042, 'Aman', 'Yadav', 109, 63000.00, '2022-06-06', 1040, 'Sales Executive'),
(1043, 'Nisha', 'Kapoor', 109, 70000.00, '2023-03-03', 1040, 'Marketing Specialist'),
(1044, 'Rajat', 'Bose', 109, 72000.00, '2020-12-12', 1040, 'Marketing Specialist'),
-- Supply Chain (110)
(1045, 'Sandeep', 'Mehra', 110, 108000.00, '2018-07-07', NULL, 'Supply Chain Manager'),
(1046, 'Komal', 'Arora', 110, 68000.00, '2021-08-08', 1045, 'Supply Chain Analyst'),
(1047, 'Yash', 'Thakur', 110, 66000.00, '2022-10-10', 1045, 'Supply Chain Analyst'),
(1048, 'Payal', 'Singh', 110, 64000.00, '2023-05-05', 1045, 'Logistics Coordinator'),
(1049, 'Ankit', 'Jain', 110, 63000.00, '2020-03-15', 1045, 'Logistics Coordinator');