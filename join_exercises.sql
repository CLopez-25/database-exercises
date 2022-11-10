USE employees;

# FROM EXAMPLE:
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# START OF EXERCISES:
# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department:
SELECT d.dept_name AS Deparment_Name, CONCAT(e.first_name, ' ', e.last_name) AS Deparment_Manager
FROM employees as e
JOIN dept_manager as de ON de.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS Deparment_Name, CONCAT(e.first_name, ' ', e.last_name) AS Deparment_Manager
FROM employees as e
JOIN dept_manager as de ON de.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND gender = 'F'
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.






# Find the current salary of all current managers.
SELECT DISTINCT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Deparment_Manager, s.salary AS Salary
FROM employees as e
JOIN dept_manager as de ON de.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
JOIN salaries as s ON s.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name DESC;
