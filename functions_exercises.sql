USE employees;

#  COPIED/PASTED ORDER BY EXERCISES:
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

# SOLUTION BY JOSH:
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, emp_no DESC;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE ('E%') ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE ('%q%') ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE first_name = 'Irena'
    AND gender = 'M'
   OR first_name = 'Vidya'
    AND gender = 'M'
   OR first_name = 'Maya'
    AND gender = 'M';

SELECT * FROM employees WHERE last_name LIKE ('E%') OR last_name LIKE ('%E');

SELECT * FROM employees WHERE last_name LIKE ('E%') AND last_name LIKE ('%E');

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name
    LIKE 'E%'
  AND last_name
    LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

# Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE hire_date LIKE ('199%') AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees WHERE hire_date LIKE ('199%') AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25 ORDER BY birth_date, hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT *, DATEDIFF(CURDATE(), hire_date)  FROM employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND YEAR(hire_date) LIKE '199%' ORDER BY DATEDIFF(hire_date, CURDATE());
