//set stats/type and find level (call level script) -> calls level function
//easy setup
_goodStat = 5;
_badStat = 30;

_type = player setVariable ["playerSide",2]; 
//0 = survivor, 1 = zombie, 2 = alien, 3 = esf, 4 = 4thReich, 5 = resistance, 6 = bandit, 7 = glower, 8 = outlander, 9 = predator, 10 = master chief, 11 = dimentional, 12 = legend

_zKills = player setVariable ["zombieKills",_goodStat];
_rKills = player setVariable ["resistanceKills",_badStat];
_bKills = player setVariable ["banditKills",_goodStat];
_sKills = player setVariable ["survivorKills",_badStat];
_aKills = player setVariable ["alienKills",_goodStat];
_eKills = player setVariable ["esfKills",_badStat];
_fKills = player setVariable ["fourthKills",_goodStat];
_gKills = player setVariable ["glowerKills",_goodStat];
_oKills = player setVariable ["outlanderKills",_badStat];
_pKills = player setVariable ["predatorKills",_goodStat];
_mKills = player setVariable ["masterchiefKills",_badStat];
_dKills = player setVariable ["dimentionalKills",_badStat];
_lKills = player setVariable ["legendKills",_badStat];
_sHeals = player setVariable ["survivorHeals",_goodStat];
_bHeals = player setVariable ["banditHeals",_badStat];
sleep 1;
[player] execVM "mmmyum\radio\special\level\invZ_levels.sqf";