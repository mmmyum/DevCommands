//landed effects script
_pos = _this select 0;
//_pos = position player;
_pos = [ _pos select 0, _pos select 1, 10];
//create source
_OBJ = "Land_Fire_Barrel" createVehicle _pos;
hideObject _OBJ;
//create effects:
//Format: [ShapeName, AnimationName, Type, TimerPeriod, LifeTime, Position, MoveVelocity, RotationVelocity, Weight, Volume, Rubbing, Size, Color, AnimationPhase, RandomDirectionPeriod, RandomDirectionIntensity, OnTimer, BeforeDestroy, Object]
_PS = "#particlesource" createVehicle (getpos _OBJ);
_PS attachTo [_source,[0,0,0],"head_axis"]; 
_PS setParticleRandom [0.25, [1, 1, 1], [0, 0, 1], 0.1, 0.2, [0.05, 0.05, 0.05, 0.01], 0.01, 0.01];
_col3 = [[1,1,1,1], [1,1,1,0.01]];
_PS setParticleParams [["\ca\Data\ParticleEffects\Universal\Universal", 16, 13, 2,0],"", "Billboard", 1, 2, [0, 0, 0],[0,0,0], 0.4, 1.5, 1.6, 0, [0.05,0.15],_col3,[1000],0,0,"","",_ps4,random 360];	
_PS setParticleCircle [1, [0,0,1]];
_PS setdropinterval 0.03; 

_PS2 = "#particlesource" createVehicle (getpos _OBJ);
_PS2 attachTo [_source,[0,0,0],"head_axis"]; 
_PS2 setParticleRandom [0.25, [0, 0, 1], [0, 0, 1], 0.1, 0.2, [0.05, 0.05, 0.05, 0.01], 0.01, 0.01];
_col2 = [[1,1,1,-1], [1,1,1,-1]];
_PS2 setParticleParams [["\ca\Data\ParticleEffects\Universal\Universal", 16, 13, 2,0],"", "Billboard", 1, 2, [0, 0, 0],[0,0,0], 0.4, 1.5, 1.6, 0, [0.05,0.15],_col2,[1000],0,0,"","",_ps4,random 360];	
_PS2 setParticleCircle [1, [0,0,1]];
_PS2 setdropinterval 0.03; 

_PS3 = "#particlesource" createVehicle (getpos _OBJ);
_PS3 attachTo [_source,[0,0,0],"head_axis"]; 
_PS3 setParticleRandom [0.25, [0, 0, 1], [0, 0, 1], 0.1, 0.2, [0.05, 0.05, 0.05, 0.01], 0.01, 0.01];
_col1 = [[0.7,0.1,0.7,1], [0.7,0.3,0.7,0.01]];
_PS3 setParticleParams [["\ca\Data\ParticleEffects\Universal\Universal", 16, 13, 2,0],"", "Billboard", 1, 2, [0, 0, 0],[0,0,0], 0.4, 1.5, 1.6, 0, [0.05,0.15],_col1,[1000],0,0,"","",_ps4,random 360];	
_PS3 setParticleCircle [1, [0,0,1]];
_PS3 setdropinterval 0.03; 

_PS4 = "#particlesource" createVehicle (getpos _OBJ);
_PS4 attachTo [_source,[0,0,0],"head_axis"]; 
_PS4 setParticleRandom [0.25, [1, 1, 1], [0, 0, 1], 0.1, 0.2, [0.05, 0.05, 0.05, 0.01], 0.01, 0.01];
_col4 = [[1,1,1,-1], [1,1,1,-2]];
_PS4 setParticleParams [["\ca\Data\ParticleEffects\Universal\Universal", 16, 13, 2,0],"", "Billboard", 1, 2, [0, 0, 0],[0,0,0], 0.4, 1.5, 1.6, 0, [0.05,0.15],_col3,[1000],0,0,"","",_ps4,random 360];	
_PS4 setParticleCircle [1, [0,0,1]];
_PS4 setdropinterval 0.03; 

_PS5 = "#particlesource" createVehicle (getpos _OBJ);
_PS5 attachTo [_source,[0,0,0],"head_axis"]; 
_PS5 setParticleRandom [0.25, [1, 1, 1], [0, 0, 1], 0.1, 0.2, [0.05, 0.05, 0.05, 0.01], 0.01, 0.01];
_col5 = [[1,1,1,-2], [1,1,1,0.01]];
_PS5 setParticleParams [["\ca\Data\ParticleEffects\Universal\Universal", 16, 13, 2,0],"", "Billboard", 1, 2, [0, 0, 0],[0,0,0], 0.4, 1.5, 1.6, 0, [0.05,0.15],_col3,[1000],0,0,"","",_ps4,random 360];	
_PS5 setParticleCircle [1, [0,0,1]];
_PS5 setdropinterval 0.03; 

_PS6 = "#particlesource" createVehicle (getpos _OBJ);
_PS6 attachTo [_source,[0,0,0],"head_axis"]; 
_PS6 setParticleRandom [0.25, [1, 1, 1], [0, 0, 1], 0.1, 0.2, [0.05, 0.05, 0.05, 0.01], 0.01, 0.01];
_col6 = [[0.189,0.209,0.011,1], [1,1,1,0.01]];
_PS6 setParticleParams [["\ca\Data\ParticleEffects\Universal\Universal", 16, 13, 2,0],"", "Billboard", 1, 2, [0, 0, 0],[0,0,0], 0.4, 1.5, 1.6, 0, [0.05,0.15],_col3,[1000],0,0,"","",_ps4,random 360];	
_PS6 setParticleCircle [1, [0,0,1]];
_PS6 setdropinterval 0.03; 

_PS7 = "#particlesource" createVehicle (getpos _OBJ);
_PS7 attachTo [_source,[0,0,0],"head_axis"]; 
_PS7 setParticleRandom [0.25, [1, 1, 1], [0, 0, 1], 0.1, 0.2, [0.05, 0.05, 0.05, 0.01], 0.01, 0.01];
_col7 = [[0.204,0.176,0.019,1], [1,1,1,0.01]];
_PS7 setParticleParams [["\ca\Data\ParticleEffects\Universal\Universal", 16, 13, 2,0],"", "Billboard", 1, 2, [0, 0, 0],[0,0,0], 0.4, 1.5, 1.6, 0, [0.05,0.15],_col3,[1000],0,0,"","",_ps4,random 360];	
_PS7 setParticleCircle [1, [0,0,1]];
_PS7 setdropinterval 0.03; 

_PS8 = "#particlesource" createVehicle (getpos _OBJ);
_PS8 attachTo [_source,[0,0,0],"head_axis"]; 
_PS8 setParticleRandom [0.25, [1, 1, 1], [0, 0, 1], 0.1, 0.2, [0.05, 0.05, 0.05, 0.01], 0.01, 0.01];
_col8 = [[0.178,0.234,0.05,1], [1,1,1,0.01]];
_PS8 setParticleParams [["\ca\Data\ParticleEffects\Universal\Universal", 16, 13, 2,0],"", "Billboard", 1, 2, [0, 0, 0],[0,0,0], 0.4, 1.5, 1.6, 0, [0.05,0.15],_col3,[1000],0,0,"","",_ps4,random 360];	
_PS8 setParticleCircle [1, [0,0,1]];
_PS8 setdropinterval 0.03; 

_PS9 = "#particlesource" createVehicle (getpos _OBJ);
_PS9 attachTo [_source,[0,0,0],"head_axis"]; 
_PS9 setParticleRandom [0.25, [1, 1, 1], [0, 0, 1], 0.1, 0.2, [0.05, 0.05, 0.05, 0.01], 0.01, 0.01];
_col9 = [[0.169,0.235,0.01,1], [1,1,1,0.01]];
_PS9 setParticleParams [["\ca\Data\ParticleEffects\Universal\Universal", 16, 13, 2,0],"", "Billboard", 1, 2, [0, 0, 0],[0,0,0], 0.4, 1.5, 1.6, 0, [0.05,0.15],_col3,[1000],0,0,"","",_ps4,random 360];	
_PS9 setParticleCircle [1, [0,0,1]];
_PS9 setdropinterval 0.03; 
//wait
sleep 60;
//delete effects
deletevehicle _OBJ;
if (!(isNull _PS)) then {
deletevehicle _PS; };
if (!(isNull _PS2)) then {
deletevehicle _PS2; };
if (!(isNull _PS3)) then {
deletevehicle _PS3; };
if (!(isNull _PS4)) then {
deletevehicle _PS4; };
if (!(isNull _PS5)) then {
deletevehicle _PS5; };
if (!(isNull _PS6)) then {
deletevehicle _PS6; };
if (!(isNull _PS7)) then {
deletevehicle _PS7; };
if (!(isNull _PS8)) then {
deletevehicle _PS8; };
if (!(isNull _PS9)) then {
deletevehicle _PS9; };


if (!(isNull _source)) then {
deletevehicle _source; };