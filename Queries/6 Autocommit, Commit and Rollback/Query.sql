set AUTOCOMMIT = off; #all transactions will not save automatically, we would need to save manually, questo ci serve per non fare il "salvataggio automatico"
commit;#create a save point, cioè decidi tu quando salvare lo stato delle tabelle

#avendo fatto un save point, nel momento in cui cancelli per sbaglio tutti i valori di una tabella puoi fare il rollback
rollback; #restore my transaction back to the previous save point, ritorna all'ultimo commit fatto



INSERT INTO employees 
VALUES	(1, 'Eugene', 'Krabs', 25.50, '2023-01-02'),
		(2, 'Squidward', 'Tentacles', 15.00, '2023-01-03'),
		(3, 'Spongebob', 'Squarepants', 12.50, '2023-01-04'),
		(4, 'Patrick', 'Star', 12.50, '2023-01-05'),
		(5, 'Sandy', 'Cheeks', 17.25, '2023-01-06');