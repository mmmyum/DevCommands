//yum levels

_character = _this select 0;

_type = _character getVariable ["playerSide",0]; //0 = survivor, 1 = zombie, 2 = alien, 3 = esf, 4= 4thReich

_zKills = _character getVariable ["zombieKills",0];
_bKills = _character getVariable ["banditKills",0];
_hKills = _character getVariable ["humanKills",0];
_aKills = _character getVariable ["alienKills",0];
_eKills = _character getVariable ["esfKills",0];
_fKills = _character getVariable ["fourthKills",0];

//survivor type
if (_type == 0) then {
	//get humanity
	_humanity = _character getVariable ["humanity",0];
	
	//check humanity & type transform
	if (_humanity > 3000) then { _type = 3 };
	if (_humanity < 0) then { _type = 4 };
	
	//no type transformation, change skins
	if ((_humanity > 0) and (_humanity < 3000)) then {
		if (_humanity < 1500) then { //morph into appropriate terrorist skin 
		};
		if (_humanity > 1500) then { //morph into approriate resistance skin
		};
	};
};


//zombie type
if (_type == 1) then {
	//get player skin and switch for zombie texture
	//player_zedMorph ---- disable player functions set on login
	
	_score = (_bKills / 2) + _hKills + (_eKills * 2) + (_fKills / 4) - _zKills;

	//Level 1 
	if (_score > 0) then {
	        _level = 1;
	        //level up code
	};
	
	//level 2
	if (_score > 5) then {
		_level = 2;
		//level up code
	};
	
	//level 3
	if (_score > 10) then {
		_level = 3;
		//level up code
	};
	
	//level 4
	if (_score > 15) then {
		_level = 4;
		//level up code
	};
	
	
};
//alien type
if (_type == 2) then {
	//get score and select right alien type
	_score = (_bKills / 2) + _hKills + (_eKills * 2) + (_fKills / 4) - _zKills;

	//level 1
	if (_score > 20) then {
		_level = 1;
		//level up code
	};
	
	//level 2
	if (_score > 40) then {
		_level = 2;
		//level up code
	};
	
	//level 3
	if (_score > 60) then {
		_level = 3;
		//level up code
	};
	
	//level 4
	if (_score > 80) then {
		_level = 4;
		//level up code
	};
	
	//level 5
	if (_score > 100) then {
		_level = 5;
		//level up
	};
};

//ESF
if (_type == 3) then {
	//get score and select right alien type
	_score = (_fKills / 2) + _zKills + (_aKills * 2) + (_bKills / 4) - _hKills;

	//level 1
	if (_score > 20) then {
		_level = 1;
		//level up code
	};
	
	//level 2
	if (_score > 40) then {
		_level = 2;
		//level up code
	};
	
	//level 3
	if (_score > 60) then {
		_level = 3;
		//level up code
	};
	
	//level 4
	if (_score > 80) then {
		_level = 4;
		//level up code
	};
	
	//level 5
	if (_score > 100) then {
		_level = 5;
		//level up
	};
};

//4thReich 
if (_type == 4) then {
	//get score and select right alien type
	_score =  _hKills + (_eKills * 2) - ((_fKills / 4) + _zKills + (_bKills / 2));

	//level 1
	if (_score > 20) then {
		_level = 1;
		//level up code
	};
	
	//level 2
	if (_score > 40) then {
		_level = 2;
		//level up code
	};
	
	//level 3
	if (_score > 60) then {
		_level = 3;
		//level up code
	};
	
	//level 4
	if (_score > 80) then {
		_level = 4;
		//level up code
	};
	
	//level 5
	if (_score > 100) then {
		_level = 5;
		//level up
	};
};


//take type and level and transform character to suit
[_type,_level] spawn player_levelUp;


