USE Temp256305;

WITH Orders_Source
(
	ProductID,
	CustomerID,
	OrderDate,
	ShipDate,
	OrderQty,
	UnitPrice,
	UnitPriceDiscount,
	LineTotal
)
AS
(
	SELECT
		ProductID,
		CustomerID,
		OrderDate,
		ShipDate,
		OrderQty,
		UnitPrice,
		UnitPriceDiscount,
		LineTotal
	FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
		JOIN [AdventureWorks2019].[Sales].[SalesOrderDetail]
			ON [AdventureWorks2019].[Sales].[SalesOrderDetail].SalesOrderID = [AdventureWorks2019].[Sales].[SalesOrderHeader].SalesOrderID

)

SELECT * INTO [dbo].[Fact_Orders] FROM Orders_Source;

ALTER TABLE [dbo].[Fact_Orders]
	ADD  CONSTRAINT [Check_FO_UnitPrice] CHECK  ([UnitPrice]>=(0.00));

ALTER TABLE [dbo].[Fact_Orders]
	ADD  CONSTRAINT [Check_FO_UnitPriceDiscount] CHECK  ([UnitPriceDiscount]>=(0.00));

ALTER TABLE [dbo].[Fact_Orders]
	ADD  CONSTRAINT [Check_FO_OrderQty] CHECK  ([OrderQty]>(0));

ALTER TABLE [dbo].[Fact_Orders]
	ADD  CONSTRAINT [Check_FO_ShipDate] CHECK  (([ShipDate]>=[OrderDate] OR [ShipDate] IS NULL))

ALTER TABLE [dbo].[Fact_Orders] 
	ADD  CONSTRAINT [Check_FO_OrderDateDefault]  DEFAULT (getdate()) FOR [OrderDate];




