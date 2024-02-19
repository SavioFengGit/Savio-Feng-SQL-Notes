#stored procedure, is a prepared sql code that you can save, great if there's a query that your write often

#definizione di una procedura
DELIMITER $$ #cambio il delimiter con il doppio dollaro al posto di ; altrimenti end; va in errore, end $$ va con successo
CREATE PROCEDURE get_customers()
BEGIN
	SELECT * FROM customers;
END $$
DELIMITER ;

CALL get_customers(); #richiami la procedura che hai definito e avvia la query
DROP PROCEDURE get_customers; #delete la procedure


#altra procedure
DELIMITER $$
CREATE PROCEDURE find_customer(IN id INT)  
BEGIN  
	SELECT *
	FROM customers
	WHERE customer_id = id;
END $$
DELIMITER ; 
CALL find_customer("11111"); #richiama la funzione passando l'argomento




#altra procedure
DELIMITER $$
CREATE PROCEDURE find_customer(IN f_name VARCHAR(50), IN l_name VARCHAR(50))  
BEGIN  
	SELECT *
	FROM customers
	WHERE first_name = f_name AND last_name = l_name;
END $$
DELIMITER ;

CALL find_customer("Larry", "Lobster"); #richiama la funzione passando i due argomenti