USE Temp256305;

WITH Product_Source
(
	ProductID, 
	[Name],
	ListPrice,
	Color, 
	SubCategoryName,
	CategoryName
)
AS
(
	SELECT 
		ProductID,
		[AdventureWorks2019].[Production].[Product].[Name], 
		[AdventureWorks2019].[Production].[Product].[ListPrice],
		[AdventureWorks2019].[Production].[Product].[Color],
		[AdventureWorks2019].[Production].[ProductSubcategory].[Name], 
		[AdventureWorks2019].[Production].[ProductCategory].[Name]
	FROM [AdventureWorks2019].[Production].[Product]
		JOIN [AdventureWorks2019].[Production].[ProductSubcategory]
			ON [AdventureWorks2019].[Production].[Product].ProductSubcategoryID = [AdventureWorks2019].[Production].[ProductSubcategory].ProductSubcategoryID
		JOIN [AdventureWorks2019].[Production].[ProductCategory]
			ON [AdventureWorks2019].[Production].[ProductCategory].ProductCategoryID = [AdventureWorks2019].[Production].[ProductSubcategory].ProductCategoryID

)


SELECT * INTO [dbo].[Dim_Product] FROM Product_Source;

ALTER TABLE dbo.Dim_Product 
	ADD CONSTRAINT PK_DimProduct_ProductID PRIMARY KEY(ProductID)
ALTER TABLE dbo.Dim_Product 
	ADD CONSTRAINT Check_Product_ListPrice CHECK ([ListPrice]>=(0.00));
