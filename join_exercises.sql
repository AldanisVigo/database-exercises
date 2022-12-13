USE employees;

# Using the example in the Associative Table Joins section as a guide,
# write a query that shows each department along with the name of the
# current manager for that department.
SELECT dept_name AS department_name,
CONCAT(e.first_name,' ',e.last_name) AS `Department Manager`
FROM departments AS d

LEFT JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no

LEFT JOIN employees e
ON dm.emp_no = e.emp_no

WHERE dm.to_date = '9999-01-01' ORDER BY department_name ASC;

# Find the name of all departments currently managed by women.
SELECT dept_name AS department_name,
CONCAT(e.first_name, ' ', e.last_name) as 'Department Manager'
FROM departments AS d

LEFT JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no

LEFT JOIN employees AS e
ON dm.emp_no = e.emp_no

WHERE e.gender = 'F'
AND dm.to_date = '9999-01-01'

ORDER BY dept_name ASC;

# Find the current titles of employees currently working in the
# Customer Service department.
SELECT t.title AS 'title', COUNT(t.title) AS 'Total'
FROM titles AS t

JOIN current_dept_emp AS ce
ON ce.emp_no = t.emp_no

JOIN departments d
ON ce.dept_no = d.dept_no

WHERE d.dept_name = 'Customer Service'
AND t.to_date = '9999-01-01'

GROUP BY title;

# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department',
CONCAT(e.first_name, ' ', e.last_name) AS 'Manager',
s.salary AS 'Salary'
FROM departments AS d

JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no

JOIN employees AS e
ON dm.emp_no = e.emp_no

JOIN salaries AS s
ON e.emp_no = s.emp_no

WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'

GROUP BY dept_name, CONCAT(first_name, ' ', last_name), salary
ORDER BY dept_name;

# Bonus Find the names of all current employees, their department
# name, and their current manager's name .
SELECT CONCAT(me.first_name, ' ', me.last_name) AS name,
dept_name AS 'Department', CONCAT(e.first_name,' ', e.last_name) as 'Manager'
FROM employees AS e

JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no

JOIN departments AS d
ON dm.dept_no = d.dept_no

JOIN employees AS me
ON dm.dept_no = d.dept_no

WHERE dm.to_date = '9999-01-01'

GROUP BY name,dept_name, Manager

ORDER BY dept_name ASC, name ASC;


