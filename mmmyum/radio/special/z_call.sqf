private ["_item","_id"];
_item = _this select 3;

// remove menu
player removeAction s_player_callzombies;
s_player_callzombies = 1;

player playActionNow "Surrender";


[player,"spotted",0,false] call dayz_zombieSpeak;

_id = [player,100,true,(getPosATL player)] spawn player_alertZombies;

sleep 3;
player switchMove "";