//flare
yum_flareLoop = true;
cutText [format["Flare Rain On"], "PLAIN DOWN"];
while {yum_flareLoop} do {
_yumPos = getPosATL player;
_flare = "F_40mm_white" createVehicle [_yumPos select 0, _yumPos select 1, 150];
sleep 4;
};
cutText [format["Flare Rain Off"], "PLAIN DOWN"];