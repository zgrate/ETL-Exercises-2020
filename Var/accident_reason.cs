/**
UPDATE [dbo].[DimAccidentReason]
   SET [TowingArticulation] = ?
      ,[HitObjectInCarriageway] = ?
      ,[JunctionLocation] = ?
      ,[VehicleLeavingCarriageway] = ?
      ,[SkiddingOverturning] = ?
      ,[PointOfImpact] = ?
      ,[HitObjectOffCarriageway] = ?
      ,[VehicleManoeuvre] = ?
 WHERE AccidentReasonKey = ?
0	No tow/articulation
1	Articulated vehicle
2	Double or multiple trailer
3	Caravan
4	Single trailer
5	Other tow
9	unknown (self reported)
-1	Data missing or out of range


0	None
1	Previous accident
2	Road works
4	Parked vehicle
5	Bridge (roof)
6	Bridge (side)
7	Bollard or refuge
8	Open door of vehicle
9	Central island of roundabout
10	Kerb
11	Other object
12	Any animal (except ridden horse)
99	unknown (self reported)
-1	Data missing or out of range

*/

public string TowingArticulation(int towing){
    switch(towing){
        case 0: return "No tow/articulation";
        case 1: return "Articulated vehicle";
        case 2: return "Double or multiple trailer";
        case 3: return "Caravan";
        case 4: return "Single trailer";
        case 5: return "Other tow";
        case 9: return "Unknown";
        default: return "Data missing";
    }
}

public string HitObjectInCarriageway(int hit){
    switch(hit){
        case 0: return "None;"
        case 1: return "Previous accident;"
        case 2: return "Road works;"
        case 4: return "Parked vehicle;"
        case 5: return "Bridge (roof);"
        case 6: return "Bridge (side);"
        case 7: return "Bollard or refuge;"
        case 8: return "Open door of vehicle;"
        case 9: return "Central island of roundabout;"
        case 10: return "Kerb;"
        case 11: return "Other object;"
        case 12: return "Any animal (except ridden horse);"
        case 99: return "unknown (self reported);"
        default: return "Data missing";
    }
}

public string JunctionLocaiton(int location){
    switch(location){
        case 0: return "Not at or within 20 metres of junction;"
        case 1: return "Approaching junction or waiting/parked at junction approach;"
        case 2: return "Cleared junction or waiting/parked at junction exit;"
        case 3: return "Leaving roundabout;"
        case 4: return "Entering roundabout;"
        case 5: return "Leaving main road;"
        case 6: return "Entering main road;"
        case 7: return "Entering from slip road;"
        case 8: return "Mid Junction - on roundabout or on main road;"
        case 9: return "unknown (self reported);"
        default: return "Data missing"
    }
}

public string VehicleLeavingCarriageway(int leaving){
    switch(leaving){
        case 0: return "Did not leave carriageway;"
        case 1: return "Nearside;"
        case 2: return "Nearside and rebounded;"
        case 3: return "Straight ahead at junction;"
        case 4: return "Offside on to central reservation;"
        case 5: return "Offside on to centrl res + rebounded;"
        case 6: return "Offside - crossed central reservation;"
        case 7: return "Offside;"
        case 8: return "Offside and rebounded;"
        case 9: return "unknown (self reported);"
        default: return "Data missing or out of range;"
    }
}

case A: return "VehicleLeavingCarriageway;"


case A: return "SkiddingOverturning;"
case 0: return "None;"
case 1: return "Skidded;"
case 2: return "Skidded and overturned;"
case 3: return "Jackknifed;"
case 4: return "Jackknifed and overturned;"
case 5: return "Overturned;"
case 9: return "unknown (self reported);"
case -1: return "Data missing or out of range;"

case A: return "PointOfImpact;"
case 0: return "Did not impact;"
case 1: return "Front;"
case 2: return "Back;"
case 3: return "Offside;"
case 4: return "Nearside;"
case 9: return "unknown (self reported);"
case -1: return "Data missing or out of range;"

case A: return "HitObjectOffCarriageway;"
case 0: return "None;"
case 1: return "Road sign or traffic signal;"
case 2: return "Lamp post;"
case 3: return "Telegraph or electricity pole;"
case 4: return "Tree;"
case 5: return "Bus stop or bus shelter;"
case 6: return "Central crash barrier;"
case 7: return "Near/Offside crash barrier;"
case 8: return "Submerged in water;"
case 9: return "Entered ditch;"
case 10: return "Other permanent object;"
case 11: return "Wall or fence;"
case 99: return "unknown (self reported);"
case -1: return "Data missing or out of range;"

case A: return "VehicleManoeuvre;"
case 1: return "Reversing;"
case 2: return "Parked;"
case 3: return "Waiting to go - held up;"
case 4: return "Slowing or stopping;"
case 5: return "Moving off;"
case 6: return "U-turn;"
case 7: return "Turning left;"
case 8: return "Waiting to turn left;"
case 9: return "Turning right;"
case 10: return "Waiting to turn right;"
case 11: return "Changing lane to left;"
case 12: return "Changing lane to right;"
case 13: return "Overtaking moving vehicle - offside;"
case 14: return "Overtaking static vehicle - offside;"
case 15: return "Overtaking - nearside;"
case 16: return "Going ahead left-hand bend;"
case 17: return "Going ahead right-hand bend;"
case 18: return "Going ahead other;"
case 99: return "unknown (self reported);"
case -1: return "Data missing or out of range;"