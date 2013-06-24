//yum levels written by mmmyum
//Edited by Nebulazer

_character = _this select 0;

_type = _character getVariable ["playerSide",0]; //0 = survivor, 1 = zombie, 2 = alien, 3 = esf, 4 = 4thReich, 5 = resistance, 6 = bandit, 7 = glower, 8 = outlander, 9 = predator, 10 = master chief, 11 = dimentional, 12 = legend

_zKills = _character getVariable ["zombieKills",0];
_rKills = _character getVariable ["resistanceKills",0];
_bKills = _character getVariable ["banditKills",0];
_sKills = _character getVariable ["survivorKills",0];
_aKills = _character getVariable ["alienKills",0];
_eKills = _character getVariable ["esfKills",0];
_fKills = _character getVariable ["fourthKills",0];
_gKills = _character getVariable ["glowerKills",0];
_oKills = _character getVariable ["outlanderKills",0];
_pKills = _character getVariable ["predatorKills",0];
_mKills = _character getVariable ["masterchiefKills",0];
_dKills = _character getVariable ["dimentionalKills",0];
_lKills = _character getVariable ["legendKills",0];
_sHeals = _character getVariable ["survivorHeals",0];
_bHeals = _character getVariable ["banditHeals",0];

//init
_level = 0;


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

	_score = (_rKills * 2) + (_bKills * 2) + (_dKills * 4) + (_sKills / 2) + (_eKills * 2) + (_fKills / 4) + (_gKills / 2) + (_oKills / 2) + (_mKills * 10) - (_zKills + (_aKills * 4) + (_lKills / 2));

	//Level 1 
	if (_score > 0) then {
	        _level = 1;
	        //level up code
	};

	//level 2
	if (_score > 4) then {
		_level = 2;
		//level up code
	};

	//level 3
	if (_score > 6) then {
		_level = 3;
		//level up code
	};

	//level 4
	if (_score > 11) then {
		_level = 4;
		//level up code
	};
	
	//level 5
	if (_score > 18) then {
		_level = 5;
		//level up code
	};
	
	//level 6
	if (_score > 24) then {
		_level = 6;
		//level up code
	};
	if (_score > 30) then {
		_type = 2;
		//level up code to next type
	};

};

//alien type
if (_type == 2) then {
	//get score and select right skin type
	//player_zedMorph ---- disable player functions set on login
	_score = (_rKills * 2) + (_bKills / 2) + (_dKills / 4) + _sKills + _gKills + _oKills + (_eKills * 2) + (_fKills / 4) + (_pKills * 4) + (_mKills * 8) + (_lKills * 3) - (_zKills + (_aKills * 6));

	//level 1
	if (_score > 30) then {
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
	
	//level 6
	if (_score > 120) then {
		_level = 6;
		//level up
	};
	
	//level 7
	if (_score > 160) then {
		_level = 7;
		//level up
	};
	
	//level 8
	if (_score > 200) then {
		_level = 8;
		//level up
	};
	
	//level 9
	if (_score > 240) then {
		_level = 9;
		//level up
	};
	
	//level 10
	if (_score > 300) then {
		_level = 10;
		//level up
	};
	if (_score > 360) then {
		_type = 9;
		//level up code to next type (predator)
	};
};

//ESF
if (_type == 3) then {
	//get score and select right skin type
	_score = (_fKills * 4) + (_zKills / 2) + (_aKills * 2) + (_bKills * 2) + _oKills + (_lKills / 8) + (_pKills * 10) + (_dKills * 8) + _sHeals - (_sKills + _rKills + (_eKills * 4));

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
	
	//level 6
	if (_score > 120) then {
		_level = 6;
		//level up
	};
	
	//level 7
	if (_score > 160) then {
		_level = 7;
		//level up
	};
	
	//level 8
	if (_score > 200) then {
		_level = 8;
		//level up
	};
	
	//level 9
	if (_score > 240) then {
		_level = 9;
		//level up
	};
	
	//level 10
	if (_score > 300) then {
		_level = 10;
		//level up
	};
	if (_score > 360) then {
		_type = 10;
		//level up code to next type (mastercheif)
	};
};

//4thReich 
if (_type == 4) then {
	//get score and select right skin type
	_score =  (_hKills2 / 2) + (_eKills * 4) + _rKills + _oKills + _gKills + (_lKills *5) + (_mKills *10) + _pKills - ((_fKills / 4) + _zKills + (_bKills / 2) + (_dKills * 4));

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
	
	//level 6
	if (_score > 120) then {
		_level = 6;
		//level up
	};
	
	//level 7
	if (_score > 160) then {
		_level = 7;
		//level up
	};
	
	//level 8
	if (_score > 200) then {
		_level = 8;
		//level up
	};
	
	//level 9
	if (_score > 240) then {
		_level = 9;
		//level up
	};
	
	//level 10
	if (_score > 300) then {
		_level = 10;
		//level up
	};
	if (_score > 360) then {
		_type = 2;
		//level up code to next type
	};
};

//resistance
if (_type == 5) then {
	//get score and select right skin type
	_score = (_fKills *6) + (_dKills * 10) + (_zKills / 2) + (_aKills * 2) + (_bKills / 2) + _sHeals - ((_hKills *2) + _rKills + (_eKills * 2) + _oKills + (_lKills * 4));

	//level 1
	if (_score > 0) then {
		_level = 1;
		//level up code
	};

	//level 2
	if (_score > 4) then {
		_level = 2;
		//level up code
	};

	//level 3
	if (_score > 6) then {
		_level = 3;
		//level up code
	};

	//level 4
	if (_score > 11) then {
		_level = 4;
		//level up code
	};

	//level 5
	if (_score > 22) then {
		_level = 5;
		//level up
	};
};

//bandit terrorist
if (_type == 6) then {
	//get score and select right skin type
	_score =  _sKills + (_eKills * 4) + _rKills + _oKills + _gKills + (_pKills *4) + _lKills + _bHeals - ((_fKills / 2) + (_zKills /2)  + (_bKills / 2));

	//level 1
	if (_score > 0) then {
		_level = 1;
		//level up code
	};

	//level 2
	if (_score > 4) then {
		_level = 2;
		//level up code
	};

	//level 3
	if (_score > 6) then {
		_level = 3;
		//level up code
	};

	//level 4
	if (_score > 11) then {
		_level = 4;
		//level up code
	};

	//level 5
	if (_score > 22) then {
		_level = 5;
		//level up
	};
};

//outlander reformer type "healer"
if (_type == 7) then {
	//get player skin and switch for zombie texture
	//player_zedMorph ---- disable player functions set on login
    _score = _zKills + _aKills  + _fKills + (_eKills / 4) + (_bKills / 6) + (_sHeals * 6) - (_rKills + (_sKills * 9));

	//Level 1 
	if (_score > 0) then {
	        _level = 1;
	        //level up code
	};

	//level 2
	if (_score > 4) then {
		_level = 2;
		//level up code
	};

	//level 3
	if (_score > 6) then {
		_level = 3;
		//level up code
	};

	//level 4
	if (_score > 11) then {
		_level = 4;
		//level up code
	};
	
	//level 5
	if (_score > 18) then {
		_level = 5;
		//level up code
	};
	
	//level 6
	if (_score > 24) then {
		_level = 6;
		//level up code
	};
};

//glower half-life type "healer"
if (_type == 8) then {
	//get score and select right skin type
	//player_zedMorph ---- disable player functions set on login
	 _score = _zKills + _aKills  + _fKills + (_eKills / 4) + (_bKills / 6) + (_sHeals * 6) + _bHeals + (_pKills * 2) + (_dKills * 2) - (_rKills + (_sKills * 9));

	//level 1
	if (_score > 30) then {
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
	
	//level 6
	if (_score > 120) then {
		_level = 6;
		//level up
	};
	
	//level 7
	if (_score > 160) then {
		_level = 7;
		//level up
	};
	
	//level 8
	if (_score > 200) then {
		_level = 8;
		//level up
	};
	
	//level 9
	if (_score > 240) then {
		_level = 9;
		//level up
	};
	
	//level 10
	if (_score > 300) then {
		_level = 10;
		//level up
	};
};

//predator type
if (_type == 9) then {
	//get player skin and switch for zombie texture
	//player_zedMorph ---- disable player functions set on login

	_score = (_rKills / 2) + (_bKills / 2) +_oKills + _gKills + (_lKills * 6) + (_dKills * 6) + _sKills + (_eKills * 2) + (_mKills * 6) + (_fKills / 4) + _pHeals - (_zKills + (_aKills / 6));

	//Level 1 
	if (_score > 500) then {
	        _level = 1;
	        //level up code
	};

	//level 2
	if (_score > 600) then {
		_level = 2;
		//level up code
	};

	//level 3
	if (_score > 700) then {
		_level = 3;
		//level up code
	};

	//level 4
	if (_score > 800) then {
		_level = 4;
		//level up code
	};
	
	//level 5
	if (_score > 900) then {
		_level = 5;
		//level up code
	};
	
	//level 6
	if (_score > 1000) then {
		_level = 6;
		//level up code
	};
};

//master chief type
if (_type == 10) then {
	//get score and select right skin type
	_score = (_fKills * 4) + (_zKills / 2) + (_aKills * 2) + (_bKills * 2) + _oKills + (_lKills / 8) + (_pKills * 10) + (_dKills * 8) + _sHeals + _rHeals + _eHeals - ((_sKills * 2) + _rKills + (_eKills * 6) + (_mKills * 8));

	//Level 1 
	if (_score > 500) then {
	        _level = 1;
	        //level up code
	};

	//level 2
	if (_score > 600) then {
		_level = 2;
		//level up code
	};

	//level 3
	if (_score > 700) then {
		_level = 3;
		//level up code
	};

	//level 4
	if (_score > 800) then {
		_level = 4;
		//level up code
	};
	
	//level 5
	if (_score > 900) then {
		_level = 5;
		//level up code
	};
	
	//level 6
	if (_score > 1000) then {
		_level = 6;
		//level up code
	};
};

//dimentional type
if (_type == 6) then {
	//get score and select right skin type
	_score =  (_hKills2 / 2) + (_eKills * 4) + _rKills + _oKills + _gKills + (_lKills *5) + (_mKills *10) + _pKills - ((_fKills / 4) + _zKills + (_bKills / 2) + (_dKills * 6));

	//Level 1 
	if (_score > 500) then {
	        _level = 1;
	        //level up code
	};

	//level 2
	if (_score > 600) then {
		_level = 2;
		//level up code
	};

	//level 3
	if (_score > 700) then {
		_level = 3;
		//level up code
	};

	//level 4
	if (_score > 800) then {
		_level = 4;
		//level up code
	};
	
	//level 5
	if (_score > 900) then {
		_level = 5;
		//level up code
	};
	
	//level 6
	if (_score > 1000) then {
		_level = 6;
		//level up code
	};
};

//legend type "paladin"
if (_type == 7) then {
	//get player skin and switch for zombie texture
	//player_zedMorph ---- disable player functions set on login
    _score = _zKills + _aKills  + _fKills + _aKills + (_pKills * 5) + (_dKills * 5) + (_eKills / 4) + (_bKills / 6) + (_sHeals * 4) + (_bHeals * 2) - (_rKills + (_sKills * 9));

	//Level 1 
	if (_score > 500) then {
	        _level = 1;
	        //level up code
	};

	//level 2
	if (_score > 600) then {
		_level = 2;
		//level up code
	};

	//level 3
	if (_score > 700) then {
		_level = 3;
		//level up code
	};

	//level 4
	if (_score > 800) then {
		_level = 4;
		//level up code
	};
	
	//level 5
	if (_score > 900) then {
		_level = 5;
		//level up code
	};
	
	//level 6
	if (_score > 1000) then {
		_level = 6;
		//level up code
	};
};

//take type and level and transform character to suit
[_type,_level] spawn yum_fnc_levelUp;