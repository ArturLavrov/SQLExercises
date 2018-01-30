USE TSQL2012;
---Creating View-----
CREATE VIEW Sales.VEmpOrders WITH SCHEMABINDING
AS   
SELECT empid, YEAR(orderdate) AS order_year, SUM(qty) AS total_qty
FROM Sales.Orders AS O 
INNER JOIN Sales.OrderDetails AS D ON O.orderid = D.orderid
GROUP BY empid, YEAR(orderdate);

---Get data from View---
SELECT empid, order_year, total_qty
FROM Sales.VEmpOrders
ORDER BY empid, order_year; 
