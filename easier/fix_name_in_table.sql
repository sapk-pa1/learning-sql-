-- DDL statement to create the table 

CREATE TABLE USERS
(
user_id int , 
name varchar(20)
); 
-- DML statement to insert some test values into the table 
INSERT INTO USERS VALUES (1, 'aLice') 
INSERT INTO USERS VALUES (2, 'boB') 

SELECT * FROM USERS; 
SELECT UPPER(substring(name, 1, 1 ) ) +  LOWER(SUBSTRING(name, 2 ,LEN(name)))
FROM users;  
