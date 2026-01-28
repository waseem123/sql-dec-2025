use db_school;
SELECT * FROM tbl_student;
SELECT * FROM tbl_dept;

SELECT stud_name,dept_name
FROM tbl_student as s
JOIN tbl_dept as d
ON s.dept_id = d.dept_id;

SELECT stud_city,max(stud_marks) FROM tbl_student WHERE stud_city IN('Solapur','Pune','Mumbai') GROUP BY stud_city;

SELECT stud_city,max(stud_marks)
	FROM tbl_student
WHERE stud_city = 'Solapur'
UNION
SELECT stud_city,max(stud_marks)
	FROM tbl_student
WHERE stud_city = 'Mumbai'
UNION
SELECT stud_city,max(stud_marks)
	FROM tbl_student
WHERE stud_city = 'Pune';