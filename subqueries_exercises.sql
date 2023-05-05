USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
#
# 69 Rows

SELECT * FROM employees
WHERE hire_date = (
    SELECT hire_date FROM employees WHERE emp_no = 101010
    );
#
# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles

SELECT DISTINCT COUNT(title) AS 'Total Titles', title FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE first_name = 'Aamod'
    ) GROUP BY title;
#
# Find all the current department managers that are female.

SELECT CONCAT_WS(' ', first_name, last_name) AS Managers, dm.dept_no AS Department FROM employees e
JOIN dept_manager dm on e.emp_no = dm.emp_no
WHERE gender = 'F' AND e.emp_no IN (
    SELECT emp_no FROM dept_manager dm
                  WHERE dm.to_date > NOW()
    );

# Find all the department names that currently have female managers.
#
#
# +-----------------+
# | dept_name       |
# +-----------------+
# | Development     |
# | Finance         |
# | Human Resources |
# | Research        |
# +-----------------+

SELECT d.dept_name FROM departments d
WHERE dept_no IN (SELECT dept_no
                  FROM dept_manager dm
                  WHERE emp_no IN (SELECT emp_no
                                   FROM employees
                                   WHERE gender = 'F')
AND dm.to_date > NOW());

# Find the first and last name of the employee with the highest salary.
#
#
# +------------+-----------+
# | first_name | last_name |
# +------------+-----------+
# | Tokuyasu   | Pesch     |
# +------------+-----------+

SELECT first_name, last_name FROM employees
WHERE emp_no = (SELECT emp_no
                FROM salaries
                ORDER BY salary DESC
                LIMIT 1);