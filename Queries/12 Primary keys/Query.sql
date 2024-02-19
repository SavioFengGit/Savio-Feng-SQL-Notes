#definisci la chiave primaria della tabella
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    amount DECIMAL(5, 2)
);

#definisci dopo aver creato la tabella la chiave primaria
ALTER TABLE transactions
ADD CONSTRAINT
PRIMARY KEY (transaction_id);