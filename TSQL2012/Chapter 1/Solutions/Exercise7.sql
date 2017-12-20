USE TSQL2012

SELECT x.custid, x.region 
FROM (
     SELECT custid, region,
	CASE 
		WHEN  (region IS  NULL) THEN 1
		ELSE 0
	END AS value
FROM Sales.Customers
) x
ORDER BY x.value