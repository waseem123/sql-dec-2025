USE db_school;
SELECT * FROM tbl_student;

CREATE TABLE tbl_dept(dept_id int primary key auto_increment,
	dept_name varchar(30),
    dept_building varchar(1));
    
INSERT INTO tbl_dept(dept_name,dept_building)
	VALUES('CSE','A'),
    ('MECH','B'),
    ('ENTC','C'),
    ('Civil','D');
    
SELECT * FROM tbl_dept;

desc tbl_student;
ALTER table tbl_student Add column dept_id int;
ALTER TABLE tbl_student 
	ADD CONSTRAINT foreign key (dept_id) 
    references tbl_dept(dept_id);

UPDATE tbl_student set dept_id=1 WHERE roll_no IN(2,7,11,13,14,27);
SELECT * FROM tbl_student;
SELECT * FROM tbl_dept;

SELECT * FROM tbl_student,tbl_dept;

SELECT * 
	FROM tbl_student as s,tbl_dept as d
    WHERE s.dept_id = d.dept_id;

-- SELECT column1,column2,...,columnN 
-- 	FROM tableName1 
--     JOIN tableName2
--     ON JOIN_CONDITION;

SELECT * FROM tbl_student as s
JOIN tbl_dept as d
ON s.dept_id = d.dept_id;

SELECT s.roll_no,s.stud_name,d.dept_name
FROM tbl_student as s
JOIN tbl_dept as d
ON s.dept_id = d.dept_id
ORDER BY s.roll_no;

-- SQL to fetch department name of specific student by roll_no
SELECT d.dept_name FROM tbl_student as s
JOIN tbl_dept as d
ON s.dept_id = d.dept_id
WHERE s.roll_no=3;

-- Fetchind student names using dept_name
SELECT s.stud_name,d.dept_name
FROM tbl_student as s
JOIN tbl_dept as d
ON s.dept_id=d.dept_id
WHERE d.dept_name = 'MECH'
OR d.dept_name = 'CSE';

-- Fetching the students and their departments of Solapur city
SELECT s.stud_name,d.dept_name FROM
tbl_student as s
JOIN tbl_dept as d
ON s.dept_id = d.dept_id
WHERE stud_city='Solapur';

SELECT s.stud_name,d.dept_name
FROM tbl_student as s
JOIN tbl_dept as d
ON s.dept_id=d.dept_id
WHERE d.dept_name NOT IN('MECH','CSE','CIVIL');
