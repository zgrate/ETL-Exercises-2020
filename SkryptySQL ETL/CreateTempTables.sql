--TEMP TABLES

CREATE TABLE [dbo].[Temp_Accidents](
	[Accident_Index] [nvarchar](100) NULL,
	[Date] [nvarchar](100) NULL,
	[Time] [nvarchar](5) NULL,
	[Speed_limit] [nvarchar](100) NULL,
	[Road_Type] [nvarchar](100) NULL,
	[2nd_Road_Class] [nvarchar](100) NULL,
	[Light_Conditions] [nvarchar](100) NULL,
	[Weather_Conditions] [nvarchar](100) NULL,
	[Road_Surface_Conditions] [nvarchar](100) NULL,
	[Special_Conditions_at_Site] [nvarchar](100) NULL,
	[Urban_or_Rural_Area] [nvarchar](100) NULL,
	[1st_Road_Class] [nvarchar](100) NULL,
    [Number_Of_Vehicles] [int] NULL,
    [Number_Of_Casualties] [int] NULL
) ON [PRIMARY]


CREATE TABLE [Temp_Casualty] (
    [Accident_Index] nvarchar(100),
    [Casualty_Index] [int],
    [Casualty_Class] [nvarchar](100),
    [Sex_of_Casualty] [nvarchar](100),
    [Age_of_Casualty] [nvarchar](100),
    [Casualty_Severity] [nvarchar](100),
    [Car_Passenger] [nvarchar](100),
    [Bus_or_Coach_Passenger] [nvarchar](100),
    [Casualty_Type] [nvarchar](100)
)


CREATE TABLE [Temp_Vehicle] (
    [Accident_Index] nvarchar(100),
    [Vehicle_Type] [nvarchar](100),
    [Vehicle_Index] [int],
    [Towing_and_Articulation] [nvarchar](100),
    [Vehicle_Manoeuvre] [nvarchar](100),
    [Junction_Location] [nvarchar](100),
    [Skidding_and_Overturning] [nvarchar](100),
    [Hit_Object_in_Carriageway] [nvarchar](100),
    [Vehicle_Leaving_Carriageway] [nvarchar](100),
    [Hit_Object_off_Carriageway] [nvarchar](100),
    [1st_Point_of_Impact] [nvarchar](100),
    [Was_Vehicle_Left_Hand_Drive?] [nvarchar](100),
    [Journey_Purpose_of_Driver] [nvarchar](100),
    [Sex_of_Driver] [nvarchar](100),
    [Age_Band_of_Driver] [nvarchar](100),
    [Engine_Capacity_(CC)] [nvarchar](100),
    [Age_of_Vehicle] [int]
)

CREATE TABLE [Temp_FactCasualtyInAccident](
    [Accident_Index] nvarchar(100),
    [CasualtyID] numeric(20,0),
)


CREATE TABLE [Temp_FactVehicleInAccident] (
    [Accident_Index] nvarchar(100),
    [VehicleID] numeric(20,0)
)