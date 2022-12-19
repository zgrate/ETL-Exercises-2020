IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Temp_FactCalculations]') AND type in (N'U'))
DROP TABLE [dbo].Temp_FactCalculations;


WITH VehiclesNumber AS 
(
SELECT AccidentIndex, Count(*) AS VehicleNum FROM dbo.FactVehicleInAccident GROUP BY AccidentIndex
),
CasNumber AS 
(
	SELECT AccidentIndex, Count(*) AS CasNumb FROM dbo.FactCasualityInAccident GROUP BY AccidentIndex
)

SELECT veh.AccidentIndex, veh.VehicleNum, cas.CasNumb INTO dbo.Temp_FactCalculations FROM VehiclesNumber veh JOIN CasNumber cas ON veh.AccidentIndex = cas.AccidentIndex;


UPDATE
  dbo.FactAccident
SET
  [CasualitiesNumber] = t2.CasNumb,
  VehiclesNumber = t2.VehicleNum
FROM
   dbo.FactAccident acc
   JOIN
   dbo.Temp_FactCalculations t2 ON t2.AccidentIndex = acc.AccidentIndex;


DROP TABLE [dbo].Temp_FactCalculations;