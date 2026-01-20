USE db_school;
ALTER TABLE tbl_student DROP foreign key tbl_student_ibfk_1;
desc tbl_student;
SELECT * FROM tbl_student;
SELECT * FROM tbl_dept;
INSERT INTO tbl_dept(dept_name,dept_building)VALUES('AIDS','E');
UPDATE tbl_student set dept_id = 0 WHERE roll_no in(1,2,7,28);

SELECT s.roll_no, s.stud_name, d.dept_name
	FROM tbl_student as s
    LEFT JOIN tbl_dept as d
    ON s.dept_id = d.dept_id;