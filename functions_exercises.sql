USE rachel;

#2
SELECT CONCAT(first_name,' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%E%';

#3
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

#4
SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;


#5
SELECT first_name, last_name, hire_date
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
ORDER BY hire_date DESC, birth_date ASC ;



#6
SELECT first_name, last_name, hire_date,
       DATEDIFF(NOW(), hire_date) as days_working
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;