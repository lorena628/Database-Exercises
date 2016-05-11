-- write a query that shows each department along with
-- name of the CURRENT manager for that department.
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS dept_manager, departments.dept_name AS department_name
FROM departments 
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01';
--                                              ********     aliases ***************
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', d.dept_name AS department_name
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01';







--Find the name of all departments CURRENTLY managed by women
SELECT CONCAT (employees.first_name, ' ', employees.last_name) AS 'Manager Name', departments.dept_name AS 'Department Name'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE gender = 'F' AND dept_manager.to_date = '9999-01-01';
--                                              ********     aliases ***************
SELECT CONCAT (e.first_name, ' ', e.last_name) AS 'Manager Name', d.dept_name AS 'Department Name'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE gender = 'F' AND dm.to_date = '9999-01-01';







--Find the current titles of employees currently working in the Customer Service department
SELECT titles.title AS 'title', COUNT (titles.title) AS 'Count'
FROM dept_emp
JOIN titles ON dept_emp.emp_no = titles.emp_no
WHERE dept_no = 'd009' AND titles.to_date = '9999-01-01'
GROUP BY title;
--                                                 ********     aliases ***************
SELECT t.title AS 'title', COUNT (t.title) AS 'Count'
FROM dept_emp AS de
JOIN titles AS t ON de.emp_no = t.emp_no
WHERE dept_no = 'd009' AND t.to_date = '9999-01-01'
GROUP BY title;







--Find the current salary of all current managers.
SELECT CONCAT (employees.first_name, ' ', employees.last_name) AS 'Name', departments.dept_name AS 'Department Name', salaries.salary AS 'Salary'
FROM departments 
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01';
--                                              ********     aliases ***************
SELECT CONCAT (e.first_name, ' ', e.last_name) AS 'Name', d.dept_name AS 'Department Name', s.salary AS 'Salary'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';







-- Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT (employees.first_name, ' ', employees.last_name) AS 'Employee Name', departments.dept_name AS 'Department Name', CONCAT (managers.first_name, ' ', managers.last_name) AS 'Manager Name'
FROM departments
JOIN dept_emp ON departments.dept_no  = dept_emp.dept_no
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees AS managers ON dept_manager.emp_no = managers.emp_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01';
--                                              ********     aliases ***************
SELECT CONCAT (e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT (managers.first_name, ' ', managers.last_name) AS 'Manager Name'
FROM departments AS d
JOIN dept_emp AS de ON d.dept_no  = de.dept_no
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS managers ON dm.emp_no = managers.emp_no
JOIN employees AS e ON de.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND de.to_date = '9999-01-01';
