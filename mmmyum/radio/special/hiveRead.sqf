//hiveRead - probably needs to be serverside.
_doLoop = 0;
while {_doLoop < 5} do {
	_key = format["CHILD:102:%1:",_characterID];
	_primary = _key call server_hiveReadWrite;
	if (count _primary > 0) then {
		if ((_primary select 0) != "ERROR") then {
			_doLoop = 9;
		};
	};
	_doLoop = _doLoop + 1;
};

if (isNull _playerObj or !isPlayer _playerObj) exitWith {
	diag_log ("SETUP RESULT: Exiting, player object null: " + str(_playerObj));
};

//Wait for HIVE to be free
//diag_log ("SETUP: RESULT: Successful with " + str(_primary));

_medical =		_primary select 1;
_stats =		_primary select 2;
_state =		_primary select 3;
_worldspace = 	_primary select 4;
_humanity =		_primary select 5;



if (count _stats > 0) then {
	_iCnt = 0;
	{
	cutText [format [("_stats select %1 = %2"),_iCnt,_x], "PLAIN DOWN"];
	_iCnt = _iCnt + 1;
	} forEach _stats;
	/*
	//register stats
	_playerObj setVariable["zombieKills",(_stats select 0),true];
	_playerObj setVariable["headShots",(_stats select 1),true];
	_playerObj setVariable["humanKills",(_stats select 2),true];
	_playerObj setVariable["banditKills",(_stats select 3),true];
	_playerObj addScore (_stats select 1);
	
	//Save Score
	_score = score _playerObj;
	_playerObj addScore ((_stats select 0) - _score);
	
	//record for Server JIP checks
	_playerObj setVariable["zombieKills_CHK",(_stats select 0)];
	_playerObj setVariable["headShots_CHK",(_stats select 1)];
	_playerObj setVariable["humanKills_CHK",(_stats select 2)];
	_playerObj setVariable["banditKills_CHK",(_stats select 3)];
	*/
	/*
	if (count _stats > 4) then {
		if (!(_stats select 3)) then {
			_playerObj setVariable["selectSex",true,true];
		};
	} else {
		_playerObj setVariable["selectSex",true,true];
	};  */
};