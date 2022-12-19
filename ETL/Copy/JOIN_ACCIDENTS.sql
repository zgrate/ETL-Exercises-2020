SELECT Accident_Index, Accident_Severity, [Date], [Time], [dim].[RoadSurfaceKey] 
FROM AccidentsDW_ETL.dbo.Temp_Accidents temp
JOIN AccidentsDW_ETL.dbo.DimRoadCondition dim
	ON dim.FirstRoadClass = temp.[1st_Road_Class]
	AND dim.SecondRoadClass = temp.[2nd_Road_Class]
	AND dim.LightCondition = temp.[Light_Conditions]
	AND dim.RoadSurfaceCondition = temp.[Road_Surface_Conditions]
	AND dim.RoadType = temp.[Road_Type]
	AND dim.SpecialConditionAtSite = temp.Special_Conditions_at_Site
	AND dim.SpeedLimit = temp.Speed_limit
	AND dim.UrbanRuralArea = temp.Urban_or_Rural_Area
	AND dim.WeatherCondition = temp.Weather_Conditions