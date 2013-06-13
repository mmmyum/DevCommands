//morph alien
[dayz_playerUID,dayz_characterID,"zetaborn_alien2"] spawn player_humanityMorph;
["Admin Script","Alien Transformation"] spawn bis_func_infoText;
"colorCorrections" ppEffectEnable true;  
"colorCorrections" ppEffectAdjust[ 1, 0.66, 0, [-5, -2.14, -1.2, 0],[-5, -0.4, -0.16, -3.14],[-5, -0.13, -0.01, 0]];
"colorCorrections" ppEffectCommit 1;

ppEffectDestroy yumvision;
yumvision = ppEffectCreate ["colorCorrections", 1501];
yumvision ppEffectEnable true;
yumvision ppEffectAdjust [ 1, 0.66, 0, [-5, -2.14, -1.2, 0],[-5, -0.4, -0.16, -3.14],[-5, -0.13, -0.01, 0]];
yumvision ppEffectCommit 1;