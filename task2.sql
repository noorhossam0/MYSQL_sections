
-- TASK 2 --

SELECT *
FROM classicmodels.customers 
WHERE contactFirstName REGEXP '^(je|le)';

SELECT *
FROM classicmodels.customers 
WHERE contactFirstName REGEXP 'ie|el$';

SELECT *
FROM classicmodels.customers 
WHERE contactFirstName REGEXP 'b(g|a)';

-- another way whith " % & LIKE  "

SELECT * 
FROM classicmodels.customers 
WHERE contactFirstName LIKE 'je%' 
OR contactFirstName LIKE 'le%';


SELECT * 
FROM classicmodels.customers 
WHERE contactFirstName LIKE '%ie' 
OR contactFirstName LIKE '%el';


SELECT * 
FROM classicmodels.customers 
WHERE contactFirstName LIKE '%bg%' 
OR contactFirstName LIKE '%ba%';
