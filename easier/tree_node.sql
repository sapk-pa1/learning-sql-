/*

https://leetcode.com/problems/tree-node

*/

SELECT ID , 'Inner' AS TYPE  
FROM TREE
WHERE ID IN 
-- This gives the ROOT AS WELL AS THE INNER NODE 
(SELECT DISTINCT(P_ID)
FROM TREE WHERE P_ID IS NOT NULL)
-- THis will remove the root node 
AND P_ID IS NOT NULL 

UNION 

SELECT ID, 'Root' AS TYPE 
FROM TREE WHERE P_ID IS NULL

UNION

SELECT ID, 'Leaf' AS TYPE 
FROM TREE 
WHERE ID NOT IN 
(SELECT DISTINCT P_ID FROM TREE 
WHERE P_ID IS NOT NULL )
-- This needs to be there as when we have single element 
/*
-----ID ---------| -------P_ID-------------
      1          |     NULL 
IF last where condtion is not used then 1 Will be treated as the leaf node but it is a root node 
        This Expresssion 
            |
            |
            V
*/
AND P_ID IS NOT NULL 