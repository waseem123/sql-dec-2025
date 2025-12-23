use db_school;
show tables;
CREATE TABLE tbl_student
SELECT * FROM tbl_temp;

describe tbl_student;
ALTER TABLE tbl_student 
change roll_no roll_no int Primary key auto_increment;

SELECT * FROM tbl_student WHERE roll_no<=6;
SELECT * FROM tbl_student WHERE stud_marks>=90;
SELECT * FROM tbl_student WHERE roll_no <> 5;

SELECT * FROM tbl_student WHERE stud_city='Pune' AND stud_marks<90;
SELECT * FROM tbl_student WHERE stud_city = 'Solapur' OR stud_marks>95;

SELECT * FROM tbl_student WHERE stud_city IS NULL;
SELECT * FROM tbl_student WHERE stud_marks IS NOT NULL;

SELECT * FROM tbl_student WHERE stud_city = 'Solapur' OR stud_city='Pune' OR stud_city='Mumbai';
SELECT * FROM tbl_student WHERE stud_city IN('Solapur','Pune','Mumbai');

UPDATE tbl_student set stud_gender = 'F' WHERE roll_no IN (3,4,5,8,26);

SELECT * FROM tbl_student WHERE stud_city!='Mumbai' AND stud_city<>'PUNE';
SELECT * FROM tbl_student WHERE stud_city NOT IN('Mumbai','PUNE');

SELECT stud_name, stud_city FROM tbl_student 
	WHERE stud_name LIKE 'A%';
SELECT stud_name, stud_city FROM tbl_student 
	WHERE stud_name LIKE '%A';
SELECT stud_name, stud_city FROM tbl_student 
	WHERE stud_name LIKE 'M%A';
SELECT stud_name, stud_city FROM tbl_student 
	WHERE stud_name LIKE '%h%';
SELECT stud_name, stud_city FROM tbl_student 
	WHERE stud_city LIKE '%pur';
    
SELECT stud_name, stud_city FROM tbl_student 
	WHERE stud_name LIKE 'A____';

SELECT stud_name, stud_city FROM tbl_student 
	WHERE stud_name LIKE '____A';