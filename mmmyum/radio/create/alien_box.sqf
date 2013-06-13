_box = "USVehicleBox_EP1" createVehicle (position player);
clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearBackpackCargoGlobal _box;

_weapons = [
			"babe_zetaborn_rifle",
			"babe_energy_launcher",
			"babe_krak_launcher"
			];
_ammo =  [
		"Babe_energy_launcher_Mag",
		"Babe_krak_Mag",
		"babe_zetaborn_rifle_mag"
		];

{_box addWeaponCargoGlobal [_x, 10];} forEach _weapons;
{_box addMagazineCargoGlobal [_x, 100];} forEach _ammo;

sleep 500;

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearBackpackCargoGlobal _box;
deletevehicle _box;