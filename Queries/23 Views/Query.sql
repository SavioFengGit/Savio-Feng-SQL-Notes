#Views, a virtual table based on the result set of an sql statement
#the fields in a view are fields from one or more real tables in the database
#they are not real tables, but can be interacted with as if they were

CREATE VIEW employee_attendance AS 
SELECT first_name, last_name
FROM employees;

CREATE VIEW customer_emails AS 
SELECT email
FROM customers;