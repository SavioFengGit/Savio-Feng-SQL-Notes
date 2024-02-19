#Not case sensitive

#create
CREATE DATABASE myDB; 

#use DB (or right click and set as default database)
USE myDB; 

#change the db permission in read only, non puoi fare altre operazioni  sul db
ALTER DATABASE myDB READ ONLY = 1;

#delete
DROP DATABASE myDB; 

