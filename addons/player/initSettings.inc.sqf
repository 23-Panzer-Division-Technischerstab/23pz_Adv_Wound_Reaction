[
    QGVAR(isEnabled), //"awr_player_isEnabled", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    [LSTRING(Player_DisplayName), LSTRING(Player_Description)],//"Enabled?", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(SubCategory)],//"79AD Settings", "Pain Handling"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // defaultvalue
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;

[
    QGVAR(incapacitationType),//"awr_player_weaponHandleMode", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type
    [LSTRING(IncapacitationType_DisplayName), LSTRING(IncapacitationType_Description)],//"Weapon Handling", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(SubCategory)],//["79AD Settings", "Pain Handling"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [[0, 1, 2], [LSTRING(TypePain), LSTRING(TypeDamage), LSTRING(TypeBoth)], 0], // defaultvalue
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;

[
    QGVAR(weaponHandleMode),//"awr_player_weaponHandleMode", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type
    [LSTRING(WeaponHandleMode_DisplayName), LSTRING(WeaponHandleMode_Description)],//"Weapon Handling", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(SubCategory)],//["79AD Settings", "Pain Handling"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [[0, 1, 2], [LSTRING(ModeNone), LSTRING(ModeDrop), LSTRING(ModeBack)], 1], // defaultvalue
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;

[
    QGVAR(limbHandleMode),//"awr_player_LimbHandleMode", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type
    [LSTRING(LimbHandleMode_DisplayName), LSTRING(LimbHandleMode_Description)],//"Weapon Handling", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(SubCategory)],//["79AD Settings", "Pain Handling"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [[0, 1, 2, 3], [LSTRING(LimbModeNone), LSTRING(LimbModeDamage),LSTRING(LimbModeFractures),LSTRING(LimbModeBoth)], 0], // defaultvalue
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;

[
    QGVAR(handgunChance),//"awr_player_PainThreshold", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    [LSTRING(HandgunChance_DisplayName), LSTRING(HandgunChance_Description)], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(SubCategory)], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0, 100, 25, 2], // data for this setting: [min, max, default, number of shown trailing decimals]
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;

[
    QGVAR(goProne),//"awr_player_GoProne", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    [LSTRING(GoProne_DisplayName),LSTRING(GoProne_Description)], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(Subcategory)], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // defaultvalue
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;

[
    QGVAR(painThreshold),//"awr_player_PainThreshold", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    [LSTRING(PainThreshold_DisplayName), LSTRING(PainThreshold_Description)], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(SubCategory)], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0.0, 1.0, 0.5, 2], // data for this setting: [min, max, default, number of shown trailing decimals]
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;

[
    QGVAR(playFallAnimation), //"awr_ai_playFallAnimation", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    [LSTRING(PlayFallAnimation_DisplayName), LSTRING(PlayFallAnimation_Description)],//"Enabled?", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(SubCategory)],//"79AD Settings", "Pain Handling"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // defaultvalue
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;

[
    QGVAR(concussionEnabled), //"awr_ai_playFallAnimation", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    [LSTRING(Concussion_DisplayName), LSTRING(Concussion_Description)],//"Enabled?", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(SubCategory)],//"79AD Settings", "Pain Handling"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // defaultvalue
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;

[
    QGVAR(concussionTime),//"awr_player_concussionTime", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    [LSTRING(ConcussionTime_DisplayName), LSTRING(ConcussionTime_Description)], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(SubCategory)], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0.0, 100.0, 5, 2], // data for this setting: [min, max, default, number of shown trailing decimals]
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;

[
    QGVAR(incapDutyFactor),//"awr_player_incapDutyFactor", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    [LSTRING(IncapDutyFactor_DisplayName), LSTRING(IncapDutyFactor_Description)], // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    [ELSTRING(main,Category), LSTRING(SubCategory)], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    [0.0, 20, 10, 2], // data for this setting: [min, max, default, number of shown trailing decimals]
    true // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
] call CBA_fnc_addSetting;