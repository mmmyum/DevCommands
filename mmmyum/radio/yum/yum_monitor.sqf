//vars.sqf
/*
yum_playerLoc //actual location
yum_playerCurrentLoc //location text
yum_locations //master array with zed numbers and vars for locations, public global
yum_locations_index //index to master array
sleepingZeds //num zeds sleeping
dayz_maxLocalZombies //set to density
client_despawnLocs  // client despawn zed array   */
yumDebug = 5;
_cityYum = "noloc";
_zedCountYum = -100;

while {yumDebug > 2} do {

	_namedLocationYum = yum_locations_index find yum_playerCurrentLoc;
	sleep 0.5;
	if (_namedLocationYum != -1) then {
		_cityYum = yum_locations select _namedLocationYum;
		_zedCountYum = _cityYum getVariable ["numZombies", 0];
	};

	titleText [format ["YUMBUGS: \n\n| yum_playerLoc %1 | \n| yum_playerCurrentLoc %2 | \n| maxLocalZeds  %3 | \n| sleeping %4 |\n| LastLocationNumZeds %5 |\n|  LastLocation %6 | global %9|\n| client_despawnLocs %7 | \n| NamedLocationArrayPos: %8", yum_playerLoc,yum_playerCurrentLoc,dayz_maxLocalZombies,sleepingZeds,_zedCountYum,_cityYum,client_despawnLocs,_namedLocationYum,yum_playerLastCity], "PLAIN"];
	sleep 0.5;
};