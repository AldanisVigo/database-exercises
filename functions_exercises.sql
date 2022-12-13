# Copy the order_by_exercises.sql script and save it as
# functions_exercises.sql.
USE employees;

# Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a single
# column in your results.
# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT CONCAT(first_name, " ", last_name)
    AS `First and Last` FROM employees
    WHERE last_name LIKE "E%"
    OR last_name LIKE "E%";

# Find all employees born on Christmas — 842 rows.
SELECT CONCAT(first_name," ", last_name)
    AS `Employees Born On Christmas` FROM employees
    WHERE birth_date LIKE '%-12-24'
    ORDER BY first_name, last_name ASC;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT CONCAT(first_name," ", last_name)
    AS `Employees Hired In The 90s And Born On Christmas` FROM employees
    WHERE birth_date LIKE '%-12-25'
    AND YEAR(hire_date) BETWEEN 1990 AND 1999;

# Change the query for employees hired in the 90s and born on Christmas
# such that the first result is the oldest employee who was hired last.
# It should be Khun Bernini.
SELECT CONCAT(first_name, " ", last_name)
    AS `SAME AS PREVIOUS WITH SORTED BY OLDEST HIRED LAST` FROM employees
    WHERE birth_date LIKE '%-12-25'
    AND YEAR(hire_date) BETWEEN 1990 AND 1999
    ORDER BY birth_date ASC, hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s,
# use datediff() to find how many days they have been working at the
# company (Hint: You might also need to use now() or curdate()).
SELECT CONCAT( first_name," ",last_name) AS `EMPLOYEE NAME`, DATEDIFF(NOW(),hire_date)
    AS 'DAYS AT THE COMPANY'
    FROM employees
    WHERE birth_date LIKE '%-12-25'
    AND YEAR(hire_date) BETWEEN 1990 AND 1999
    ORDER BY DATEDIFF(NOW(),hire_date) DESC;