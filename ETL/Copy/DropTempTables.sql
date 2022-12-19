IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_Accidents]') AND type in (N'U'))
DROP TABLE [dbo].Temp_Accidents

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_Vehicle]') AND type in (N'U'))
DROP TABLE [dbo].Temp_Vehicle

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_FactCasualityInAccident]') AND type in (N'U'))
DROP TABLE [dbo].[Temp_FactCasualityInAccident]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_FactVehicleInAccident]') AND type in (N'U'))
DROP TABLE [dbo].[Temp_FactVehicleInAccident]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_Casuality]') AND type in (N'U'))
DROP TABLE [dbo].[Temp_Casuality]

