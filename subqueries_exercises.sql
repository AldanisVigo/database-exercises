# Find all the employees with the same hire date as employee
# 101010 using a subquery. 69 Rows
SELECT * FROM employees
WHERE hire_date = (
    SELECT hire_date FROM employees WHERE emp_no = '101010'
);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT title FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE first_name = 'Aamod'
)
GROUP BY title
ORDER BY title ASC;


# Find all the current department managers that are female.
SELECT CONCAT(first_name,' ',last_name) AS 'Female Department Managers'
FROM employees WHERE emp_no IN (
    SELECT emp_no FROM dept_manager WHERE to_date = '9999-01-01'
) AND gender = 'F';

# BONUS
# Find all the department names that currently have female managers.
SELECT dept_name FROM departments WHERE dept_no IN (
    SELECT dept_no FROM dept_manager WHERE emp_no IN (
        SELECT emp_no FROM employees WHERE gender = 'F'
    ) AND dept_manager.to_date = '9999-01-01'
) ORDER BY dept_name;

# Find the first and last name of the employee with the highest salary.
SELECT first_name,last_name FROM employees WHERE emp_no = (
    SELECT emp_no FROM salaries WHERE salary = (
        SELECT MAX(salary) FROM salaries
    )
);
