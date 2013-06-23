//levelling function - gets array variables for level and skin as determined by other script
//applies stats and skin and whatever else based on level array data.
_myType_LevelArray = [];
_level = _this select 1;
_type = _this select 0;
titleText [format ["YUMLEVELS: \n\n| Level %1 | Type %2 |",_level,_type], "PLAIN"];
sleep 1;
//translate _type to the string of it's type:
//0 = survivor, 1 = zombie, 2 = alien, 3 = esf, 4 = 4thReich, 5 = resistance, 6 = bandit, 7 = glower, 8 = outlander, 
//9 = predator, 10 = master chief, 11 = dimentional, 12 = legend
//pick right table _myType_LevelArray = 
switch (_type) do 
{
	case 0: {_myType_LevelArray = level_arraySurvivor};
	case 1: {_myType_LevelArray = level_arrayZombie};
	case 2: {_myType_LevelArray = level_arrayAlien};
	case 3: {_myType_LevelArray = level_arrayEsf};
	case 4: {_myType_LevelArray = level_arrayFourthReich};
	case 5: {_myType_LevelArray = level_arrayResistance1};
	case 6: {_myType_LevelArray = level_arrayBandit};
	case 7: {_myType_LevelArray = level_arrayGlower};
	case 8: {_myType_LevelArray = level_arrayOutlander};
	case 9: {_myType_LevelArray = level_arrayPredator};
	case 10: {_myType_LevelArray = level_arrayMasterChief};
	case 11: {_myType_LevelArray = level_arrayDimentional};
	case 12: {_myType_LevelArray = level_arrayLegend};
};
sleep 1;
titleText [format ["YUMLEVELS: \n\n| LevelArray %1",_myType_LevelArray], "PLAIN"];
sleep 1;
/*
titleText [format ["YUMLEVELS: \n\n| Level %1 | Type %2 | TypeName  %3 | ",_level,_type,_typeName], "PLAIN"];
sleep 2;

_levelArrayType = format ["level_array%1",_typeName]; //gives string, no good - unless we can convert it from string
//should be global level array name eg level_ArrayAlien
_levelArrayType2 = compile _levelArrayType; //converts string to code, but still useless - can't use it to assign
_levelArrayType3 = call compile format ["level_array%1",_typeName];
call compile format ["levelArrayType4 = level_array%1",_typeName];
sleep 1;
titleText [format ["YUMLEVELS: \n\n| LevelArrayType %1 | \n| LevelArrayTypeCompile %2 | LevelArrayType4  %3 | 3  %4 ",_levelArrayType,_levelArrayType2,levelArrayType4,_levelArrayType2], "PLAIN"];
*/
//build temp index array (consider doing this in array code)
_levelArrayType_tempIndex = [];
{
	_levelArrayType_tempIndex set [count _levelArrayType_tempIndex, _x select 0];//build index array
} forEach _myType_LevelArray;

titleText [format ["YUMLEVELS: \n\n| LevelArrayCount %2 | IndexCount %1 | AlienCount %3",count _levelArrayType_tempIndex,count _myType_LevelArray, count level_arrayAlien], "PLAIN"];
sleep 1;
_levelPos = _levelArrayType_tempIndex find _level;
if (_levelPos == -1) exitWith {diag_log "Can't find level" };
_levelData = _myType_LevelArray select _levelPos;
//format of data should be [_level,_skin,_stat1,_stat2,_stat3,_stat4,_ability1,_ability2,_otherData]

titleText [format ["YUMLEVELS: \n\n| LevelData %1",_levelData], "PLAIN"];

_skin = _levelData select 1;
_stat1 = _levelData select 2;
_stat2 = _levelData select 3;
_stat3 = _levelData select 4;
_stat4 = _levelData select 5;
_ability1 = _levelData select 6;
_ability2 = _levelData select 7;
_otherdata = _levelData select 8;

//change skin
[dayz_playerUID,dayz_characterID,_skin] spawn player_humanityMorph;

//set some stats
//player setSkill ["aimingAccuracy",_stat1];
//player setSkill ["aimingShake",_stat2];
//player setSkill ["aimingSpeed",_stat3];
//player setSkill ["endurance",_stat4];
/*
//player setSkill ["spotDistance",1];
//player setSkill ["spotTime",1];
//player setSkill ["courage",1];
//player setSkill ["reloadSpeed",1];
//player setSkill ["commanding",1];
//player setSkill ["general",1];
*/

//addactions
//_addability = format["",_ability1];// not sure how to do this yet, basically we can transform the string to a command and run it
//shouldn't need to do anything else. 