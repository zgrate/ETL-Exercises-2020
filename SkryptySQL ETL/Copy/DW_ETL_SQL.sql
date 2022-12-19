/****** Script for SelectTopNRows command from SSMS  ******/

--WITH JoinedFactCasuality AS (

--	SELECT TOP(10)
--		fact.AccidentIndex,
--		CasualityIndex
--	FROM dbo.FactCasualityInAccident fact
--	JOIN dbo.DimCasuality dim ON dim.CasualityKey = fact.CasualityKey
	
--)

--DELETE dbo.[Temp_Casuality]
--FROM dbo.[Temp_Casuality] temp 
--INNER JOIN JoinedFactCasuality fact 
--	ON temp.Accident_Index = fact.AccidentIndex
--	AND temp.Casuality_Index = fact.CasualityIndex

--WITH JoinedFactVehicle AS (

--	SELECT TOP(10)
--		fact.AccidentIndex,
--		VehicleIndex
--	FROM dbo.FactVehicleInAccident fact
--	JOIN dbo.DimVehicle dim ON dim.VehicleKey = fact.VehicleKey
	
--)

--DELETE dbo.[Temp_Vehicle]
--FROM dbo.[Temp_Vehicle] temp 
--INNER JOIN JoinedFactVehicle fact 
--	ON temp.Accident_Index = fact.AccidentIndex
--	AND temp.Vehicle_Index = fact.VehicleIndex



--SELECT 
--	temp.Accident_Index,
--	temp.Accident_Severity,
--	road.RoadSurfaceKey,
--	dimTime.TimeKey,
--	dimDate.PK_Date

--FROM dbo.Temp_Accidents temp
--JOIN dbo.DimRoadCondition road
--	ON road.FirstRoadClass = temp.[1st_Road_Class]
--	AND road.LightCondition = temp.Light_Conditions
--	AND road.RoadSurfaceCondition = temp.Road_Surface_Conditions
--	AND road.RoadType = temp.Road_Type
--	AND road.SecondRoadClass = temp.[2nd_Road_Class]
--	AND road.SpecialConditionAtSite = temp.Special_Conditions_at_Site
--	AND road.SpeedLimit = temp.Speed_limit
--	AND road.UrbanRuralArea = temp.Urban_or_Rural_Area
--	AND road.WeatherCondition = temp.Weather_Conditions
--JOIN dbo.DimTime dimTime ON temp.[Time] = dimTime.TimeKey
--JOIN dbo.DimDate dimDate on temp.[Date] = dimDate.PK_Date



--DELETE FROM dbo.Temp_Accidents 
--WHERE Accident_Index = ?
--WITH UngroupedRoadConditions AS (

--SELECT 
--*
--FROM dbo.Temp_Accidents temp
--LEFT JOIN dbo.DimRoadCondition dim
--	ON dim.FirstRoadClass = temp.[1st_Road_Class]
--	AND dim.SecondRoadClass = temp.[2nd_Road_Class]
--	AND dim.LightCondition = temp.[Light_Conditions]
--	AND dim.RoadSurfaceCondition = temp.[Road_Surface_Conditions]
--	AND dim.RoadType = temp.[Road_Type]
--	AND dim.SpecialConditionAtSite = temp.Special_Conditions_at_Site
--	AND dim.SpeedLimit = temp.Speed_limit
--	AND dim.UrbanRuralArea = temp.Urban_or_Rural_Area
--	AND dim.WeatherCondition = temp.Weather_Conditions
--WHERE dim.RoadSurfaceKey is NULL
--),

--GroupedRoadConditions([RoadSurfaceCondition],[WeatherCondition],[LightCondition],[SpecialConditionAtSite],
--[SpeedLimit],[FirstRoadClass], [SecondRoadClass], [RoadType], [UrbanRuralArea]) AS (

--SELECT [Road_Surface_Conditions], 
--	[Weather_Conditions],
--	[Light_Conditions],
--	[Special_Conditions_at_Site],
--	[Speed_limit],
--	[1st_Road_Class],
--	[2nd_Road_Class],
--	[Road_Type],
--	[Urban_or_Rural_Area]
--FROM UngroupedRoadConditions
--GROUP BY [Road_Surface_Conditions], 
--	[Weather_Conditions],
--	[Light_Conditions],
--	[Special_Conditions_at_Site],
--	[Speed_limit],
--	[1st_Road_Class],
--	[2nd_Road_Class],
--	[Road_Type],
--	[Urban_or_Rural_Area]
--)
-- INSERT INTO dbo.DimRoadCondition([RoadSurfaceCondition],[WeatherCondition],[LightCondition],[SpecialConditionAtSite],
--[SpeedLimit],[FirstRoadClass], [SecondRoadClass], [RoadType], [UrbanRuralArea]) SELECT * FROM GroupedRoadConditions



--WITH GroupedTime AS (

--SELECT 
--temp.[Time] as TimeA
--FROM dbo.Temp_Accidents temp
--LEFT JOIN dbo.DimTime dim
--	ON dim.TimeKey = temp.[Time]
--WHERE dim.TimeKey is NULL
--GROUP BY temp.Time
--)
--SELECT * FROM GroupedTime


--SELECT 
--temp.[Date] as [Date]
--FROM dbo.Temp_Accidents temp
--LEFT JOIN dbo.DimDate dim
--	ON dim.PK_Date = CONVERT(DATETIME, temp.[Date], 103)
--WHERE dim.PK_Date is NULL
--GROUP BY temp.[Date]



--INSERT INTO dbo.DimAccidentReason([VehicleManoeuvre], [HitObjectOffCarriageway],
--		[TowingArticulation] ,[HitObjectInCarriageway],[SkiddingOverturning], [JunctionLocation] ,[VehicleLeavingCarriageway], [PointOfImpact])
--SELECT [Vehicle_Manoeuvre]
--	,[Hit_Object_off_Carriageway]
--	,[Towing_and_Articulation]
--	,[Hit_Object_in_Carriageway]
--	,[Skidding_and_Overturning]
--	,[Junction_Location]
--	,[Vehicle_Leaving_Carriageway]
--	,[1st_Point_of_Impact]
--FROM dbo.Temp_Vehicle veh
--LEFT JOIN [dbo].DimAccidentReason reason
--	ON reason.HitObjectInCarriageway = veh.Hit_Object_in_Carriageway
--	AND reason.HitObjectOffCarriageway = veh.Hit_Object_off_Carriageway
--	AND reason.JunctionLocation = veh.Junction_Location
--	AND reason.PointOfImpact = veh.[1st_Point_of_Impact]
--	AND reason.SkiddingOverturning = veh.Skidding_and_Overturning
--	AND reason.TowingArticulation = veh.Towing_and_Articulation
--	AND reason.VehicleLeavingCarriageway = veh.Vehicle_Leaving_Carriageway
--	AND reason.VehicleManoeuvre = veh.Vehicle_Manoeuvre
--WHERE reason.AccidentReasonKey is NULL
--GROUP BY [Vehicle_Manoeuvre]
--	,[Hit_Object_off_Carriageway]
--	,[Towing_and_Articulation]
--	,[Hit_Object_in_Carriageway]
--	,[Skidding_and_Overturning]
--	,[Junction_Location]
--	,[Vehicle_Leaving_Carriageway]
--	,[1st_Point_of_Impact]

--INSERT INTO dbo.DimDriverDetails(Age, Gender, JourneyPurpose)
--SELECT Age_of_Driver, Sex_of_Driver, Journey_Purpose_of_Driver 
--FROM dbo.Temp_Vehicle veh
--LEFT JOIN [dbo].DimDriverDetails driver
--	ON driver.Age = veh.Age_of_Driver
--	AND driver.Gender = veh.Sex_of_Driver
--	AND driver.JourneyPurpose = veh.Journey_Purpose_of_Driver
--WHERE driver.DriverDetailsKey is Null
--GROUP BY 
--		[Sex_of_Driver]
--		,[Journey_Purpose_of_Driver]
--		,[Age_of_Driver]

--INSERT INTO dbo.DimVehicle([Type], SteeringWheelSide, EngineCapacity, 
--	VehicleAge, DriverDetailsKey, AccidentReasonKey, VehicleIndex)
SELECT [Vehicle_Type]
      ,[Was_Vehicle_Left_Hand_Drive?]
      ,[Engine_Capacity_(CC)]
      ,[Age_of_Vehicle]
	  ,driver.DriverDetailsKey
	  ,reason.AccidentReasonKey
	  ,[Vehicle_Index]
FROM [dbo].[Temp_Vehicle] veh
JOIN [dbo].DimDriverDetails driver
	ON driver.Age = veh.Age_of_Driver
	AND driver.Gender = veh.Sex_of_Driver
	AND driver.JourneyPurpose = veh.Journey_Purpose_of_Driver
JOIN [dbo].DimAccidentReason reason
	ON reason.HitObjectInCarriageway = veh.Hit_Object_in_Carriageway
	AND reason.HitObjectOffCarriageway = veh.Hit_Object_off_Carriageway
	AND reason.JunctionLocation = veh.Junction_Location
	AND reason.PointOfImpact = veh.[1st_Point_of_Impact]
	AND reason.SkiddingOverturning = veh.Skidding_and_Overturning
	AND reason.TowingArticulation = veh.Towing_and_Articulation
	AND reason.VehicleLeavingCarriageway = veh.Vehicle_Leaving_Carriageway
	AND reason.VehicleManoeuvre = veh.Vehicle_Manoeuvre;


--DELETE FROM dbo.Temp_Accidents WHERE 1=1

--SELECT *
--FROM dbo.[Temp_Casuality]

--DELETE FROM dbo.Temp_Casuality WHERE 1=1

--DELETE FROM dbo.Temp_Vehicle WHERE 1=1

INSERT INTO dbo.FactCasualityInAccident(AccidentIndex, CasualityKey)
SELECT Accident_Index, CasualityID FROM dbo.Temp_FactCasualityInAccident


INSERT INTO dbo.FactVehicleInAccident(AccidentIndex, VehicleKey)
SELECT Accident_Index, VehicleID FROM dbo.Temp_FactVehicleInAccident