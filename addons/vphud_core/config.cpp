class CfgPatches
{
    class VPHUD
    {
        units[] = {};
        weapons[] = {};
        requiredVersion = "2.06";
        requiredAddons[] = {"cba_main"};
        author = "Grester";
    };
};

class CfgFunctions
{
    class VPHUD
    {
        class VPHUD_Core
        {
            file = "\vphud_core\functions";
            class vphud{
                postInit=1;
                ext = ".sqf";
            };
            class vphud_dialog{
                postInit=0;
                ext = ".sqf";
            };
        };
    };
};

class IGUIBack;
class RscButtonMenuOK;
class RscEdit;
class RscButtonMenuCancel;
class RscSlider;
class RscText;
class RscCombo;
class RscPicture;
class RscTextCheckbox;
class RscEdit;

//VPHUD classes begin here

class VPHUD_Dialog
{
    idd = 2110;
    movingEnabled = 1;
    enableSimulation = 1;
    class controls
    {
        class Vphud_background: IGUIBack
        {
            idc = 2200;
            x = 0.355625 * safezoneW + safezoneX;
            y = 0.247 * safezoneH + safezoneY;
            w = 0.28875 * safezoneW;
            h = 0.33 * safezoneH;
            colorBackground[] = {0,0,0,0.6};
            moving = 1;
        };
        class Vphud_okBtn: RscButtonMenuOK
        {
            text = "$STR_save";
            x = 0.365937 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.0309375 * safezoneW;
            h = 0.022 * safezoneH;
            tooltip = "$STR_saveOptions";
            action = "[] spawn vphud_dialog_ok;";
        };
        class Vphud_cancelBtn: RscButtonMenuCancel
        {
            text ="$STR_cancel";
            x = 0.592812 * safezoneW + safezoneX;
            y = 0.544 * safezoneH + safezoneY;
            w = 0.04125 * safezoneW;
            h = 0.022 * safezoneH;
            tooltip = "$STR_cancelChanges";
            action = "[] spawn vphud_dialog_cancel;";
        };
        class Vphud_txtCheckBoxCrosshair: RscTextCheckbox
        {
            idc = 2500;
            x = 0.39 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.022 * safezoneH;
            strings[] =
            {
                "$STR_disabled"
            };
            checked_strings[] =
            {
                "$STR_enabled"
            };
            onCheckBoxesSelChanged = "[_this select 2] spawn vphud_dialog_txtCheckBoxCh;";
        };
        class Vphud_sliderScale: RscSlider
        {
            idc = 1900;
            x = 0.365937 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_sliderSpace: RscSlider
        {
            idc = 1901;
            x = 0.365937 * safezoneW + safezoneX;
            y = 0.434 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_sliderCrosshairRed: RscSlider
        {
            idc = 1902;
            x = 0.530937 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_sliderCrosshairGreen: RscSlider
        {
            idc = 1903;
            x = 0.530937 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_sliderCrosshairBlue: RscSlider
        {
            idc = 1904;
            x = 0.530937 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_sliderCrosshairAlpha: RscSlider
        {
            idc = 1905;
            x = 0.530937 * safezoneW + safezoneX;
            y = 0.5 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_txtCrosshair: RscText
        {
            idc = 1001;
            text = "$STR_virtualCrosshair";
            x = 0.37625 * safezoneW + safezoneX;
            y = 0.467 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_txtCrosshairRedValue: RscText
        {
            idc = 1002;
            text = "0";
            x = 0.618594 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_txtCrosshairGreenValue: RscText
        {
            idc = 1003;
            text = "255";
            x = 0.618594 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_txtCrosshairBlueValue: RscText
        {
            idc = 1004;
            text = "0";
            x = 0.618594 * safezoneW + safezoneX;
            y = 0.445 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_txtCrosshairAlphaValue: RscText
        {
            idc = 1005;
            text = "100%";
            x = 0.618594 * safezoneW + safezoneX;
            y = 0.5 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_txtCrosshairRed: RscText
        {
            idc = 1006;
            text = "$STR_red";
            x = 0.561875 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_txtCrosshairGreen: RscText
        {
            idc = 1007;
            text = "$STR_green";
            x = 0.561875 * safezoneW + safezoneX;
            y = 0.357 * safezoneH + safezoneY;
            w = 0.0257812 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_txtCrosshairBlue: RscText
        {
            idc = 1008;
            text = "$STR_blue";
            x = 0.561875 * safezoneW + safezoneX;
            y = 0.423 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_txtCrosshairAlpha: RscText
        {
            idc = 1009;
            text = "$STR_opacity";
            x = 0.54125 * safezoneW + safezoneX;
            y = 0.478 * safezoneH + safezoneY;
            w = 0.060 * safezoneW;
            h = 0.02 * safezoneH;
        };
        class Vphud_txtScaling: RscText
        {
            idc = 1010;
            text = "$STR_hudScaling";
            x = 0.381406 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.0515625 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_txtSpacing: RscText
        {
            idc = 1011;
            text = "$STR_hudSpacing";
            x = 0.381406 * safezoneW + safezoneX;
            y = 0.401 * safezoneH + safezoneY;
            w = 0.0515625 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_txtUnits: RscText
        {
            idc = 1012;
            text = "$STR_unitSystem";
            x = 0.371094 * safezoneW + safezoneX;
            y = 0.269 * safezoneH + safezoneY;
            w = 0.0825 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_comboBoxUnits: RscCombo
        {
            idc = 2100;
            x = 0.371094 * safezoneW + safezoneX;
            y = 0.302 * safezoneH + safezoneY;
            w = 0.08 * safezoneW;
            h = 0.022 * safezoneH;
            onLBSelChanged = "[_this select 1] spawn vphud_dialog_comboBoxUnits;";
        };
        class Vphud_txtScalingValue: RscText
        {
            idc = 1013;
            text = "50";
            x = 0.453594 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_txtSpacingValue: RscText
        {
            idc = 1014;
            text = "50";
            x = 0.453594 * safezoneW + safezoneX;
            y = 0.434 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_txtCrosshairColor: RscText
        {
            idc = 1015;
            text = "$STR_crosshairColor";
            x = 0.546406 * safezoneW + safezoneX;
            y = 0.28 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_logo: RscPicture
        {
            idc = 1200;
            text = "vphud_core\textures\logo.paa";
            x = 0.47 * safezoneW + safezoneX;
            y = 0.258 * safezoneH + safezoneY;
            w = 0.0515625 * safezoneW;
            h = 0.088 * safezoneH;
        };
        class Vphud_txtForce: RscText
        {
            idc = 1016;
            text = "$STR_forceUnforce";
            x = 0.469062 * safezoneW + safezoneX;
            y = 0.367 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.011 * safezoneH
        };
        class Vphud_txtCheckBoxForce: RscTextCheckbox
        {
            idc = 2501;
            x = 0.479375 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.0360937 * safezoneW;
            h = 0.022 * safezoneH;
            strings[] =
            {
                "$STR_disabled"
            };
            checked_strings[] =
            {
                "$STR_enabled"
            };
            onCheckBoxesSelChanged = "[_this select 2] spawn vphud_dialog_txtCheckBoxForce;";
        };
        class Vphud_txtCrosshairOnly: RscText
        {
            idc = 1017;
            text = "$STR_crosshairOnly";
            x = 0.469062 * safezoneW + safezoneX;
            y = 0.423 * safezoneH + safezoneY;
            w = 0.0567187 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vphud_txtCheckBoxCrosshairOnly: RscTextCheckbox
        {
            idc = 2502;
            x = 0.479375 * safezoneW + safezoneX;
            y = 0.456 * safezoneH + safezoneY;
            w = 0.0360937 * safezoneW;
            h = 0.022 * safezoneH;
            strings[] =
            {
                "$STR_disabled"
            };
            checked_strings[] =
            {
                "$STR_enabled"
            };
            onCheckBoxesSelChanged = "[_this select 2] spawn vphud_dialog_txtCheckBoxChOnly;";
        };
        class Vphud_txtCrosshairStyle: RscText
        {
            idc = 1020;
            text = "$STR_crosshairStyle";
            x = 0.463906 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.011 * safezoneH;
        };
        class Vphud_editCrosshairStyle: RscEdit
        {
            idc = 1400;
            text = "";
            x = 0.484531 * safezoneW + safezoneX;
            y = 0.511 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.022 * safezoneH;
            //onKeyUp = "";
        };
        //class Grstr_cbPov: RscCombo
        //{
        //    idc = 2101;
        //    x = 0.371094 * safezoneW + safezoneX;
        //    y = 0.302 * safezoneH + safezoneY;
        //    w = 0.08 * safezoneW;
        //    h = 0.022 * safezoneH;
        //};
    };
};