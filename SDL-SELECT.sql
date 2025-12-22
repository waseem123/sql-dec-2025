-- Unconditional Select
-- SELECT COLUMN_NAMES FROM <TABLE_NAME>;
SELECT * FROM tbl_student;
SELECT roll_no,stud_name,stud_city,stud_gender,stud_marks
FROM tbl_student;

SELECT roll_no, stud_name, stud_marks FROM tbl_student;
SELECT stud_city, stud_name, roll_no FROM tbl_student;

-- Conditional Select
-- SELECT COLUMN_NAMES FROM <TABLE_NAME> WHERE <CONDITION>;
SELECT * FROM tbl_student WHERE roll_no = 55;
SELECT * FROM tbl_student WHERE stud_name = 'Miran';
SELECT roll_no, stud_name FROM tbl_student WHERE stud_gender='M';