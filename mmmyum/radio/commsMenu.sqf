/*
for mission init - define _devs as array of auth player uids
_devs = ["48467270"];
 if (getPlayerUID player in _devs) then
    {
        [] execVM "mmmyum\radio\commsMenu.sqf";
    };

*/
//player_death =	compile preprocessFileLineNumbers "mmmyum\radio\special\player_death.sqf";
//player_spawn_2 = compile preprocessFileLineNumbers "fixes\player_spawn_2.sqf"; //YUM
yum_fnc_levelUp = compile preprocessFileLineNumbers "mmmyum\radio\special\yum_fnc_levelUp.sqf";
alien_spawnZombieHorde = compile preprocessFileLineNumbers "mmmyum\radio\special\alien_callZombieHorde.sqf";
 CUSTOM_menu = [
            ["YUM Menu",false],
            ["NearLocation",[2],"",-5,[["expression","[] execVM 'mmmyum\radio\yum\nearlocation.sqf'"]],"1","1"],
            ["yum_locations",[3],"",-5,[["expression","[] execVM 'mmmyum\radio\yum\yum_locations.sqf'"]],"1","1"],
            ["YumMonitor",[4],"",-5,[["expression","[] execVM 'mmmyum\radio\yum\yum_monitor.sqf'"]],"1","1"],
			["YumMonitorOff",[5],"",-5,[["expression","[] execVM 'mmmyum\radio\yum\yum_monitorOff.sqf'"]],"1","1"],
            ["LocNull",[6],"",-5,[["expression","[] execVM 'mmmyum\radio\yum\locnull.sqf'"]],"1","1"],
            ["CameraScript",[7],"",-5,[["expression","player execVM 'mmmyum\radio\yum\AlPmaker_survcam.sqf'"]],"1","1"]
			];
			
 CUSTOM_menu_create = [
            ["Create Menu",false],
            ["Box",[2],"",-5,[["expression","[] execVM 'mmmyum\radio\create\box.sqf'"]],"1","1"],
            ["Boom",[3],"",-5,[["expression","[] execVM 'mmmyum\radio\create\boom.sqf'"]],"1","1"],
            ["Drive",[4],"",-5,[["expression","[] execVM 'mmmyum\radio\create\drive.sqf'"]],"1","1"],
            ["Fly",[5],"",-5,[["expression","[] execVM 'mmmyum\radio\create\fly.sqf'"]],"1","1"],
			["DayZ-Box",[6],"",-5,[["expression","[] execVM 'mmmyum\radio\create\dayzbox.sqf'"]],"1","1"],
			["Alien-Box",[7],"",-5,[["expression","[] execVM 'mmmyum\radio\create\alien_box.sqf'"]],"1","1"]
            ];
 CUSTOM_menu_morph = [
            ["Morph Menu",false],
            ["Heal",[2],"",-5,[["expression","[] execVM 'mmmyum\radio\morph\heal.sqf'"]],"1","1"],
            ["HealTarget",[3],"",-5,[["expression","[] execVM 'mmmyum\radio\morph\healOther.sqf'"]],"1","1"],
            ["ShieldOn",[4],"",-5,[["expression","[] execVM 'mmmyum\radio\morph\ShieldOn.sqf'"]],"1","1"],
            ["ShieldOff",[5],"",-5,[["expression","[] execVM 'mmmyum\radio\morph\ShieldOff.sqf'"]],"1","1"],
			["AutoRepairOn",[6],"",-5,[["expression","[] execVM 'mmmyum\radio\morph\autoRepair.sqf'"]],"1","1"],
            ["AutoRepairOff",[7],"",-5,[["expression","[] execVM 'mmmyum\radio\morph\autoRepairOff.sqf'"]],"1","1"],
			["FlareRain",[8],"",-5,[["expression","[] execVM 'mmmyum\radio\morph\flare.sqf'"]],"1","1"],
			["FlareRainOff",[9],"",-5,[["expression","[] execVM 'mmmyum\radio\morph\flareOff.sqf'"]],"1","1"]
            ];
 CUSTOM_menu_teleport = [
            ["TP Menu",false],
            ["Home",[2],"",-5,[["expression","[] execVM 'mmmyum\radio\teleport\home.sqf'"]],"1","1"],
            ["Cherno",[3],"",-5,[["expression","[] execVM 'mmmyum\radio\teleport\cherno.sqf'"]],"1","1"],
            ["Elektro",[4],"",-5,[["expression","[] execVM 'mmmyum\radio\teleport\Electro.sqf'"]],"1","1"],
            ["Kamenka",[5],"",-5,[["expression","[] execVM 'mmmyum\radio\teleport\Kamenka.sqf'"]],"1","1"],
			["NWAF",[6],"",-5,[["expression","[] execVM 'mmmyum\radio\teleport\NWAF.sqf'"]],"1","1"],
            ["Balota",[7],"",-5,[["expression","[] execVM 'mmmyum\radio\teleport\Balota.sqf'"]],"1","1"],
			["MAP",[7],"",-5,[["expression","[] execVM 'mmmyum\radio\teleport\mapTP.sqf'"]],"1","1"]
            ];
 CUSTOM_menu_special = [
            ["InvasionZ Menu",false],
			["SpawnAlienAgent",[2],"",-5,[["expression","[] execVM 'mmmyum\radio\special\alien_generate.sqf'"]],"1","1"],
			["SpawnAlienUnit",[3],"",-5,[["expression","[] execVM 'mmmyum\radio\special\add_unit_alien.sqf'"]],"1","1"],
            ["MorphAlien",[4],"",-5,[["expression","[] execVM 'mmmyum\radio\special\morphAlien.sqf'"]],"1","1"],
            ["MorphHuman",[5],"",-5,[["expression","[] execVM 'mmmyum\radio\special\morphHuman.sqf'"]],"1","1"],
			["AlienGear",[6],"",-5,[["expression","[] execVM 'mmmyum\radio\special\alienGear.sqf'"]],"1","1"],
            ["MorphZed",[7],"",-5,[["expression","[] execVM 'mmmyum\radio\special\morphZed.sqf'"]],"1","1"],
			["AlienTank",[8],"",-5,[["expression","[] execVM 'mmmyum\radio\special\alienShip.sqf'"]],"1","1"],
			["AlienTank2",[9],"",-5,[["expression","[] execVM 'mmmyum\radio\special\alienShip2.sqf'"]],"1","1"],
			["AlienFly",[10],"",-5,[["expression","[] execVM 'mmmyum\radio\special\alienFly.sqf'"]],"1","1"],
            ["Pg 2",[11],"#USER:CUSTOM_menu_specialtwo",-5,[["expression",""]],"1","1"]
			];
 CUSTOM_menu_specialtwo = [
            ["InvasionZ Menu Pg 2",false],
			["AlienFly2",[2],"",-5,[["expression","[] execVM 'mmmyum\radio\special\alienFly2.sqf'"]],"1","1"],
			["AlienFly3",[3],"",-5,[["expression","[] execVM 'mmmyum\radio\special\alienFly3.sqf'"]],"1","1"],
            ["SpawnAlienPatrol",[4],"",-5,[["expression","[] execVM 'mmmyum\radio\special\addAlienPatrol.sqf'"]],"1","1"],
            ["Suicide",[5],"#USER:CUSTOM_menu_suicide",-5,[["expression",""]],"1","1"],
			["ReadHive",[6],"",-5,[["expression","[] execVM 'mmmyum\radio\special\hiveRead.sqf'"]],"1","1"],
            ["WriteHive",[7],"",-5,[["expression","[] execVM 'mmmyum\radio\special\hiveWrite.sqf'"]],"1","1"],
			["SetLevel",[8],"",-5,[["expression","[] execVM 'mmmyum\radio\special\setLevel.sqf'"]],"1","1"],
			["SetFaction",[9],"",-5,[["expression","[] execVM 'mmmyum\radio\special\setFaction.sqf'"]],"1","1"],
			["SetCredits",[10],"",-5,[["expression","[] execVM 'mmmyum\radio\special\setCredits.sqf'"]],"1","1"],
			["ParticleEffects",[11],"",-5,[["expression","[(position player)] execVM 'mmmyum\radio\special\tp_effects.sqf'"]],"1","1"],
            ["Pg 1",[12],"#USER:CUSTOM_menu_special",-5,[["expression",""]],"1","1"]
			];
 CUSTOM_menu_suicide = [
			["",true],
			["Are you sure want to suicide?", [-1], "", -5, [["expression", ""]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "1"],
			["Yes", [2], "", -5, [["expression", "[] execVM 'mmmyum\radio\special\player_killSelf.sqf'"]], "1", "1"],
			["No", [3], "", -3, [["expression", ""]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
			];
BIS_MENU_GroupCommunication = [
            ["mmmyum's Dev Commands", false],
            ["Debug",[2],"#USER:CUSTOM_menu",-5,[["expression",""]],"1","1"],
            ["Create",[3],"#USER:CUSTOM_menu_create",-5,[["expression",""]],"1","1"],
            ["Morph",[4],"#USER:CUSTOM_menu_morph",-5,[["expression",""]],"1","1"],
            ["Teleport",[5],"#USER:CUSTOM_menu_teleport",-5,[["expression",""]],"1","1"],
			["Special",[6],"#USER:CUSTOM_menu_special",-5,[["expression",""]],"1","1"]
            ];
			
