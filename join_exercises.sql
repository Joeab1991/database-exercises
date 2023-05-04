USE employees;

# write a query that shows each department along with the name of the current manager for that department.

SELECT d.dept_name, CONCAT_WS(' ', e.first_name, e.last_name) AS manager
    FROM departments d
    JOIN dept_manager dm ON d.dept_no = dm.dept_no
    JOIN employees e ON dm.emp_no = e.emp_no
    WHERE dm.to_date > NOW()
    ORDER BY d.dept_name;

# Find the name of all departments currently managed by women.

SELECT d.dept_name, CONCAT_WS(' ', e.first_name, e.last_name) AS female_manager
    FROM departments d
    JOIN dept_manager dm ON d.dept_no = dm.dept_no
    JOIN employees e on e.emp_no = dm.emp_no
    WHERE dm.to_date > NOW()
    AND e.gender = 'F'
    ORDER BY d.dept_name;

# List all the titles in the customer service dept and count how many current employees have that title.

SELECT t.title, COUNT(*) AS num_employees
    FROM employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    JOIN departments d ON de.dept_no = d.dept_no
    JOIN titles t ON e.emp_no = t.emp_no
    WHERE d.dept_name = 'Customer Service'
    AND de.to_date > NOW()
    AND t.to_date > NOW()
    GROUP BY t.title

# Find the current salary of all current managers.

SELECT d.dept_name, CONCAT_WS(' ', e.first_name, e.last_name) AS manager, s.salary
    FROM departments d
        JOIN dept_manager dm ON d.dept_no = dm.dept_no
        JOIN employees e ON dm.emp_no = e.emp_no
        JOIN salaries s ON e.emp_no = s.emp_no
    WHERE dm.to_date > NOW()
    AND s.to_date > NOW()
    ORDER BY d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name .

SELECT CONCAT_WS(' ', e.first_name, e.last_name) AS employee_name, d.dept_name, CONCAT_WS(' ', m.first_name, m.last_name) AS manager_name
    FROM employees e
        JOIN dept_emp de ON e.emp_no = de.emp_no
        JOIN departments d ON de.dept_no = d.dept_no
        JOIN dept_manager dm ON d.dept_no = dm.dept_no
        JOIN employees m ON dm.emp_no = m.emp_no
    WHERE de.to_date > NOW()
    AND dm.to_date > NOW();

# Find
