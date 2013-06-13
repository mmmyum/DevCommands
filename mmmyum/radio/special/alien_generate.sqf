//mmmyum simple alien generate.sqf
//maybe use createunit to get aggro to work? set up like AI soldiers not zeds
_origPos = position player;
_alienCreatePos = [_origPos,300,800,5,0,2000,0] call BIS_fnc_findSafePos; 
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

_radius = 50;
_method = "CAN_COLLIDE";

//create alien and run AI
//_agent = createAgent [_alienType, _alienCreatePos, [], _radius, "NONE"];
_agent = createAgent [_alienType, _alienCreatePos, [], 0, "NONE"];
diag_log format ["MMMYUM: ALIENSPAWN: alien_generate SUCCESS! | PositionAgent = %1 | Type = %2 | Agent = %3",_alienCreatePos,_alienType,_agent];

_id = [_agent,_alienType,_alienCreatePos,_origPos] execFSM "mmmyum\radio\special\alien_agent.fsm"; 


if (!(isNil "_agent")) then {
    _agentDisT = _agent distance player;
	_yumCnt = 0;
    while {(_agentDisT < 20000) and (_agentDisT > 50) and (_yumCnt < 25)} do {
    	if (not alive _agent) exitWith{cuttext [format ["Alien KILLED | Dist: %1",_agentDisT],"PLAIN DOWN",1];};
		_agentDisT = _agent distance player;
		cuttext [format ["Alien | Dist: %1",_agentDisT],"PLAIN DOWN",1];
		sleep 5;
		_yumCnt = _yumCnt + 1;
	};
};