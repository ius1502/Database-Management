CREATE TABLE personal
	(
    id INT NOT NULL UNIQUE,
    name VARCHAR(30) NOT NULL,
    percentage varchar(10)not null,
    age int NOT NULL CHECK(age>17),
    gender VARCHAR(1) NOT NULL,
    phone VARCHAR(10) NOT NULL,
    city VARCHAR(20) DEFAULT "Delhi"
    );
INSERT INTO personal(id,name,age,gender,phone,city)
values
	(1,"Ram Kumar",45,19,"M",4022144,"Agra"),
    (2,"Sarita Kumar",55,22,"F",4034421,"Delhi"),
    (3,"Salman Khan",62,20,"M",4056221,"Agra"),
    (4,"Juhi Chawla",47,18,"F",4089821,"Bhopal"),
    (5,"Anil Kapoor",74,22,"M",4025221,"Agra"),
    (6,"John Abraham",64,21,"M",4033776,"Delhi"),
    (7,"Shahid kapoor",52,20,"M",4022784,"Agra");
    
    select*from personal;
    
    ##STRING FUNCTIONS

select id, upper(name),percentage from personal;

select id, ucase(name),percentage from personal;

select id, lower(name),percentage from personal;

select id, lcase(name),percentage from personal;

select id, name,character_length(name),percentage from personal;

select id, name,char_length(name),percentage from personal;

select id, name,length(name),percentage from personal;

select id,concat(name,percentage)from personal;

select id,concat(name,"-",percentage) from personal;

select concat("Aayush jha");

select concat_ws("-","Aayush","hello","class");

select concat_ws(" ","Aayush","hello","class");

select trim(   "Aayush jha"   );

select ltrim(   "Aayush jha"   );

select rtrim(   "Aayush jha"   );
