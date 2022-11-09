USE employees;

SELECT COUNT(*) FROM titles;

SELECT MAX(DATEDIFF(hire_date, birth_date))/365 AS age_at_hire FROM employees;

SELECT * FROM employees e;

SHOW INDEXES FROM employees;

SHOW INDEXES FROM salaries;

SELECT salary FROM salaries WHERE salary BETWEEN 50000 AND 70000;

ALTER TABLE salaries ADD INDEX salaries_index (salary);

ALTER TABLE salaries DROP INDEX salaries_index;

# ALTER TABLE tbl_name ADD UNIQUE (column_name ...) = the combination of the two becomes unique.

