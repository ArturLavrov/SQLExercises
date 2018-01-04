SELECT H.empid, DATEADD(day, Nums.n - 1, '20090612') AS dt
FROM HR.Employees AS H  CROSS JOIN dbo.Nums AS Nums     
WHERE Nums.n <= DATEDIFF(day, '20090612', '20090616') + 1 
ORDER BY H.empid