CREATE TABLE products (
    product_id INT,
    product_name varchar(25),
    price DECIMAL(4, 2) NOT NULL #inserito qui, obbliga il campo ad avere un valore
);

ALTER TABLE products
MODIFY price DECIMAL(4, 2) NOT NULL;

INSERT INTO products
VALUES(104, "cookie", NULL);