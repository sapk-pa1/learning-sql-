/* 

Link : https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
*/ 


SELECT  S.NAME
FROM STUDENTS  S
INNER JOIN FRIENDS F ON S.ID = F.ID  
INNER JOIN PACKAGES P1 ON S.ID = P1.ID   -- getting the students salary in a record 
INNER JOIN PACKAGES P2 ON P2.ID = F.FRIEND_ID -- Getting the friends salary alongside 
WHERE P2.Salary > P1.Salary  -- Friends salary greater 
ORDER BY P2.Salary;-- ORdered by salary offered to the best friends 