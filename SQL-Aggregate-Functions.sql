-- 1. SUM()
-- 2. MIN()
-- 3. MAX()
-- 4. COUNT()
-- 5. AVG()
use db_school;
show tables;
SELECT * FROM tbl_student;


SELECT MIN(stud_marks) FROM tbl_student;
SELECT MAX(stud_marks) FROM tbl_student;
SELECT COUNT(roll_no) FROM tbl_student;
SELECT COUNT(stud_city) FROM tbl_student;
SELECT COUNT(*) FROM tbl_student;
SELECT SUM(stud_marks) FROM tbl_student;
SELECT SUM(roll_no) FROM tbl_student;
SELECT sum(stud_marks)/count(stud_marks) FROM tbl_student;
SELECT AVG(stud_marks) FROM tbl_student;


SELECT count(roll_no) FROM tbl_student WHERE stud_city='Solapur';
SELECT count(roll_no) FROM tbl_student WHERE stud_gender='F';
SELECT count(roll_no) FROM tbl_student WHERE stud_marks>90;
SELECT count(roll_no) FROM tbl_student WHERE stud_city!='Mumbai';

SELECT MIN(stud_marks) FROM tbl_student WHERE stud_city='Solapur';
SELECT MAX(stud_marks) FROM tbl_student WHERE stud_city='Mumbai' AND stud_gender='F';