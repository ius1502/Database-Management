create database company;
use company;

create table employees
( Id int primary key auto_increment,
Name varchar (100),
Position varchar(100),
Salary decimal(10,2),
date_of_joining DATE);

insert into employees (name,position,salary,date_of_joining)
values
("John Doe","manager",55000,"2020-01-15"),
("Jane Smith","developer",48000,"2019-07-10"),
("Alice Johnson","designer",45000,"2021-03-22"),
("Bob Brown","developer",50000,"2018-11-01");

select*from employees;

# Write a query to retrieve all employees who are developers.
select*from employees
where position ="developer";

#Write a query to update the salary of Alice Johnson to 46000.
update employees
set salary="46000"
where id="3";
select *from employees where id="3";

#Write a query to delete the employee record for Bob Brown.
delete from employees where id="4";
select * from employees ;

#Write a query to find the employees who have a salary greater than 48000.
select* from employees where salary >48000;

#Write a query to add a new column email to the employees table.
alter table employees add email varchar(30);
select*from employees;

#Write a query to update the email for John Doe to john.doe@company.com.
update employees set email="john.doe@company.com" where id="1";
select*from employees;

#Write a query to retrieve only the name and salary of all employees.
select name,salary from employees;

#Write a query to count the number of employees who joined after January 1, 2020.
select count(name) from employees where date_of_joining>01-01-2020;

#Write a query to order the employees by salary in descending order.
select*from employees order by salary desc;

#Write a query to drop the email column from the employees table.
alter table employees drop column email;
select*from employees;

#Write a query to find the employee with the highest salary.
select*from employees where salary=(select max(salary) from employees);
