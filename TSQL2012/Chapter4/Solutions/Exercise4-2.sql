USE TSQL2012;

SELECT empid, order_year, total_qty, (
	SELECT SUM(V2.total_qty) FROM Sales.VEmpOrders AS V2 
	WHERE V2.order_year <= V1.order_year
	) AS Num
FROM Sales.VEmpOrders AS V1
ORDER BY empid,order_year