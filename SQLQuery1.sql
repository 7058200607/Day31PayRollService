---UC1
create database Employee_service;
--UC2
use Employee_service;
create table emp_payroll(empid int identity(1,1)primary key,empname varchar(200),salary bigint,start_date date,gender varchar(200));
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
---UC6
alter table emp_payroll2 add gender varchar(200);
update emp_payroll set gender ='F'where empname='komal' or empname='mrunal'or empname='punam'or empname='aayushi';
update emp_payroll set gender='M'where empname='sarthak'or empname='saurav';
---uC7
select SUM(salary) as TotalSalary from emp_payroll where gender='F'GROUP BY gender;
select SUM(salary) as TotalSalary from emp_payroll where gender ='M'GROUP BY gender;
select AVG(salary) as AvarageSalary from emp_payroll where gender ='F'GROUP BY gender;
select AVG(salary) as AvarageSalary from emp_payroll where gender ='M'GROUP BY gender;
select MIN(salary) as MinimumSalary from emp_payroll where gender ='F'GROUP BY gender;
select MIN(salary) as MinimumSalary from emp_payroll where gender ='M'GROUP BY gender;
select MAX(salary) as MaximumSalary from emp_payroll where gender ='F'GROUP BY gender;
select MAX(salary) as MaximumSalary from emp_payroll where gender ='M'GROUP BY gender;
select COUNT(salary) as CountSalary from emp_payroll where gender ='F'GROUP BY gender;
select COUNT(salary) as AvarageSalary from emp_payroll where gender ='M'GROUP BY gender;