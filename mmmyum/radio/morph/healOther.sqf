/*
created by infiSTAR aka iniinfi
Heals yourself and people 15m around you
working at 19:22 08/10/12 UTC+1, Germany
*/

/*ON PLAYER*/
r_player_blood = 11999;
r_player_inpain = false;
r_player_infected = false;
r_player_injured = false;
dayz_hunger	= 0;
dayz_thirst = 0;
dayz_temperatur = 100;
r_fracture_legs =	false;
r_fracture_arms =	false;
r_player_dead = false;
r_player_unconscious = 	false;
r_player_loaded = 		false;
r_player_cardiac = 		false;
r_player_lowblood = 	false;
r_player_timeout =		0;
r_handlerCount = 		0;
disableUserInput false;
dayz_sourceBleeding =	objNull;
player setVariable ["USEC_injured",false,true];
{player setVariable[_x,false,true];} forEach USEC_woundHit;
player setVariable ["unconsciousTime", r_player_timeout, true];
player setHit ['legs',0];
player setVariable ['hit_legs',0,false];
player setVariable['medForceUpdate',true,true];

/*REMOTE STUFF*/
/*Heals any "Man" Object in "distance" meters but not the zombies and animals.*/
/*----------------------#YOU_CAN_CHANGE_THESE#----------------------------*/
distance = 25;
/*----------------------#YOU_CAN_CHANGE_THESE#----------------------------*/
xyzaa = (getPosATL player) nearObjects ["Man", distance];
{

if (!(_x isKindOf "zZombie_Base") and !(_x isKindOf "Animal")) then {

_unit = _x;

usecBandage = [_unit];
publicVariable "usecBandage";
{_unit setVariable[_x,false,true];} forEach USEC_woundHit;
_unit setVariable ["USEC_injured",false,true];

_unit setVariable["USEC_lowBlood",false,true];
usecTransfuse = [_unit];
publicVariable "usecTransfuse";

_unit setVariable ["NORRN_unconscious", false, true];
_unit setVariable ["USEC_isCardiac",false,true];
_unit setVariable['medForceUpdate',true,true];

usecMorphine = [_unit];
publicVariable "usecMorphine";

"dynamicBlur" ppEffectAdjust [0]; "dynamicBlur" ppEffectCommit 5;

usecPainK = [_unit,player];
publicVariable "usecPainK";
_unit setVariable["medForceUpdate",true];

hintSilent format["%1 healed",xyzaa];
_text = format["%1 healed", xyzaa];
titleText [_text,"PLAIN DOWN"]; titleFadeOut 8;
};
} forEach xyzaa;