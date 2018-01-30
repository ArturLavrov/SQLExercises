USE TSQL2012

SELECT empid,firstname,lastname,titleofcourtesy,
	CASE titleofcourtesy
		WHEN 'Mr.' THEN 'Male'
		WHEN 'Ms.' THEN 'Female'
		WHEN 'Mrs.' THEN 'Female'
		ELSE 'Unknown'	
	END AS gender
FROM HR.Employees
