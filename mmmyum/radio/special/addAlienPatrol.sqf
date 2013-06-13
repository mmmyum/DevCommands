//addAlienPatrol.sqf

   private["_aiunit","_xpos","_ypos","_unitpos","_aiGroup","_wppos","_wpradius","_wpnum","_numunits","_rndLOut","_ailoadout","_aiwep","_aiammo","_wp","_aispawnpos"];
    _aiunit = objNull;
    _aiGroup = createGroup resistance;
	_origPos = position player;
	_alienCreatePos = [_origPos,700,1000,5,0,2000,0] call BIS_fnc_findSafePos; 
    _aispawnpos = _alienCreatePos;
    //_wpradius = _this select 1;
    //_wpnum = _this select 2;
    _numunits = 3;
 
    _xpos = _aispawnpos select 0;
    _ypos = _aispawnpos select 1;
	_unitpos = [_xpos+x,_ypos+x,0];
	
	_craftType = [
	"VAI34",
	"XZ07",
	"soc"
	] select floor (random 3); //very rarely select saucer type
	//create craft and pilot
	_craft = createVehicle [_craftType,[_xpos,_ypos,300], [], 0, "FLY"];
	_craft setVariable["Sarge",1,true];
	_craft engineOn true;
	_craft flyInHeight 350;
	_craft forceSpeed 180;
	_craftPilot = _aiGroup createUnit ["zetaborn_10",getPos _craft,[],0,"FORM"];
	_craftPilot moveindriver _craft;
	_craftPilot assignAsDriver _craft;
 
    diag_log format ["AIUNIT: YUMALIEN_PATROL:::Spawn initiated: Centre:%1 | Radius in m:%2 | Waypoint number:%3",_aispawnpos,_wpradius,_wpnum];
 
    for [{ x=1 },{ x < _numunits+1 },{ x = x + 1; }] do {
	
	 //currently makes two of the same type.  move into for loop to make different type every one.
_alienType = // "zetaborn_alien3";
[

"zetaborn_alien2", // Heavy (armored) soldier with energy rifle
"zetaborn_alien3", // Light soldier with energy rifle & RPG KRAK-B launcher (unguided)
"zetaborn_alien4", // Light soldier with energy rifle & AT/AA energy launcher (guided)
"zetaborn_alien5", // Heavy (armored) soldier with energy rifle & AT/AA energy launcher (guided)
"zetaborn_alien6", // Bloodseeker, very agressive zombie-like behaviour, unarmed
"zetaborn_alien7", // Bloodseeker 2, less agressive zombie-like behaviour, unarmed
"zetaborn_alien8", // Spooker, very light zombie-like behaviour, likes to watch humans, unarmed, makes noises and spooks players
"zetaborn_9", // Healer aka medic unit with energy rifle //doesn't work
"zetaborn_10", // Pilot unit with energy rifle //none of these seem to work
"zetaborn_11", // Crew unit with energy rifle
"zetaborn_12", // Enginner, capable of repairing (engineer=1)
"zetaborn_13" // Mindreader, with energy rifle, watches humans and spooks them, an advanced fast scout unit

] select floor (random 12);

    _unitpos = [_xpos+x,_ypos+x,0];
 /*
    _rndLOut=floor(random 6);
    _ailoadout=
    switch (_rndLOut) do
    {
      case 0: {["M240","100Rnd_762x51_M240"]};
      case 1: {["M4A1_AIM_SD_camo","30Rnd_556x45_StanagSD"]};
      case 2: {["FN_FAL","20Rnd_762x51_FNFAL"]};
	  case 3: {["SCAR_H_CQC_CCO","20Rnd_762x51_B_SCAR"]};
	  case 4: {["G36A_camo","30Rnd_556x45_G36"]};
	  case 5: {["M16A2GL","30Rnd_556x45_Stanag"]};
    };
 */
    _alienType createUnit [_unitpos, _aiGroup, "_aiunit=this;",0.6,"Private"];
 
    diag_log format ["AIUNIT: YUMALIEN:::Creating %6 by %1 at %2. Result:%3 | Loadout:%4 / Num:%5",player,_unitpos,_aiunit,_ailoadout,_rndLOut,_alienType];
 
    _aiunit enableAI "TARGET";
    _aiunit enableAI "AUTOTARGET";
    _aiunit enableAI "MOVE";
    _aiunit enableAI "ANIM";
    _aiunit enableAI "FSM";
    _aiunit allowDammage true;
 
    _aiunit setCombatMode "RED";
    _aiunit setBehaviour "COMBAT";
 /*
    //clear default weapons / ammo
    removeAllWeapons _aiunit;
    //add random selection
    _aiwep = _ailoadout select 0;
    _aiammo = _ailoadout select 1;
    _aiunit addweapon _aiwep;
    _aiunit addMagazine _aiammo;
    _aiunit addMagazine _aiammo;
    _aiunit addMagazine _aiammo;
    _aiunit addMagazine _aiammo;
    _aiunit addMagazine _aiammo;
    _aiunit addMagazine _aiammo;
    _aiunit addMagazine _aiammo;
    _aiunit addMagazine _aiammo;
 */
    //set skills
    _aiunit setSkill ["aimingAccuracy",0.5];
    _aiunit setSkill ["aimingShake",0.5];
    _aiunit setSkill ["aimingSpeed",0.5];
    _aiunit setSkill ["endurance",0.5];
    _aiunit setSkill ["spotDistance",0.5];
    _aiunit setSkill ["spotTime",0.5];
    _aiunit setSkill ["courage",0.5];
    _aiunit setSkill ["reloadSpeed",0.5];
    _aiunit setSkill ["commanding",0.5];
    _aiunit setSkill ["general",0.5];
	
	_aiunit moveInCargo _craft;
	
	//_aiunit doMove _origPos;
	//_aiunit doTarget player;
	 diag_log format ["AIUNIT: YUMALIEN:::Target Should be %1 Is %2",player,assignedTarget _agent];
    //sleep 0.5;
	//_id = [_aiunit,_alienType,_alienCreatePos,_origPos] execFSM "mmmyum\radio\special\alien_agent.fsm"; 
} ;
 
    //generate waypoints
    //for [{ x=1 },{ x < _wpnum },{ x = x + 1; }] do {
    //_wppos = [_xpos+(x*20),_ypos+(x*20),_wpradius];
    //_wp = _aiGroup addWaypoint [_wppos, _wpradius];
    //_wp setWaypointType "MOVE";
    //};
   // _wp = _aiGroup addWaypoint [[_xpos,_ypos,0], _wpradius];
   // _wp setWaypointType "CYCLE";
   _patrolHere = [];
   _cityTypes = ["NameCityCapital","NameCity","NameVillage","NameLocal"];

	{
	_nearestLoc = nearestLocation [_alienCreatePos, _x]; 
	_patrolHere set [(count _patrolHere),_nearestLoc];
	} forEach _cityTypes;
	
   _wpradius = 50;
	{
		_wp = _aiGroup addWaypoint [position _x, _wpradius];
		_wp setWaypointType "MOVE";
	} forEach _patrolHere;
   _wp = _aiGroup addWaypoint [(position player), _wpradius];
   _wp setWaypointType "CYCLE";