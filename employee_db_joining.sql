SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS dept_manager, departments.dept_name AS department_name
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- with aliases
SELECT CONCAT(e.first_name, ' ', e.last_name) AS dept_manager_name, d.dept_name AS department_name
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;