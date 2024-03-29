SELECT * FROM employees
WHERE hire_date  > '2023-01-05' AND job = “cook”;

SELECT * FROM employees
WHERE job = 'Cook' OR job = 'Cashier';

SELECT * FROM employees
WHERE NOT job = 'Manager';

SELECT * FROM employees
WHERE NOT job = 'Manager' AND NOT job = 'Asst. Manager';

SELECT *
FROM employees
WHERE hire_date BETWEEN '2023-01-04' AND '2023-01-07';

SELECT * 
FROM employees
WHERE job IN ("cook", "cashier", "janitor");