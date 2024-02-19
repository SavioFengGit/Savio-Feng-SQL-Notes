#Trigger, when an event happens, do something ex insert, update, delete.
#esempio se un utente ha un certo ruolo, quindi da team leader va a manager, il salario deve aumentare automaticamente

CREATE TRIGGER before_hourly_pay_update #nome del trigger
BEFORE UPDATE ON employees  #si attiva prima di ogni operazione di update su employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080); #Il trigger modifica il valore della colonna salary della nuova riga in base al valore della colonna hourly_pay moltiplicato per 2080

CREATE TRIGGER before_hourly_pay_insert
BEFORE INSERT ON employees 
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

CREATE TRIGGER after_salary_delete
AFTER DELETE ON employees 
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total - OLD.salary
WHERE expense_name = "salaries";

CREATE TRIGGER after_salary_insert
AFTER INSERT ON employees 
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + NEW.salary
WHERE expense_name = "salaries";

CREATE TRIGGER after_salary_update
AFTER UPDATE ON employees 
FOR EACH ROW
UPDATE expenses
SET expense_total = expense_total + (NEW.salary - OLD.salary)
WHERE expense_name = "salaries";