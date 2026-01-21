USE db_school;

SELECT * FROM tbl_student WHERE stud_gender='m';
SELECT * FROM tbl_dept;

-- Fetching all department names with their count of students
SELECT d.dept_name,
	count(s.roll_no)
FROM tbl_dept as d
LEFT JOIN tbl_student as s
ON d.dept_id = s.dept_id
GROUP BY d.dept_name;

SELECT d.dept_name,
	count(s.stud_gender) as male
FROM tbl_dept as d
RIGHT JOIN tbl_student as s
ON d.dept_id = s.dept_id
WHERE s.stud_gender = 'm'
GROUP BY dept_name;

SELECT d.dept_name,
avg(s.stud_marks) as average
FROM tbl_dept as d
LEFT JOIN tbl_student as s
ON d.dept_id = s.dept_id
GROUP BY dept_name
ORDER BY average desc;

