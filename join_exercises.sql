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




SELECT CONCAT( e.first_name,' ', e.last_name) AS Employee, d.dept_name, CONCAT(e2.first_name, ' ', e2.last_name) AS Department_Manager
FROM employees AS e
JOIN dept_emp de on e.emp_no = de.emp_no
JOIN departments d on d.dept_no = d.dept_no
JOIN dept_manager dm on de.emp_no = dm.emp_no
JOIN employees e2 on e2.emp_no = dm.emp_no
WHERE de.to_date >

