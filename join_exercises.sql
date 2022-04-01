USE employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON dm.dept_no = d.dept_no
WHERE dm.to_date > now();




SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON dm.dept_no = d.dept_no
WHERE dm.to_date > now()
AND gender = 'F';


SELECT t.title, COUNT(t.emp_no) AS total
FROM titles AS t
JOIN dept_emp de
ON t.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE t.to_date > curdate()
AND dept_name = 'Customer Service'
AND de.to_date> curdate()
GROUP BY t.title
ORDER BY total desc ;




SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary
FROM employees AS e

JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no

JOIN departments AS d
ON dm.dept_no = d.dept_no

JOIN salaries s
ON dm.emp_no = s.emp_no

WHERE dm.to_date > now()
AND s.to_date > now()
GROUP BY d.dept_name
ORDER BY dept_name;




SELECT CONCAT( first_name,' ', last_name) AS Employee
FROM employees
WHERE

