/* 
leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions
*/



SELECT * FROM VISITS; 
SELECT * FROM TRANSACTIONS;

-- We have transaction id associated with the visit id which is inturn associated with the customers id 
-- So we have to find the number of time visited without making any transactions 

SELECT V.Customer_id , count(V.visit_id) as count_no_trans
FROM VISITS V
-- We only need the visit from the views 
LEFT JOIN TRANSACTIONS T 
ON V.visit_id = T.visit_id
-- transaction needs to be null 
WHERE T.transaction_id is NULL
GROUP BY V.customer_id
; 


-- Final Answer 

SELECT V.CUSTOMER_ID as customer_id , count(v.visit_id ) as count_no_trans
FROM VISITS V
LEFT JOIN TRANSACTIONS T
ON V.visit_id = T.visit_id 
WHERE T.Transaction_ID IS NULL 
GROUP BY customer_id;
