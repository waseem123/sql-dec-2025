USE db_school;

SHOW tables;

SELECT * FROM tbl_student;

INSERT INTO tbl_student(roll_no,stud_name,stud_city,stud_gender,stud_marks)
	VALUES(6,'Galib','Kolkata','M',60);
    
INSERT INTO tbl_student(roll_no,stud_name,stud_marks)
	VALUES(7,'Amber',95);
    
INSERT INTO tbl_student(stud_gender,stud_name,stud_marks,stud_city,roll_no)
	VALUES('F','Sulaim',88,'Nagpur',8);

-- INSERT INTO table name values
-- 	(),
--     (),
--     (),
--     ...
--     ();

INSERT INTO tbl_student values
	(9,'Samarth','Mumbai','M',79.35),
    (10,'Sadik','Bhopal','M',89.35),
    (11,'Taha','Jaipur','M',71.44),
    (12,'Gufran','Udaipur','M',75),
    (13,'Nihal','Delhi','M',74);
    
INSERT INTO tbl_student(roll_no,stud_name,stud_gender)
	VALUES(14,'Miran','M'),
    (15,'Peerahmed','M'),
    (16,'Sahil','M');

Describe tbl_student;
INSERT INTO tbl_student(stud_name,stud_gender)
	VALUES('Roger','M');
    
ALTER TABLE tbl_student 
	CHANGE roll_no roll_no INT AUTO_INCREMENT;
    
INSERT INTO tbl_student(stud_name,stud_gender)
	VALUES('Peter','M'),
    ('Sam','M'),
    ('Robert','M'),
    ('John','M'),
    ('Alex','M');