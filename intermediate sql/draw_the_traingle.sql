
DELIMITER $$ 
-- IDK but we have to use this to run the procedure otherwise the error are popping 
CREATE PROCEDURE PRINT(i INT )
BEGIN 
WHILE i > 0 DO 
    SELECT REPEAT('* ', i);
    SET i = i-1 ;
END WHILE; 
END; $$ 
-- MUst be ended with the $$ , i need to understand this later , but for now lets just say that 
-- this makes the code run in the hackerank 
CALL PRINT(20);