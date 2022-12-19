USE [256305];

WITH Order_Source
(
	[KlientName],
	[Kategoria produktu],
	[Nazwa Produktu],
	[Cena]
)
AS
(
	SELECT 
		CONCAT_WS(', ', LastName, FirstName),
		CategoryName,
		[dbo].[Dim_Product].[Name],
		LineTotal
	FROM dbo.Fact_Orders
		JOIN dbo.Dim_Customer
			ON dbo.Dim_Customer.CustomerID = dbo.Fact_Orders.CustomerID
		JOIN dbo.Dim_Product
			ON dbo.Dim_Product.ProductID = dbo.Fact_Orders.ProductID

)


SELECT 
	IIF(KlientName ='', ' Anonimowy', KlientName) as Klient, 
	[Kategoria produktu], 
	[Nazwa Produktu], 
	[Cena] 
FROM Order_Source 
ORDER BY 
	IIF(KlientName = '', 0, 1) DESC, 
	Klient, 
	[Kategoria produktu], 
	[Nazwa Produktu],  
	[Cena];