-- TASK 1-1 -- Get all customers with creditLimit more than or equal to 1000000 and customerNumber less than 200 or country is USA.

SELECT * 
FROM classicmodels.customers 
WHERE (creditLimit >= 1000000 AND customerNumber < 200) OR country = 'USA';

-- TASK 1-2 -- Get all customers and calculate new_credit column (creditLimit + 2000) order the query by new_credit DESC.

SELECT 
	customerName,
	creditLimit,
	creditLimit + 2000 AS new_credit
FROM classicmodels.customers 
ORDER BY new_credit DESC;

-- TASK 1-3 -- Get 3 customers that have the highest creditLimit.

SELECT * 
FROM classicmodels.customers 
ORDER BY creditLimit DESC
LIMIT 3;

