SELECT DISTINCT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT * FROM employees 
WHERE hire_date 
BETWEEN '1990-01-01' AND '1999-12-31';

SELECT last_name
FROM employees
WHERE birth_date LIKE  '%-12-25';

SELECT * 
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya';

SELECT first_name 
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
    AND ( gender = 'M' );
    
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
    OR last_name LIKE '%E';
    
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
    AND last_name LIKE '%E';
    
SELECT * 
FROM employees 
WHERE hire_date 
BETWEEN '1990-01-01' AND '1999-12-31'
    AND birth_date LIKE  '%-12-25';

