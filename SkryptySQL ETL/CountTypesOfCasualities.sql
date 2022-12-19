WITH NullAccidents as
(
	SELECT AccidentIndex
	FROM dbo.FactAccident
	WHERE [SevereCasualities] = -1 OR [FatalCasualities] = -1 OR [LightCasualities] = -1
),
JoinedNumbers(AccidentIndex, FatalCasualities, SevereCasualities, LightCasualities) AS 
(
	SELECT 
		fact.AccidentIndex,
		SUM(IIF(dim.CasualitySeverity = 'Fatal', 1,  0)),
		SUM(IIF(dim.CasualitySeverity = 'Serious', 1, 0)),
		SUM(IIF(dim.CasualitySeverity = 'Slight', 1, 0))
	FROM dbo.FactCasualityInAccident fact
	JOIN NullAccidents nullable
	ON fact.AccidentIndex = nullable.AccidentIndex
	JOIN dbo.DimCasuality dim
	ON fact.CasualityKey = dim.CasualityKey
	GROUP BY fact.AccidentIndex, dim.CasualitySeverity

)

UPDATE
  dbo.FactAccident
SET
	[FatalCasualities] = t2.FatalCasualities,
	[SevereCasualities] = t2.SevereCasualities,
	[LightCasualities] = t2.LightCasualities
FROM
   dbo.FactAccident acc
   JOIN
   JoinedNumbers t2 ON t2.AccidentIndex = acc.AccidentIndex;