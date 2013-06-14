//quick debug

_position = getPosATL player;
_radius = 200;
_cityTypes = ["NameCityCapital","NameCity","NameVillage","NameLocal","Airport"];

_nearestLoc = (nearestLocations [_position, _cityTypes, 600] select 0);

_yumIsNull = isNull _nearestLoc; //returns false correctly, returns bool instead of true.
_yumIsNil = isNil "_nearestLoc";

cuttext [format ["nLoc: %1 |\n isNull: %2 |\n isNil %3",_nearestLoc,_yumIsNull,_yumIsNil],"PLAIN DOWN",1];