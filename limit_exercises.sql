-- List the first 10 distinct last name sorted in descending order. 
SELECT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10;

-- Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql. Update it to find just the first 5 employees.
SELECT first_name, last_name
FROM employees 
WHERE hire_date 
BETWEEN '1990-01-01' AND '1999-12-31'
    AND birth_date LIKE  '%-12-25'
ORDER BY birth_date ASC, hire_date DESC 
LIMIT 5;

-- Update the query to find the tenth batch of results
SELECT first_name, last_name
FROM employees 
WHERE hire_date 
BETWEEN '1990-01-01' AND '1999-12-31'
    AND birth_date LIKE  '%-12-25'
ORDER BY birth_date ASC, hire_date DESC 
LIMIT 5 OFFSET 45;