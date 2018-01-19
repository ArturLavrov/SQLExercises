USE TSQL2012;

WITH C AS 
(
    SELECT orderid, orderdate, custid, empid, ROW_NUMBER() OVER(ORDER BY orderid) AS 'row_numbers'
	FROM Sales.Orders
)
SELECT orderid,orderdate,custid,empid, row_numbers FROM C
WHERE C.row_numbers > 10 AND C.row_numbers <= 20
