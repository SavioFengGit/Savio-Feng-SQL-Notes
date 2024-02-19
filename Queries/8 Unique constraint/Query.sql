#il keyword UNIQUE va a definire che i valori di un certo campo, non possono mai essere uguali, su product name non possiamo inserire due valori uguali

CREATE TABLE products (
    product_id INT,
    product_name varchar(25) UNIQUE, #inserito l'unique
    price DECIMAL(4, 2)
);

ALTER TABLE products
ADD CONSTRAINT 
UNIQUE (product_name); #nel caso lo aggiungi dopo averlo creato

INSERT INTO products
VALUES (100, 'hamburger', 3.99),
               (101, 'fries', 1.89),
               (102, 'soda', 1.00),
               (103, "ice cream", 1.49);

SELECT * FROM products;