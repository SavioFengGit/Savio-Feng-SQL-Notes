#% = any amount of random characters
#_ = one single random character

SELECT * FROM employees
WHERE first_name LIKE "s%";

SELECT * FROM employees
WHERE last_name LIKE "%r";

SELECT * FROM employees
WHERE hire_date LIKE "2023%";

SELECT * FROM employees
WHERE job LIKE "_ook";

SELECT * FROM employees
WHERE hire_date LIKE "__-01-__";

SELECT * FROM employees
WHERE job LIKE "_a%";