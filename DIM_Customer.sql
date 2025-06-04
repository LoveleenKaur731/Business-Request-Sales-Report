-- Cleansed DIM_Customers Table --

SELECT B.CustomerKey AS CustomerKey,
       B.FirstName AS First_Name,
       B.LastName AS Last_Name,
       B.FirstName + ' ' + LastName AS Full_Name,
       CASE B.Gender WHEN 'M'Then 'Male' WHEN 'F' THEN 'Female' END AS Gender,
       B.DateFirstPurchase AS DateFirstPurchase,
       C.City AS Customer_City -- Joined in Customer City from Geography Table
FROM DimCustomer AS B
LEFT JOIN DimGeography AS C
ON C.GeographyKey = B.GeographyKey
ORDER BY 
CustomerKey ASC -- Ordered List by CustomerKey 