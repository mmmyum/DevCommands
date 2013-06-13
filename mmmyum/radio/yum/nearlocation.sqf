//nearlocation.sqf


_position = getPosATL player;
_radius = 500;
_cityTypes = ["NameCityCapital","NameCity","NameVillage","NameLocal"];

{
_nearestLoc1 = nearestLocation [_position, _x]; //alternative to try
cuttext [format ["nLoc: %1 | Distance %2 | Vars: %3, %4",_nearestLoc1,(player distance (position _nearestLoc1)),text _nearestLoc1, side _nearestLoc1],"PLAIN DOWN",1];
sleep 5;
} forEach _cityTypes;
_nearestLoc = (nearestLocations [_position, _cityTypes,_radius] select 0);
cuttext [format ["nLoc: S %1 | Distance %2 | Vars: %3, %4",_nearestLoc,(player distance (position _nearestLoc)),text _nearestLoc, side _nearestLoc],"PLAIN DOWN",1];

exit