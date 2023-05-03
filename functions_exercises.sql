use employees;

SELECT * FROM employees WHERE (first_name IN ('Irena')
    OR first_name IN ('Vidya')
    OR first_name IN ('Maya'))
                          AND (gender = 'M')
ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%'
                           OR last_name LIKE '%E';

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%'
                          AND last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE '%q%'
                          AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE DAY(birth_date) = 25
                          AND MONTH(birth_date) = 12;

SELECT * FROM employees WHERE (DAY(birth_date) = 25
                          AND MONTH(birth_date) = 12)
                          AND YEAR(hire_date) BETWEEN 1990 AND 1999
                          ORDER BY birth_date, hire_date DESC;

SELECT DATEDIFF(NOW(), hire_date), employees.* FROM employees WHERE DAY(birth_date) = 25
                                                                AND MONTH(birth_date) = 12
                                                                AND YEAR(hire_date) LIKE '199%'
                                                                ORDER BY DATEDIFF(hire_date, NOW()) DESC;