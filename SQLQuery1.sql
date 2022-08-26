---UC1
create database Employee_service;
--UC2
use Employee_service;
create table emp_payroll(empid int identity(1,1)primary key,empname varchar(200),salary bigint,start_date date);
select*from emp_payroll;
---UC3
insert into emp_payroll values('komal',20000,'2021-06-17');
insert into emp_payroll values('mrunal',25000,'2021-11-18');
insert into emp_payroll values('punam',30000,'2019-09-18');
insert into emp_payroll values('aayushi',18000,'2021-06-16');
insert into emp_payroll values('sarthak',22000,'2019-08-14');
insert into emp_payroll values('saurav',35000,'2021-12-19');
---UC4
select *from emp_payroll;
--UC5
select *from emp_payroll where empname='punam';
select *from emp_payroll where  start_date between CAST('2019-03-01' as  date)and GETDATE();
