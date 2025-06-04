--Cleansed FACT_InternetSales Table--
SELECT 
    A.ProductKey,
    A.OrderDateKey,
    A.DueDateKey,
    A.ShipDateKey,
    A.CustomerKey,
    A.SalesOrderNumber,
    A.SalesAmount
FROM FactInternetSales AS A
WHERE
LEFT (OrderDateKey,4) >= YEAR(GETDATE()) -2 --Ensures we always only bring two years of date from extraction 
ORDER BY
OrderDateKey ASC
  