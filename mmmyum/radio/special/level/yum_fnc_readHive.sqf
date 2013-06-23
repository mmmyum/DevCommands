  // define query example
/*    _key = format ["CHILD:999: select id from building WHERE class_name= '%1' AND id > ?:[0]:", _classname];    // format the sql call for the hiveext.dll
    _result = _key call server_hiveReadWrite;  // execute the hive call
 
    _status    = _result select 0;            // get the status of the result
 
    if (_status == "CustomStreamStart") then {    //check if the stream coming from the hive was opened
        _val = _result select 1;                  // get the number of entries that will be coming in the stream
        diag_log format["SARGE DEBUG: Value of - _val : %1",_val];
    };
*/



//begin mmmyum //gets variables on login
//save as function - _yumRead = call compile preprocessFileLineNumbers "compiles/yum_readHive.sqf" //or similar

_survivorID = _this; // pass var to function //pass this from the client to the server - for player login

_results = [];

_key = format["CHILD:999:SELECT survivor.survivor_kills, survivor.bandit_kills, survivor.zombie_kills FROM survivor WHERE survivor.unique_id = %1 AND survivor.is_dead = 0",_survivorID];
_result = _key call server_hiveReadWrite;

_status = _result select 0;

if (_status == "CustomStreamStart") then {
	_val = _result select 1;
	diag_log format["YUMBUG: HiveResult : %1",_val];
	if (_val > 0) then {
		_resultsNum = _val;
		_yumCnt = 0;
		while {_resultsNum > 0} do {
			_results set [count _results,_result select _resultsNum];
			_resultsNum = _resultsNum - 1;
		};
	};
};
_results
//end yum function server read