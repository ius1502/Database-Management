#Syntax to create database
create database college;
#Syntax to use database
use college;
#Syntax to create table
create table student(
first_name varchar(30),
last_name varchar(20),
roll_no int,
dob date);
#Syntax to insert vvalues in a table
insert into student(first_name,last_name,roll_no,dob)
values
("Aayush","jha",1,"2006-02-14"),
("Nitin","rai",2,"2010-03-24"),
("Annu","rawat",3,"2007-08-19");
select*from student;

alter table student add email varchar(25);          
alter table student modify email int;
alter table student change email email_id varchar(25);
alter table student modify email_id varchar(25) after last_name;
alter table student drop column email_id;
alter table student rename column roll_no to roll_id;
alter table student rename student_1;
truncate table student_1;
drop table student_1;