//zombie infection script
_character = player;
_value = player getVariable ["infectionNum",0];
if (_value > 70) then {
[_character] spawn player_morphZed;
};