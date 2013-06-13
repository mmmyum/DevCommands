player selectWeapon (secondaryWeapon player);
player removeWeapon (primaryWeapon player);
player playMoveNow "ActsPercMstpSnonWpstDnon_suicide1B";

waitUntil {animationState player == "ActsPercMstpSnonWpstDnon_suicide1B"};
sleep 4.15;

player fire (currentWeapon player);

sleep 0.8;

_aim = player;
if (_aim == player) then
{
	_aim setDamage 1.1;
};