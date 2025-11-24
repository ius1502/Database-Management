--/*create table using contraints
CREATE TABLE student_2
	(
		std_id INT NOT NULL UNIQUE,
        std_name VARCHAR(30) NOT NULL,
        age INT NOT NULL CHECK(age>=18),
        mobile VARCHAR(10) NOT NULL UNIQUE,
        city VARCHAR(30) DEFAULT "Delhi",
        gender VARCHAR(1) NOT NULL
	);
INSERT INTO student_2(std_id,std_name,age,mobile,city,gender)
VALUES
	(1,"ABC",18,876547,"Agra","M"),
    (2,"DEF",21,765413,"Noida","F"),
    (3,"GHI",23,765414,"Noida","F");
INSERT INTO student_2(std_id,std_name,age,mobile,gender)
VALUES(4,"JKL",23,765418,"F");
SELECT * FROM student_2
ALTER TABLE student_2 RENAME COLUMN std_name TO name;
ALTER TABLE student_2 CHANGE name std_name VARCHAR(30);
ALTER TABLE student_2 MODIFY gender VARCHAR(1) NOT NULL AFTER age;
ALTER TABLE student_2 MODIFY std_name VARCHAR(30) NOT NULL FIRST;

CREATE TABLE personal
	(
    id INT NOT NULL UNIQUE,
    name VARCHAR(30) NOT NULL,
    age int NOT NULL CHECK(age>17),
    gender VARCHAR(1) NOT NULL,
    phone VARCHAR(10) NOT NULL,
    city VARCHAR(20) DEFAULT "Delhi"
    );
INSERT INTO personal(id,name,age,gender,phone,city)
values
	(1,"Ram Kumar",19,"M",4022155,"Agra"),
    (2,"Sarita Kumari",21,"F",4034421,"Delhi"),
    (3,"Salman Khan",20,"M",4056221,"Agra"),
    (4,"Juhi Chawla",18,"F",4089821,"Bhopal"),
    (5,"Anil Kapoor",22,"M",4025221,"Agra"),
    (6,"John Abraham",21,"M",4033776,"Delhi");

SELECT * FROM personal;