--Cleansed DIM_Products Table-- 

SELECT 
    D.ProductKey,
    D.ProductAlternateKey AS ProductItemCode,
    D.EnglishProductName AS Product_Name,
    E.EnglishProductSubcategoryName AS Sub_Category, -- Joined in from Sub Category Table
    F.EnglishProductCategoryName AS Product_Category, -- Joined in from Category Table
    D.Color AS Product_Color,
    D.Size AS Product_Size,
    D.ProductLine AS Product_Line,
    D.ModelName AS Product_Model_Name,
    D.EnglishDescription AS Product_Description,
    ISNULL (D.Status, 'Outdated') AS Product_Status
FROM DimProduct AS D
LEFT JOIN DimProductSubcategory AS E
ON D.ProductSubcategoryKey = E.ProductSubcategoryKey
LEFT JOIN DimProductCategory AS F
ON E.ProductCategoryKey = F.ProductCategoryKey
ORDER BY 
D.ProductKey ASC