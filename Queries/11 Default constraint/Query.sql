#assegnazione di un valore di default
CREATE TABLE products (
    product_id INT,
    product_name varchar(25),
    price DECIMAL(4, 2) DEFAULT 0
);

ALTER TABLE products 
ALTER price SET DEFAULT 0;

INSERT INTO products (product_id, product_name)
VALUES	(104, "straw"),
		(105, "napkin"),
		(106, "fork"),
        	(107, "spoon");
SELECT * FROM products;

#inserimento della data e ora corrente come default
CREATE TABLE transactions(
        transaction_id INT,
    	amount DECIMAL(5, 2),
   	transaction_date DATETIME DEFAULT NOW()
);
SELECT * FROM transactions;

INSERT INTO transactions (transaction_id, amount)
VALUES	(1, 4.99);
SELECT * FROM transactions;

INSERT INTO transactions (transaction_id, amount)
VALUES	(2, 2.89);
SELECT * FROM transactions;

INSERT INTO transactions (transaction_id, amount)
VALUES	(3, 8.37);
SELECT * FROM transactions;

DROP TABLE transactions;