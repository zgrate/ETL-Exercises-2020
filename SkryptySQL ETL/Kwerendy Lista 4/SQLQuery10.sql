USE Temp256305;

WITH Customer_Source
(
	CustomerID,
	FirstName,
	LastName,
	TerritoryName,
	CountryRegionCode,
	[Group]
) AS
(
	SELECT 
		CustomerID, 
		FirstName, 
		LastName, 
		[AdventureWorks2019].[Sales].[SalesTerritory].[Name],
		[AdventureWorks2019].[Sales].[SalesTerritory].[CountryRegionCode],
		[AdventureWorks2019].[Sales].[SalesTerritory].[Group]
	FROM [AdventureWorks2019].[Sales].[Customer]
		LEFT JOIN [AdventureWorks2019].[Person].[Person]
			ON [AdventureWorks2019].[Person].[Person].BusinessEntityID = [AdventureWorks2019].[Sales].[Customer].CustomerID
		LEFT JOIN [AdventureWorks2019].[Sales].[SalesTerritory]
		    ON [AdventureWorks2019].[Sales].[SalesTerritory].TerritoryID = [AdventureWorks2019].[Sales].[Customer].TerritoryID

)

SELECT * INTO Dim_Customer FROM Customer_Source;

ALTER TABLE dbo.Dim_Customer
	ADD CONSTRAINT Constraint_PK_CustomerID PRIMARY KEY(CustomerID);