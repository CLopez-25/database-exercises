# Aggregate Functions

USE employees;

SELECT COUNT(first_name), gender FROM employees GROUP BY gender;

SELECT COUNT(*), gender FROM employees GROUP BY gender;

# average age of employee hired
SELECT AVG(DATEDIFF(hire_date, birth_date))/365 FROM employees;

# youngest employee hired
SELECT MIN(DATEDIFF(hire_date, birth_date))/365 FROM employees;

# oldest employee hired
SELECT MAX(DATEDIFF(hire_date, birth_date))/365 FROM employees;

# FUNCTIONALLY IDENTICAL:
SELECT first_name FROM employees GROUP BY first_name;
SELECT DISTINCT first_name FROM employees;

# SHOWS HOW MANY OF THAT NAME THERE ARE IN THE LIST:
SELECT COUNT(first_name), first_name FROM employees GROUP BY first_name ORDER BY COUNT(first_name) DESC;
