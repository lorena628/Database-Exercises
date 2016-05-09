-- use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title
FROM titles;    

-- sort the results alphabetically
SELECT title
FROM titles
GROUP BY title ASC;

-- last names start and end with 'E'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' 
    AND last_name LIKE '%e';

-- find just the unique last names that start and end with 'E' using GROUP BY
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' 
    AND last_name LIKE '%e'
GROUP BY last_name;

-- now find unique combinations of first and last name where the last name starts and ends with 'E'
SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%' 
    AND last_name LIKE '%e';

-- Find unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY

SELECT last_name
FROM employees 
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
GROUP BY last_name;