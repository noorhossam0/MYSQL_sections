
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

