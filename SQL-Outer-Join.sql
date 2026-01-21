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
    
SELECT s.roll_no, s.stud_name, d.dept_name
	FROM tbl_dept as d
    LEFT JOIN tbl_student as s
    ON s.dept_id = d.dept_id;
    
SELECT 
	COALESCE(s.roll_no,0) as roll_no,
	COALESCE(s.stud_name,'NA') as stud_name, 
    d.dept_name
	FROM tbl_student as s
    RIGHT JOIN tbl_dept as d
    ON s.dept_id = d.dept_id;
    
SELECT s.roll_no, s.stud_name, COALESCE(d.dept_name,'NA')
	FROM tbl_dept as d
    RIGHT JOIN tbl_student as s
    ON s.dept_id = d.dept_id;
    
SELECT DISTINCT
	stud_city,
    dept_name
FROM tbl_student as s
RIGHT JOIN tbl_dept as d
ON s.dept_id = d.dept_id
WHERE s.stud_city!='Solapur';

SELECT 
	s.roll_no,
    s.stud_name,
    d.dept_name
FROM tbl_student as s
INNER JOIN tbl_dept as d
ON s.dept_id = d.dept_id
WHERE dept_name LIKE '%S%';

SELECT s.stud_name,
	d.dept_name
FROM tbl_student as s
JOIN tbl_dept as d
ON s.dept_id = d.dept_id
WHERE stud_city='SOLAPUR'
OR d.dept_name = 'MECH';
