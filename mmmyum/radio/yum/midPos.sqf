//return mid pos betweem player and created object
_yumCnt = 0;
_testTarget = "Land_Fire_barrel" createVehicle (position player);
_mX = 7;
_posB = getPosATL _testTarget;


while {_yumCnt < 13} do {
_posA = getPosATL player;
_posC = [_posA,_posB,_mX] call yum_findMidPos;
_createdHere = "Land_Fire_burning" createVehicle _posC;
_createdHere setPos _posC;
titleText [format ["YUMPOS: A: %1 | B: %2 \n C: %3 C.H.: %4",_posA,_posB,_posC,str(getPosATL _createdHere)], "PLAIN"];
sleep 5;
deleteVehicle _createdHere;
_yumCnt = _yumCnt + 1;
};
deleteVehicle _testTarget;