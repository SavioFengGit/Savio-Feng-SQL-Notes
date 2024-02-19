#update del campo hourly_pay dove employee_id ha valore 6
UPDATE employees
SET hourly_pay = 10.25
WHERE employee_id = 6;
SELECT * FROM employees;

#stessa cosa ma cancella
DELETE FROM employees
WHERE employee_id = 6;
SELECT * FROM employees;

