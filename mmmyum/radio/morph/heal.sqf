r_player_blood = 12000;
player setVariable["USEC_BloodQty",r_player_blood,true]; //save this blood ammount to the database
r_player_lowblood = false;
cutText [format["yumhealed"], "PLAIN DOWN"];
r_player_inpain = false;
r_player_infected = false;
dayz_hunger	= 0;
dayz_thirst = 0;
dayz_temperatur = 100;
r_fracture_legs =	false;
r_fracture_arms =	false;
r_player_dead = false;
r_player_unconscious = 	false;