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
-- SELECT * FROM tbl_student WHERE 