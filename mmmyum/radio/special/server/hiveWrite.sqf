//hiveWrite - probably needs to be serverside.












//write to hive - prob need all vars here.
if (!isNull _character) then {
	if (alive _character) then {
		//Wait for HIVE to be free
		//Send request
		_key = format["CHILD:201:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:",_characterID,_playerPos,_playerGear,_playerBackp,_medical,false,false,_kills,_headShots,_distanceFoot,_timeSince,_currentState,_killsH,_killsB,_currentModel,_humanity];
		//diag_log ("HIVE: WRITE: "+ str(_key) + " / " + _characterID);
		_key call server_hiveWrite;
	};
};