DELETE FROM PERSON 
WHERE ID NOT IN 
-- These emails are the emails that should not be touched 

-- Subqueries to get the emails that should not be deleted fro the records 

(SELECT MIN_ID FROM 
(SELECT MIN(ID) as MIN_ID , EMAIL  as EMAILS 
FROM PERSON 
GROUP BY EMAIL ) p )

SELECT * FROM PERSON; 
 -- Errors encounted 
 -- 1.  Every derived columns must have its own alias 

 -- Solution is to create a alias of the columns names in the subqueries  and alias to query too