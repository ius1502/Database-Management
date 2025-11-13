create database office;
use office;

create table employee(
emp_id int,
first_name varchar(30),
last_name varchar(30),
department varchar(30),
salary decimal(10,2),
hire_date date);

insert into employee(emp_id,first_name,last_name,department,salary,hire_date)
values
(1,"john","doe","IT",60000.00,"2019-01-10"),
(2,"jane","smith","HR",55000.00,"2018-03-05"),
(3,"emily","jones","IT",62000.00,"2020-07-23"),
(4,"michael","brown","FINANCE",70000.00,"2016-05-14"),
(5,"sarah","davis","FINANCE",69000.00,"2017-11-18"),
(6,"david","johnson","HR",48000.00,"2021-09-10");

select*from employee;

#1) find the average salary of employee in each department.
select department,avg(salary) as avg_salary
from employee
group by department;

#2) Find the total number of employees hired after 2019. 
select count(*)as total_employee
from employee
where year(hire_date)>2019;

#3) List the departments and the total salary of all employees in each department, ordered by the total salary. 
select department,
sum(salary)as total_salary
from employee
group by department
order by sum(salary)asc;

#4) Find the highest salary in the Finance department. 
select department,sum(salary)as finance_department
from employee
where department="finance"
group by department
order by sum(salary) desc limit 1;

#5)Get the top 3 highest-paid employees.
select first_name,last_name,department,salary
from employee
order by salary DESC LIMIT 3;

#6)Find the department with the minimum average salary.
select department, avg(salary) as Minimum_salary
from employee
group by department 
order by minimum_salary ASC LIMIT 1;

#7)Display the total number of employee in each department, ordered by the number of employees.
select department,count(*)as number_of_employee
from employee
group by department
order by count(*);

#8) Find the average salary of employees5 who were hired before 2020.
select avg(salary) as salary_of_employee
from employee
where year(hire_date)<2020;

#9) List the names of employee in the IT department ordered by hire date, with the most recently hired employees first.
select*
from employee
where department="IT"
order by hire_date desc;

#10)Find the sum of salaries for all employee hired after January 1, 2019, ordered by salary.
select first_name,last_name,salary,hire_date from employee
where hire_date > '2019-01-01'
order by salary DESC;SELECT SUM(salary) AS total_salary_after_2019
FROM employees5 WHERE hire_date > '2019-01-01';

#11)Get the employee5 with the lowest salary in the HR department.
 SELECT first_name,last_name,department,salary
FROM employee WHERE department = 'HR'
ORDER BY salary ASC LIMIT 1;

#12)Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.
select department,sum(salary) as total_salary
from employee
group by department
order by sum(salary) desc limit 2;

#13) List all employees hired after 2018, ordered by salary, and show only the first 4 employees.
SELECT first_name,last_name,department,salary,hire_date
FROM employee WHERE  year (hire_date) >2018
ORDER BY salary DESC LIMIT 4;

#14)Find the highest salary in the IT department, but limit the results to the top 1 result.
select *
from employee
where department="IT"
order by salary desc limit 1;

#15)Get the average salary of employees5 in each department and list only departments with an average salary greater than $60,000.
SELECT department, AVG(salary) AS average_salary
FROM employee GROUP BY department
HAVING AVG(salary) > 60000;