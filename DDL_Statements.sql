-- CREATE MODULE_TO_BE_CREATED NAME_OF_MODULE;
CREATE DATABASE db_school;
CREATE DATABASE db_company;
CREATE DATABASE db_hotel;

-- To select/open a database 
USE db_school;
-- CREATE TABLE TABLE_NAME(
-- 	column1 datatype(size) constraint,
--     column2 datatype(size) constraint,
--     ...
--     columnN datatype(size) constraint
-- );

CREATE TABLE tbl_student(
	roll_no int PRIMARY KEY,
    stud_name varchar(30) NOT NULL,
    stud_city varchar(30),
    stud_gender varchar(1)
);

DROP TABLE tbl_employee;

-- Alter table table_name 
-- 	add column column_name datatype(size) constraint;

Alter table tbl_student 
	add column stud_marks float check (stud_marks>=0);
    
-- Alter table table_name
-- 	drop column column_name;

 -- ALTER TABLE tbl_student 
--  	DROP COLUMN stud_marks;

describe tbl_student;

Alter table tbl_student 
	change stud_gender stud_gender varchar(1);
    
Alter table tbl_student
	drop constraint tbl_student_chk_2;
Alter table tbl_student
	drop primary key;

Alter table tbl_student 
	change stud_score stud_score int check(stud_score>=0 and stud_score<=100);
    
Alter table tbl_student 
	change stud_score stud_marks float;
    