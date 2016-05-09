SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya'
ORDER BY last_name DESC, first_name DESC;

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya'
    AND last_name LIKE '%e%'
ORDER BY last_name DESC, first_name DESC;


-- the first result is the oldest employee who was hired last. It should be Khun Bernini 
SELECT first_name, last_name
FROM employees 
WHERE hire_date 
BETWEEN '1990-01-01' AND '1999-12-31'
    AND birth_date LIKE  '%-12-25'
ORDER BY hire_date DESC, birth_date ASC;
    