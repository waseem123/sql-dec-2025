USE db_school;

SELECT * FROM tbl_student;
SELECT * FROM tbl_dept;

SELECT d.dept_name,
	count(s.roll_no)
FROM tbl_dept as d
JOIN tbl_student as s
ON d.dept_id = s.dept_id
WHERE d.dept_name = 'CSE'
AND s.stud_name LIKE '%a%';

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

-- Display department names whose student count is 3 or more than 3
SELECT d.dept_name,
	count(s.roll_no)
FROM tbl_dept as d
JOIN tbl_student as s
ON d.dept_id = s.dept_id
GROUP BY d.dept_name
HAVING count(s.roll_no)>=3;


SELECT d.dept_name,
	count(s.roll_no)
FROM tbl_dept as d
JOIN tbl_student as s
ON d.dept_id = s.dept_id
WHERE s.stud_city = 'Solapur'
AND d.dept_name = 'ENTC';

SELECT d.dept_name,
	count(s.roll_no)
FROM tbl_dept as d
LEFT JOIN tbl_student as s
ON d.dept_id = s.dept_id
WHERE d.dept_id IN (1,3,5)
GROUP BY d.dept_name;