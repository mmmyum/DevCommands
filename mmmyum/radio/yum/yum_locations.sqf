//yum locations list debug
_iCnt = 0;
{
cuttext [format ["Object: %1 | Name %2 | Num %3 | Class %4",_x,(yum_locations select _iCnt) getVariable ["name","nil"],(yum_locations select _iCnt) getVariable ["numZombies", 0],(yum_locations select _iCnt) getVariable ["class", "nil"]],"PLAIN DOWN",1];
sleep 5;
_iCnt = _iCnt + 1;
if (_iCnt > 5) exitwith {};
} forEach yum_locations;
cuttext [format ["yum index: count %1",count yum_locations_index],"PLAIN DOWN",1];
_iCnt = 0;
{
cuttext [format ["yum index: %1",_x],"PLAIN DOWN",1];
sleep 5;
_iCnt = _iCnt + 1;
if (_iCnt > 5) exitwith {};
} forEach yum_locations_index;
exit

//returns L 1-1-A:## REMOTE, getVariable Name returns the name though, and has the numZombies right