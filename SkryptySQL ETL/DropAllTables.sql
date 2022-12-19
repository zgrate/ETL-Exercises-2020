IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactVehicleInAccident]') AND type in (N'U'))
DROP TABLE [dbo].[FactVehicleInAccident]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactCasualtyInAccident]') AND type in (N'U'))
DROP TABLE [dbo].[FactCasualtyInAccident]

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

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimCasualty]') AND type in (N'U'))
DROP TABLE [dbo].DimCasualty

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimCrashDetails]') AND type in (N'U'))
DROP TABLE [dbo].DimCrashDetails

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AttributesLookup]') AND type in (N'U'))
DROP TABLE [dbo].[AttributesLookup]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupTable]') AND type in (N'U'))
DROP TABLE [dbo].[LookupTable]