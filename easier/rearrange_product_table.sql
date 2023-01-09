/*
https://leetcode.com/problems/rearrange-products-table

*/

SELECT product_id, 'store1' AS store , store1 as price  
FROM Products 
WHERE store1 is not null 
UNION 

SELECT product_id, 'store2' AS store , store2 as price  
FROM Products 
WHERE store2 is not null 
UNION 


SELECT product_id, 'store3' AS store , store3 as price  
FROM Products 
WHERE store3 is not null 
