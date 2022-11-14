# USE employees;
#
# # BIRTHDAYS OF EVERYONE WHOS BEEN A MANAGER:
# SELECT birth_date FROM employees
#   WHERE emp_no IN (SELECT emp_no FROM dept_manager);


# SELECT dept_name FROM departments WHERE dept_no IN (SELECT dept_no FROM dept_manager WHERE emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F') AND to_date > NOW() AND emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F'));


USE codeup_test_db;

INSERT INTO preferences (person_id, album_id) VALUES ((SELECT person_id FROM persons WHERE first_name = 'Tareq'), (SELECT album_id FROM albums WHERE album_name = 'Led Zeppelin IV'));

