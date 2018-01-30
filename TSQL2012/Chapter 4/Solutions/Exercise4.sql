USE TSQL2012
SELECT DISTINCT country FROM Sales.Customers WHERE country NOT IN (SELECT country FROM HR.Employees ) 