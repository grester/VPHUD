#define hudedveh ["B_Heli_Attack_01_F","B_Plane_CAS_01_F","O_Plane_CAS_02_F","O_Heli_Attack_02_F","O_Heli_Attack_02_black_F","O_Heli_Light_02_F","O_Heli_Light_02_v2_F","O_Heli_Light_02_unarmed_F","I_Plane_Fighter_03_CAS_F","I_Plane_Fighter_03_AA_F","I_Heli_light_03_F","I_Heli_light_03_unarmed_F","RHS_AH64D_AA","RHS_AH64D_noradar_AA","RHS_AH64D_CS","RHS_AH64D_noradar_CS","RHS_AH64D_GS","RHS_AH64D_noradar_GS","RHS_AH64D","RHS_AH64D_noradar","RHS_AH64DGrey","RHS_AH64D_wd_AA","RHS_AH64D_noradar_wd_AA","RHS_AH64D_wd_CS","RHS_AH64D_noradar_wd_CS","RHS_AH64D_wd_GS","RHS_AH64D_noradar_wd_GS","RHS_AH64D_wd","RHS_AH64D_noradar_wd","rhsusf_f22","RHS_C130J","RHS_A10","RHS_A10_AT","RHS_AH1Z_CS","RHS_AH1Z_GS","RHS_AH1Z","rhsusf_CH53E_USMC_D","RHS_AH1Z_wd_CS","RHS_AH1Z_wd_GS","RHS_AH1Z_wd","rhsusf_CH53E_USMC","CUP_B_UH1Y_UNA_USMC","CUP_B_MV22_USMC","CUP_B_UH1Y_MEV_USMC","CUP_B_UH1Y_GUNSHIP_USMC","CUP_B_AH1_BAF","CUP_B_AH1_AT_BAF","CUP_B_AH1_NO_BAF","CUP_B_AH1_ES_BAF","CUP_B_AH1_MR_BAF","CUP_B_AH64D_USA","CUP_B_AH64D_AT_USA","CUP_B_AH64D_NO_USA","CUP_B_AH64D_ES_USA","CUP_B_AH64D_MR_USA","CUP_B_AH1Z_AT_USMC","CUP_B_AH1Z_7RndHydra_USMC","CUP_B_AH1Z_USMC","CUP_B_AH1Z_14RndHydra_USMC","CUP_B_AH1Z_Escort_USMC","CUP_B_AH1Z_NoWeapons_USMC","CUP_B_AH1Z_NOAA_USMC","CUP_I_AH1Z_AT_AAF","CUP_I_AH1Z_AAF","CUP_I_AH1Z_Escort_AAF","CUP_B_Merlin_HC4_GB","CUP_B_Merlin_HC3A_Armed_GB","CUP_B_Merlin_HC3A_GB","CUP_B_Merlin_HC3_VIV_GB","CUP_B_Merlin_HC3_Armed_GB","CUP_B_Merlin_HC3_GB","CUP_B_AW159_Cannon_RN_Blackcat","CUP_B_AW159_Hellfire_RN_Blackcat","CUP_B_AW159_Unarmed_RN_Blackcat","CUP_B_AW159_Cannon_GB","CUP_B_AW159_Hellfire_GB","CUP_B_AW159_Unarmed_GB","CUP_B_AW159_Cannon_RN_Grey","CUP_B_AW159_Hellfire_RN_Grey","CUP_B_AW159_Unarmed_RN_Grey","CUP_I_Wildcat_Cannon_Armed_Digital_AAF","CUP_I_Wildcat_Hellfire_Armed_Digital_AAF","CUP_I_Wildcat_Unarmed_Digital_AAF","CUP_I_Wildcat_Cannon_Armed_Green_AAF","CUP_I_Wildcat_Hellfire_Armed_Green_AAF","CUP_I_Wildcat_Unarmed_Green_AAF","CUP_B_F35B_AA_USMC","CUP_B_F35B_CAS_USMC","CUP_B_F35B_LGB_USMC","CUP_B_F35B_LGB_BAF","CUP_B_F35B_CAS_BAF","CUP_B_F35B_AA_BAF","CUP_B_CH53E_GER","CUP_B_CH53E_VIV_GER","CUP_B_CH53E_USMC","CUP_B_CH53E_VIV_USMC","CUP_B_MV22_USMC_RAMPGUN","CUP_B_MV22_VIV_USMC","CUP_O_Ka60_Grey_RU","CUP_O_Ka60_GL_Blk_CSAT","CUP_O_Ka60_Blk_CSAT","CUP_O_Ka60_GL_Hex_CSAT","CUP_O_Ka60_Hex_CSAT","CUP_O_Ka60_GL_Whale_CSAT","CUP_O_Ka60_Whale_CSAT","CUP_I_Ka60_GL_Digi_AAF","CUP_I_Ka60_Digi_AAF","CUP_I_Ka60_GL_Blk_ION","CUP_I_Ka60_Blk_ION","O_Heli_Attack_02_dynamicLoadout_F","O_Heli_Light_02_dynamicLoadout_F","O_Plane_CAS_02_dynamicLoadout_F","O_Plane_Fighter_02_F","O_Plane_Fighter_02_Stealth_F","B_Heli_Attack_01_dynamicLoadout_F","B_Plane_CAS_01_dynamicLoadout_F","B_Plane_Fighter_01_F","B_Plane_Fighter_01_Stealth_F","I_Heli_light_03_dynamicLoadout_F","I_Plane_Fighter_04_F","I_Plane_Fighter_03_dynamicLoadout_F","B_Parachute","CUP_T10_Parachute_backpack"] \

//LEAVE LINE 2 EMPTY
//Load profileVars (Mod settings) if exist
if(isNil {profileNamespace getVariable "vphud_scaling"}) then {
    profileNamespace setVariable ["vphud_scaling",1];
    profileNamespace setVariable ["vphud_spacing",1];
    profileNamespace setVariable ["vphud_crosshair_toggle",false];
    profileNamespace setVariable ["vphud_crosshair_color_red",0];
    profileNamespace setVariable ["vphud_crosshair_color_green",1];
    profileNamespace setVariable ["vphud_crosshair_color_blue",0];
    profileNamespace setVariable ["vphud_crosshair_color_alpha",1];
    profileNamespace setVariable ["vphud_unit_system",0];
    profileNamespace setVariable ["vphud_force",false];
    profileNamespace setVariable ["vphud_crosshair_only_toggle",false];
    //profileNamespace setVariable ["vphud_pov",0];
    saveProfileNamespace;
};

//Global vars
vphud_scaling = profileNamespace getVariable ["vphud_scaling",1];
vphud_spacing = profileNamespace getVariable ["vphud_spacing",1];
vphud_crosshair_toggle = profileNamespace getVariable ["vphud_crosshair_toggle",false];
vphud_crosshair_color_red = profileNamespace getVariable ["vphud_crosshair_color_red",0];
vphud_crosshair_color_green = profileNamespace getVariable ["vphud_crosshair_color_green",1];
vphud_crosshair_color_blue = profileNamespace getVariable ["vphud_crosshair_color_blue",0];
vphud_crosshair_color_alpha = profileNamespace getVariable ["vphud_crosshair_color_alpha",1];
vphud_unit_system = profileNamespace getVariable ["vphud_unit_system",0];
vphud_force = profileNamespace getVariable ["vphud_force",false];
vphud_crosshair_only_toggle = profileNamespace getVariable ["vphud_crosshair_only_toggle",false];
//vphud_pov = profileNamespace getVariable ["vphud_pov",0];

//BEGIN METHODS

//Main method
render_vphud = {
    ["vphud", "onEachFrame", {
        if (!vphud_crosshair_only_toggle) then {
            _pitchy = round((vehicle player) call BIS_fnc_getPitchBank select 0);
            _banky = round((vehicle player) call BIS_fnc_getPitchBank select 1);
            _vert = (velocity vehicle player select 2);
            drawIcon3D [
            "\vphud_core\textures\artiPitch2.paa",
            [1,1,1,1],
            positionCameraToWorld [
            if (_pitchy >30) then {30*vphud_spacing+(30 * sin _banky)*0.150*vphud_scaling} else {if (_pitchy <-30) then {30*vphud_spacing+(-30 * sin _banky)*0.150*vphud_scaling} else {30*vphud_spacing+(_pitchy * sin _banky)*0.150*vphud_scaling}},
            if (_pitchy >30) then {-30*vphud_spacing-(30 * cos _banky)*0.150*vphud_scaling} else {if (_pitchy <-30) then {-30*vphud_spacing-(-30 * cos _banky)*0.150*vphud_scaling} else {-30*vphud_spacing-(_pitchy * cos _banky)*0.150*vphud_scaling}},
            85],
            7*vphud_scaling,
            7*vphud_scaling,
            _banky,
            "",
            2,
            0.1,
            "TahomaB",
            "center"
            ];
            drawIcon3D [
            "\vphud_core\textures\artiHori2.paa",
            [1,1,1,1],
            positionCameraToWorld [30*vphud_spacing,-30*vphud_spacing,85],
            7*vphud_scaling,
            7*vphud_scaling,
            _banky,
            "",
            2,
            0.1,
            "TahomaB",
            "center"
            ];
            drawIcon3D [
            "\vphud_core\textures\artiInd2.paa",
            [1,1,1,1],
            positionCameraToWorld [30*vphud_spacing,-30*vphud_spacing,85],
            7*vphud_scaling,
            7*vphud_scaling,
            0,
            "",
            2,
            0.1,
            "TahomaB",
            "center"
            ];
            drawIcon3D [
            "\vphud_core\textures\linhaAlt.paa",
            [0,1,0,1],
            positionCameraToWorld [-47*vphud_spacing,-39*vphud_spacing,85],
            7*vphud_scaling,
            (if (round (getPos (vehicle player) select 2)<60) then {round((getPos (vehicle player) select 2)/4.6)} else {13})*vphud_scaling,
            0,
            "",
            2,
            0.1,
            "TahomaB",
            "center"
            ];
            if (vphud_unit_system == 0) then {
                drawIcon3D [
                "\vphud_core\textures\altimeter.paa",
                [1,1,1,1],
                positionCameraToWorld [-35*vphud_spacing,-28*vphud_spacing,85],
                5*vphud_scaling,
                5*vphud_scaling,
                0,
                "",
                2,
                0.1,
                "TahomaB",
                "center"
                ];
                drawIcon3D [
                "\vphud_core\textures\redline.paa",
                [1,1,1,1],
                positionCameraToWorld [-35*vphud_spacing,-28*vphud_spacing,85],
                5*vphud_scaling,
                5*vphud_scaling,
                if ((_vert >6) || (_vert <-6)) then {180} else {-(((-0.5734872)*(_vert^3))+(_vert*49.5353566))},
                "",
                2,
                0.1,
                "TahomaB",
                "center"
                ];
                drawIcon3D [
                "",
                [0,1,0,1],
                positionCameraToWorld [21.5*vphud_spacing,-40.5*vphud_spacing,85],
                0,
                0,
                0,
                str (round (speed (vehicle player)))+" km/h",
                2,
                0.05*vphud_scaling,
                "TahomaB",
                "center"
                ];
                drawIcon3D [
                "",
                [0,1,0,1],
                positionCameraToWorld [-40*vphud_spacing,-35*vphud_spacing,85],
                0,
                0,
                0,
                str (round (getPos (vehicle player) select 2))+" m",
                2,
                0.05*vphud_scaling,
                "TahomaB",
                "center"
                ];
            } else {
                drawIcon3D [
                "\vphud_core\textures\altimeterft.paa",
                [1,1,1,1],
                positionCameraToWorld [-35*vphud_spacing,-28*vphud_spacing,85],
                5*vphud_scaling,
                5*vphud_scaling,
                0,
                "",
                2,
                0.1,
                "TahomaB",
                "center"
                ];
                drawIcon3D [
                "\vphud_core\textures\redline.paa",
                [1,1,1,1],
                positionCameraToWorld [-35*vphud_spacing,-28*vphud_spacing,85],
                5*vphud_scaling,
                5*vphud_scaling,
                if ((_vert >10) || (_vert <-10)) then {180} else {-(_vert*18)},
                "",
                2,
                0.1,
                "TahomaB",
                "center"
                ];
                drawIcon3D [
                "",
                [0,1,0,1],
                positionCameraToWorld [21.5*vphud_spacing,-40.5*vphud_spacing,85],
                0,
                0,
                0,
                str (round (speed (vehicle player)*0.539956803))+" knots",
                2,
                0.05*vphud_scaling,
                "TahomaB",
                "center"
                ];
                drawIcon3D [
                "",
                [0,1,0,1],
                positionCameraToWorld [-40*vphud_spacing,-35*vphud_spacing,85],
                0,
                0,
                0,
                str (round ((getPos (vehicle player) select 2)*3.2808399))+" ft",
                2,
                0.05*vphud_scaling,
                "TahomaB",
                "center"
                ];
            };
        };
        if (vphud_crosshair_toggle) then {
            drawIcon3D [
                "",
                [vphud_crosshair_color_red,vphud_crosshair_color_green,vphud_crosshair_color_blue,vphud_crosshair_color_alpha],
                player modelToWorldVisual [0,85,(1.6*vphud_scaling)],
                0,
                0,
                0,
                "V",
                2,
                0.1*vphud_scaling,
                "EtelkaMonospacePro",
                 "center",
                 true
            ];
        };
    }] call BIS_fnc_addStackedEventHandler;
};
//End Main Method

filtered_vehicles = {
    if (vphud_force) then {
        (typeof vehicle player) in hudedveh;
    } else {
        !((typeof vehicle player) in hudedveh);
    };
};

check_rendering_conditions = {
    if ((vehicle player isKindOf "Air") && ([] call filtered_vehicles)) then {
        if ( ((assignedVehicleRole player) select 0 == "driver") || ((assignedVehicleRole player) isEqualTo ["Turret",[0]]) ) then {true};
    } else {false};
};
//END METHODS

//Main
if (hasInterface) then {
    player addEventHandler ["Init", {
        if ([] call check_rendering_conditions) then {
            [] spawn render_vphud;
        };
    }];
    player addEventHandler ["GetInMan", {
        if ([] call check_rendering_conditions) then {
            [] spawn render_vphud;
        };
    }];
    player addEventHandler ["SeatSwitchedMan", {
        if ([] call check_rendering_conditions) then {
            [] spawn render_vphud;
            } else {
                ["vphud", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
            }
    }];
    player addEventHandler ["GetOutMan", {
        ["vphud", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
    }];
    player addEventHandler ["Killed", {
        ["vphud", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
    }];
    player addAction["<t color='#00FF00'>VPHUD Options</t>",{[] spawn VPHUD_fnc_vphud_dialog;},nil,0,false];
};