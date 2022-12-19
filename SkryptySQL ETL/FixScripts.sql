WITH JoinedVehicle(VehicleKey) AS 
(
	SELECT 
		dim.VehicleKey
	FROM DimVehicle dim
	LEFT JOIN FactVehicleInAccident fact
	ON fact.VehicleKey = dim.VehicleKey
	WHERE fact.AccidentIndex is Null
)

DELETE dbo.DimVehicle
FROM dbo.DimVehicle veh 
INNER JOIN JoinedVehicle fact 
	ON fact.VehicleKey = veh.VehicleKey


WITH JoinedCasuality(CasualityKey) AS 
(
	SELECT 
		dim.CasualityKey
	FROM dbo.DimCasuality dim
	LEFT JOIN dbo.FactCasualityInAccident fact
	ON fact.CasualityKey = dim.CasualityKey
	WHERE fact.AccidentIndex is Null
)

DELETE dbo.DimCasuality
FROM dbo.DimCasuality cas 
INNER JOIN JoinedCasuality fact 
	ON fact.CasualityKey = cas.CasualityKey


INSERT INTO [dbo].[DimTime]
           ([Minute]
           ,[TimeKey]
           ,[Hour]
           ,[AM/PM]
           ,[PartOfTheDay])
     
    SELECT -1, '-1:-1', -1, 'IV', 'Invalid'
	WHERE NOT EXISTS(
		SELECT 1 FROM dbo.DimTime WHERE TimeKey = '-1:-1'
		)