//yum locations list debug
player switchmove "ActsPercMstpSnonWnonDnon_DancingDuoIvan";

_yum_locations_index = [];
_iCnt = 0;
{
_tempName = _x getVariable ["name","nil"];
_yum_locations_index set [_iCnt,_tempName];
_iCnt = _iCnt + 1;
} forEach yum_locations;

_iCnt = 0;
{
cuttext [format ["yum index: %1",_x],"PLAIN DOWN",1];
sleep 5;
_iCnt = _iCnt + 1;
if (_iCnt > 5) exitwith {};
} forEach _yum_locations_index;

exit

//returns L 1-1-A:## REMOTE, getVariable Name returns the name though, and has the numZombies right