//morphzed
diag_log("YUM MORPH ZED: Initialize");
cuttext [format ["YUM MORPH ZED: %1 -- !! morph to human before log off, or die.",player],"PLAIN DOWN",1];
//heal player
_unit = player;

removeAllWeapons player;

r_player_dead = false;
player setDamage 0;
player setVariable ["NORRN_unconscious", false, true];
player setVariable ["unconsciousTime", 0, true];
player setVariable ["startcombattimer", 0, true];
r_player_unconscious = false;
r_player_cardiac = false;
r_player_handler = false;
disableUserInput false;
disableSerialization;
r_fracture_legs = false;
r_fracture_arms = false;
dayz_sourceBleeding = objNull;
r_player_blood = r_player_bloodTotal;
r_player_inpain = false;
r_player_infected = false;
r_player_injured = false;
dayz_hunger = 0;
dayz_thirst = 0;
dayz_temperatur = 40;
r_fracture_legs = false;
r_fracture_arms = false;
r_player_dead = false;
r_player_unconscious = false;
r_player_loaded = false;
r_player_cardiac = false;
r_player_lowblood = false;
r_player_timeout = 0;
r_handlercount = 0;
_unit setVariable ["USEC_lowBlood",false,true];
usecMorphine = [_unit,player];
publicVariable "usecMorphine";
_unit setVariable["medForceUpdate",true];
usecBandage = [_unit];
publicVariable "usecBandage";
{_unit setVariable[_x,false,true];} foreach USEC_woundHit;
_unit setVariable ["USEC_injured",false,true];
_unit setVariable ["USEC_lowBlood",false,true];
usecTransfuse = [_unit];
publicVariable "usecTransfuse";
_unit setVariable ["NORRN_unconscious", false, true];
_unit setVariable ["USEC_iscardiac",false,true];
usecPainK = [_unit,player];
publicVariable "usecPainK";
_unit setVariable ["medForceUpdate",true];
_unit setdamage 0;

diag_log("YUM MORPH ZED: Player healed after death");
//change to zombie skin
[dayz_playerUID,dayz_characterID,'zZombie_Base'] spawn player_humanityMorph;
diag_log("YUM MORPH ZED: Morphed Player into Zed");
//disable functions
//player_death = {};
player_zombieCheck = {};
player_stealthCheck = {};
player_zombieAttack = {};
player_temp_calculation	= {};
//player_humanityMorph = {};
//fnc_usec_selfActions = {};
//fnc_usec_damageActions = {};
//player_wearClothes = {};
object_pickup = {};
diag_log("YUM MORPH ZED: Disabled Player Functions");

sleep 5;

//give attack and loiter actions
player addAction ["Attack", "mmmyum\radio\special\z_attack.sqf",cursorTarget, 6, true, false, "",""];
player addAction ["Loiter", "mmmyum\radio\special\z_loiter.sqf",player, 5, true, false, "",""];
player addAction ["Raise Horde", "mmmyum\radio\special\z_call.sqf",player, 5, true, false, "",""];
diag_log("YUM MORPH ZED: Add Zed Actions");
ppEffectDestroy yumvision;
yumvision = ppEffectCreate ["colorCorrections", 1501];
yumvision ppEffectEnable true;
yumvision ppEffectAdjust [ 1, 0.75, 0, [-3.16, 5, 5, 0],[-4.3, 5, 5, 1.28],[-2.96, 5, 5, 5]];
yumvision ppEffectCommit 0;