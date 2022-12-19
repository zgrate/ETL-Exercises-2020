IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_Accidents]') AND type in (N'U'))
DROP TABLE [dbo].[Temp_Accidents]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactVehicleInAccident]') AND type in (N'U'))
DROP TABLE [dbo].[FactVehicleInAccident]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactCasualityInAccident]') AND type in (N'U'))
DROP TABLE [dbo].[FactCasualityInAccident]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactAccident]') AND type in (N'U'))
DROP TABLE [dbo].[FactAccident]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimVehicle]') AND type in (N'U'))
DROP TABLE [dbo].DimVehicle

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimTime]') AND type in (N'U'))
DROP TABLE [dbo].DimTime

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimRoadCondition]') AND type in (N'U'))
DROP TABLE [dbo].DimRoadCondition

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimDriverDetails]') AND type in (N'U'))
DROP TABLE [dbo].DimDriverDetails

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimDate]') AND type in (N'U'))
DROP TABLE [dbo].DimDate

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimCasuality]') AND type in (N'U'))
DROP TABLE [dbo].DimCasuality

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimAccidentReason]') AND type in (N'U'))
DROP TABLE [dbo].DimAccidentReason
