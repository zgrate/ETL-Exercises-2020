SELECT [Accident_Index]
      ,[Vehicle_Type]
      ,[Was_Vehicle_Left_Hand_Drive?]
      ,[Engine_Capacity_(CC)]
      ,[Age_of_Vehicle]
	  ,driver.DriverDetailsKey
	  ,reason.AccidentReasonKey
FROM [dbo].[Temp_Vehicle] veh
JOIN [dbo].DimDriverDetails driver
	ON driver.Age = veh.Age_Band_of_Driver
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
	AND reason.VehicleManoeuvre = veh.Vehicle_Manoeuvre