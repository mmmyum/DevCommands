//zombie_shield
yum_player_shield = true;
cutText [format["Shield On"], "PLAIN DOWN"];
while {yum_player_shield} do {
_zombies = (getPosATL player) nearEntities ["zZombie_Base",20];
{
_x setDamage 1;
player say "PMC_ElectricBlast1";
} forEach _zombies;
sleep 1;
};
cutText [format["Shield Off"], "PLAIN DOWN"];