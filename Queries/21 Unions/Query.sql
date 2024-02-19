#UNION combines the results of two or more select statements

#NO DUPLICATES
SELECT first_name, last_name FROM employees
UNION
SELECT first_name, last_name FROM customers;

#DUPLICATES OK
SELECT first_name, last_name FROM employees
UNION ALL
SELECT first_name, last_name FROM customers;