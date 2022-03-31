USE rachel;


SELECT DISTINCT title
FROM titles;

# SELECT title, COUNT(title)
# FROM titles
# GROUP BY title
# ORDER BY COUNT(*) DESC ;




SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;


SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;


SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*);


SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
