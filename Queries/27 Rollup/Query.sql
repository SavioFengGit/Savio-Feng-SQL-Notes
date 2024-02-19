-- ROLLUP, extension of the GROUP BY clause 
-- produces another row and shows the grand-total (super-aggregate) value

SELECT SUM(amount) AS "daily_sales", order_date
FROM transactions
GROUP BY order_date WITH ROLLUP;

SELECT COUNT(transaction_id) AS "# of orders", order_date
FROM transactions
GROUP BY order_date WITH ROLLUP;

SELECT COUNT(transaction_id) AS "# of orders", customer_id
FROM transactions
GROUP BY customer_id WITH ROLLUP;

SELECT SUM(hourly_pay) AS "hourly_pay", employee_id
FROM employees
GROUP BY employee_id WITH ROLLUP;