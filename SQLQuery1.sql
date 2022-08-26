---UC1
create database Employee_service;
use Employee_service;
create table emp_payroll(empid int identity(1,1)primary key,empname varchar(200),salary bigint,start_date date);
select*from emp_payroll;