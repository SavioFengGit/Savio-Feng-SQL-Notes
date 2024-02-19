#INNER JOIN selects records that have a matching key in both tables.
SELECT *
FROM transactions INNER JOIN customers
ON transactions.customer_id = customers.customer_id; #chiave tabella 1 = chiave tabella 2

#LEFT JOIN returns all records from the left table and the matching records from the right table
SELECT *
FROM transactions LEFT JOIN customers
ON transactions.customer_id = customers.customer_id;

#RIGHT JOIN returns all records from the right table and the matching records from the left table
SELECT *
FROM transactions RIGHT JOIN customers
ON transactions.customer_id = customers.customer_id;