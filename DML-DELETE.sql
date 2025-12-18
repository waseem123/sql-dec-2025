USE db_school;

show tables;

CREATE TABLE tbl_temp
SELECT * FROM tbl_student;

SELECT * FROM tbl_temp;
describe tbl_temp;

ALTER TABLE tbl_temp
CHANGE roll_no roll_no int PRIMARY KEY auto_increment;

DELETE FROM tbl_temp;

DELETE FROM tbl_temp WHERE roll_no=26;

INSERT INTO tbl_temp(stud_name,stud_marks)
	VALUES('Alice',88.30);
    
SET autocommit = OFF;
DELETE FROM tbl_temp;
commit;
rollback;

INSERT INTO tbl_temp
SELECT * FROM tbl_student;
rollback;

TRUNCATE tbl_student;
select * from tbl_student;
INSERT INTO tbl_student (stud_name,stud_city)	
VALUES('Alexa','London');
commit;

DROP TABLE tbl_student;