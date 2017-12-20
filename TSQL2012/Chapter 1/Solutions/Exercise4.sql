USE TSQL2012

SELECT orderid, SUM(unitprice*qty) AS totalValue
FROM Sales.OrderDetails
GROUP BY orderid
HAVING SUM(unitprice*qty) > 10000
ORDER BY totalValue DESC
