USE db_school;
show tables;
describe tbl_student;
SELECT * FROM tbl_student;

-- UPDATE <tablename> SET 
-- 	column1=value,
--     column2=value
--     ...
--     columnN=value
-- [CONDITION or CLAUSE];

UPDATE tbl_student SET stud_gender='M';
UPDATE tbl_student SET stud_gender='F' WHERE roll_no=8;
UPDATE tbl_student SET stud_city='Varanasi' WHERE roll_no=7;
UPDATE tbl_student SET 
	stud_city='Vijaypura',
    stud_marks=77.77 
WHERE roll_no=14;

UPDATE tbl_student SET stud_city='NA' WHERE stud_city=null;

UPDATE tbl_student SET stud_marks=stud_marks+2 WHERE roll_no=2;
UPDATE tbl_student SET stud_marks=stud_marks+3;

UPDATE tbl_student SET stud_city='Bengaluru'
	WHERE roll_no=3;
    
UPDATE tbl_student SET roll_no=25
	WHERE roll_no=22;
INSERT INTO tbl_student(stud_name,stud_city)VALUES('Alice','Paris');

SET SQL_SAFE_UPDATES = 1;