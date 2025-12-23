-- 1. FROM
-- 2. WHERE
-- 3. HAVING
-- 4. GROUP BY
-- 5. ORDER BY
USE db_school;

SELECT * FROM tbl_student;
SELECT * FROM tbl_student WHERE roll_no = 9;
SELECT * FROM tbl_student ORDER BY stud_marks desc;
SELECT * FROM tbl_student ORDER BY stud_name desc;
SELECT * FROM tbl_student ORDER BY stud_name desc,stud_city asc;