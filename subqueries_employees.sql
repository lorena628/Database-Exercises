-- Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT hire_date
FROM employees
WHERE emp_no = 101010;


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);


-- Find all the titles held by all employees with the first name Aamod
SELECT first_name, emp_no
FROM employees
WHERE first_name = 'Aamod';

SELECT title, emp_no 
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

-- Find all the department managers that are female
SELECT first_name, gender
FROM employees
WHERE gender = 'F';


SELECT emp_no
FROM dept_manager
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
);

SELECT first_name, emp_no
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
AND gender = 'F';



--  BONUS ******* Find all the department names that have female managers.
SELECT dept_name, dept_no
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F' AND dept_manager.to_date = '9999-01-01'
    )
);







