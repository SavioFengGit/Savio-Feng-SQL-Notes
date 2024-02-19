USE myDB; # prima di fare create devi selezionare il db

CREATE TABLE employees (
	employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);


select * from employees; #visualizzi i campi della tabella

rename table employees to workers; #rename della tabella

drop table workers; #delete del table

#aggiunge un campo nuovo alla tabella
alter table workers
add phone_number VARCHAR(15);

#rename della colonna
alter table workers
rename column phone_number to email;

#cambio del data type
alter table workers
modify column email VARCHAR(100);

#modifichi anche l'ordine di visualizzazione, email deve comparire dopo last_name
alter table workers
modify email VARCHAR(100)
after last_name;


#modifichi anche l'ordine di visualizzazione, email deve comparire come prima colonna
alter table workers
modify email VARCHAR(100)
first;


#cancello una colonna della tabella
alter table workers
drop column email;

