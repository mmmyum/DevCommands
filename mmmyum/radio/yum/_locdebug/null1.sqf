//null1.sqf

_position = getPosATL player;
_radius = 500;
_cityTypes = ["NameCityCapital","NameCity","NameVillage","NameLocal"];

_yum_locations_index = [];
_iCnt = 0;
{
_tempName = _x getVariable ["name","nil"];
_yum_locations_index set [_iCnt,_tempName];
_iCnt = _iCnt + 1;
} forEach yum_locations;

{
_nearestLoc1 = nearestLocation [_position, _x]; //alternative to try
_name = text _nearestLoc1;
//pick nearest city from array and store it in _city
_yum = _yum_locations_index find _name;
_city = yum_locations select _yum;
cuttext [format ["nLoc: %1 | Name %2 | Yum: %3 || yum_locations: _city: %4 | _name: %5 | numZ: %6",_nearestLoc1,_name,_yum,_city,_city getVariable ["name","nil"],_city getVariable ["numZombies","nil"]],"PLAIN DOWN",1];
sleep 5;
} forEach _cityTypes;
_nearestLoc = (nearestLocations [_position, _cityTypes,_radius] select 0);
_name = text _nearestLoc;
//pick nearest city from array and store it in _city
_yum = _yum_locations_index find _name;
_city = yum_locations select _yum;
cuttext [format ["nLocS: %1 | Name %2 | Yum: %3 || yum_locations: _city: %4 | _name: %5 | numZ: %6",_nearestLoc,_name,_yum,_city,_city getVariable ["name","nil"],_city getVariable ["numZombies","nil"]],"PLAIN DOWN",1];

exit