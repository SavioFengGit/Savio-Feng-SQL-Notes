CREATE TABLE test(
     my_date DATE,
     my_time TIME,
     my_datetime DATETIME
);

INSERT INTO test
VALUES(CURRENT_DATE(), CURRENT_TIME(), NOW()); #il primo restituisce la data, il secondo l'ora, il terzo data e ora

SELECT * FROM test;