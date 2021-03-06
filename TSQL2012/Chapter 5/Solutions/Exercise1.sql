USE TSQL2012;
WITH C AS 
(
    SELECT empid,orderdate FROM Sales.Orders
)
SELECT empid, MAX(orderdate) AS max_order_date
FROM C
GROUP BY empid;