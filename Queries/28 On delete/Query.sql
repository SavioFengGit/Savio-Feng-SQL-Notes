#on delete set null, when a fk is deleted, replace fk with null
#on delete cascade, when a fk is deleted, delete the row

ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id 
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) 
ON DELETE SET NULL;

ALTER TABLE transactions 
ADD CONSTRAINT fk_customer_id 
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) 
ON DELETE CASCADE;