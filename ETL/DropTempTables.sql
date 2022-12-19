IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_Accidents]') AND type in (N'U'))
DROP TABLE [dbo].Temp_Accidents

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_Vehicle]') AND type in (N'U'))
DROP TABLE [dbo].Temp_Vehicle

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_FactCasualtyInAccident]') AND type in (N'U'))
DROP TABLE [dbo].[Temp_FactCasualtyInAccident]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_FactVehicleInAccident]') AND type in (N'U'))
DROP TABLE [dbo].[Temp_FactVehicleInAccident]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_Casualty]') AND type in (N'U'))
DROP TABLE [dbo].[Temp_Casualty]



