--TEMP TABLES

CREATE TABLE [dbo].[Temp_Accidents](
	[Accident_Index] [varchar](50) NULL,
	[Accident_Severity] [int] NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](5) NULL,
	[Speed_limit] [int] NULL,
	[Road_Type] [int] NULL,
	[2nd_Road_Class] [int] NULL,
	[Light_Conditions] [int] NULL,
	[Weather_Conditions] [int] NULL,
	[Road_Surface_Conditions] [int] NULL,
	[Special_Conditions_at_Site] [int] NULL,
	[Urban_or_Rural_Area] [int] NULL,
	[1st_Road_Class] [int] NULL
) ON [PRIMARY]


CREATE TABLE [Temp_Casuality] (
    [Accident_Index] varchar(50),
    [Casuality_Index] [int],
    [Casualty_Class] [int],
    [Sex_of_Casualty] [int],
    [Age_of_Casualty] [int],
    [Casualty_Severity] [int],
    [Car_Passenger] [int],
    [Bus_or_Coach_Passenger] [int],
    [Casualty_Type] [int]
)


CREATE TABLE [Temp_Vehicle] (
    [Accident_Index] varchar(50),
    [Vehicle_Type] [int],
    [Vehicle_Index] [int],
    [Towing_and_Articulation] [int],
    [Vehicle_Manoeuvre] [int],
    [Junction_Location] [int],
    [Skidding_and_Overturning] [int],
    [Hit_Object_in_Carriageway] [int],
    [Vehicle_Leaving_Carriageway] [int],
    [Hit_Object_off_Carriageway] [int],
    [1st_Point_of_Impact] [int],
    [Was_Vehicle_Left_Hand_Drive?] [int],
    [Journey_Purpose_of_Driver] [int],
    [Sex_of_Driver] [int],
    [Age_of_Driver] [int],
    [Engine_Capacity_(CC)] [int],
    [Age_of_Vehicle] [int]
)

CREATE TABLE [Temp_FactCasualityInAccident](
    [Accident_Index] varchar(50),
    [CasualityID] numeric(20,0),
)


CREATE TABLE [Temp_FactVehicleInAccident] (
    [Accident_Index] varchar(50),
    [VehicleID] numeric(20,0)
)