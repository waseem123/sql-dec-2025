USE db_school;
SELECT * FROM tbl_student;
SELECT COUNT(roll_no) FROM tbl_student;
SELECT stud_city,COUNT(roll_no) FROM tbl_student WHERE stud_city='Solapur';
SELECT stud_city,COUNT(roll_no) FROM tbl_student group by stud_city;
SELECT MAX(stud_marks), stud_city FROM tbl_student GROUP BY stud_city;
SELECT COUNT(stud_gender),stud_city FROM tbl_student WHERE stud_gender='F' GROUP BY stud_city ;

SELECT COUNT(roll_no),stud_city
FROM
	tbl_student
GROUP BY stud_city
HAVING COUNT(roll_no)>2
Order by count(roll_no) desc;