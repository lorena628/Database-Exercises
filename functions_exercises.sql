-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. 
SELECT COUNT(gender), gender
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya'
GROUP BY gender;


-- Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name,' ', last_name)
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya'
    AND last_name LIKE '%e%'
ORDER BY last_name , first_name ;


-- use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT DATEDIFF(NOW(), hire_date) AS "days employed", hire_date, last_name, first_name
FROM employees 
WHERE hire_date 
BETWEEN '1990-01-01' AND '1999-12-31'
    AND birth_date LIKE  '%-12-25'
ORDER BY birth_date ASC, hire_date DESC ;

-- Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination of first and last names. 
-- You will find there were some duplicate first and last name pairs in your previous results. 
-- Add a count() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT COUNT(last_name), last_name,first_name
FROM employees 
WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%'
GROUP BY last_name, first_name
ORDER BY last_name, first_name;