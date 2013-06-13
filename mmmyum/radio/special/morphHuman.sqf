//morphhuman
[dayz_playerUID,dayz_characterID,"Camo1_DZ"] spawn player_humanityMorph;
["Admin Script","Human Transformation"] spawn bis_func_infoText;
ppEffectDestroy yumvision;
yumvision = ppEffectCreate ["colorCorrections", 1501];
yumvision ppEffectEnable true;
yumvision ppEffectAdjust [ 1, 1.3, 0.001, [-0.11, -0.65, -0.76, 0.015],[-5, -1.74, 0.09, 0.86],[-1.14, -0.73, 1.14, -0.09]];
yumvision ppEffectCommit 0;