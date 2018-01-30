USE TSQL2012
SELECT empid,firstname,lastname 
FROM HR.Employees AS E 
WHERE E.empid  NOT IN  (SELECT empid FROM Sales.Orders AS O WHERE O.orderdate >= '20080501' )