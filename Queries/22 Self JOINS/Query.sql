#self join, join another copy of a table to itself, used to compare rows of the same table, helps to display a heirarchy of data

SELECT a.first_name, a.last_name,
               CONCAT(b.first_name," ", b.last_name) AS "reports_to"
FROM employees AS a
INNER JOIN employees AS b
ON a.supervisor_id = b.employee_id;