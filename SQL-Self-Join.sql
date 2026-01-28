USE db_company;

SELECT * FROM tbl_employee;
Show tables;

TRUNCATE tbl_employee;

ALTER TABLE tbl_employee ADD COLUMN manager_id int;

INSERT INTO tbl_employee (emp_name,emp_designation,manager_id,emp_salary)VALUES('Sadik','CEO',0,500000);
INSERT INTO tbl_employee (emp_id, emp_name, emp_designation, manager_id, emp_salary) VALUES
-- Level 2: Directors (Reporting to Sadik - ID 1)
(2, 'Alice', 'Director of Ops', 1, 350000),
(3, 'Bob', 'Director of Engineering', 1, 360000),
(4, 'Charlie', 'Director of HR', 1, 300000),

-- Level 3: Managers (Reporting to Directors - IDs 2, 3)
(5, 'Diana', 'Ops Manager', 2, 200000),
(6, 'Ethan', 'Logistics Manager', 2, 190000),
(7, 'Fiona', 'Software Manager', 3, 220000),
(8, 'George', 'QA Manager', 3, 210000),

-- Level 4: Staff (Reporting to Managers - IDs 5, 7, 8)
(9, 'Hannah', 'Ops Coordinator', 5, 90000),
(10, 'Ian', 'Inventory Lead', 5, 85000),
(11, 'Julia', 'Senior Developer', 7, 150000),
(12, 'Kevin', 'Backend Developer', 7, 130000),
(13, 'Laura', 'Frontend Developer', 7, 130000),
(14, 'Mike', 'Mobile Developer', 7, 135000),
(15, 'Nina', 'QA Lead', 8, 120000),
(16, 'Oscar', 'Manual Tester', 8, 80000),
(17, 'Paula', 'Automation Engineer', 8, 110000),
(18, 'Quinn', 'HR Generalist', 4, 95000),
(19, 'Riley', 'Recruiter', 4, 88000),
(20, 'Steve', 'Payroll Specialist', 4, 92000);


SELECT m.emp_id,
	m.emp_name as employee,
    COALESCE(e.emp_name,'BOSS') as manager
FROM tbl_employee as e
RIGHT JOIN tbl_employee as m
ON e.emp_id = m.manager_id
ORDER BY m.emp_id;