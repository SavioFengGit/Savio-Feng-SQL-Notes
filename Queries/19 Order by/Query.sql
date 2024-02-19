SELECT * FROM employees
ORDER BY last_name ASC;

SELECT * FROM transactions
ORDER BY amount DESC, customer_id DESC; #riordini il tutto in base ad amount, poi se ci sono valori uguali utilizza customer_id per ordinare