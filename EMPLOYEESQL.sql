SELECT d.emp_no, d.first_name, d.last_name, d.gender,
s.salary 
FROM employees as d
JOIN salaries as s 
ON d.emp_no=s.emp_no
ORDER by d.emp_no;

SELECT first_name,last_name  
FROM employees 
WHERE hire_date between '1986-01-01 00:00:00' and '1986-12-31 00:00:00';

SELECT t.dept_name, 
d.dept_no, d.emp_no, d.from_date, d.to_date,
e.first_name, e.last_name 
FROM dept_manager as d
INNER JOIN departments as t ON (d.dept_no=t.dept_no)
INNER JOIN employees as e ON (d.emp_no=e.emp_no)



SELECT * FROM dept_manager 
SELECT * FROM departments 
SELECT * FROM employees
SELECT * FROM dept_emp

SELECT t.dept_name,
e.emp_no, e.first_name, e.last_name
FROM employees as e 
INNER JOIN dept_emp as d
ON (e.emp_no=d.emp_no)
INNER JOIN departments as t ON (t.dept_no=t.dept_no)
ORDER by e.emp_no 

SELECT * FROM employees 
WHERE first_name= 'Hercules' and last_name LIKE 'B%';

SELECT t.dept_name, t.dept_no,
e.emp_no, e.first_name, e.last_name
FROM employees as e 
INNER JOIN dept_emp as d
ON (e.emp_no=d.emp_no)
INNER JOIN departments as t ON (t.dept_no=t.dept_no)
WHERE t.dept_name= 'Sales'
ORDER by e.emp_no

SELECT t.dept_name, t.dept_no,
e.emp_no, e.first_name, e.last_name
FROM employees as e 
INNER JOIN dept_emp as d
ON (e.emp_no=d.emp_no)
INNER JOIN departments as t ON (t.dept_no=t.dept_no)
WHERE t.dept_name= 'Sales' and 'Development'
ORDER by e.emp_no

SELECT l.last_name, COUNT(*)
FROM employees AS l
GROUP BY l.last_name
ORDER BY COUNT DESC;
