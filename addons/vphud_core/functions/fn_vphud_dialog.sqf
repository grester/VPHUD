disableSerialization;
_measureUnits = ["Metric","Imperial"];
//_crosshairStyles = ["V","T","I","X","O","+","-",".","/\","\/","^"]
//_povTypes = ["Vehicle","Player"];
createDialog "Vphud_Dialog";
waitUntil {!isNull (findDisplay 2110);};

/*{
    lbAdd [2101,_x];
} forEach _povTypes;
lbSetCurSel [2101, vphud_pov];*/

//Scaling changed
sliderSetRange [1900,0,100];
sliderSetPosition [1900,vphud_scaling*50];
sliderSetSpeed [1900,1,5];
ctrlSetText[1013,str(round(vphud_scaling*50))];
((findDisplay 2110) displayCtrl 1900) ctrlAddEventHandler ["SliderPosChanged","ctrlSetText[1013,str(round(sliderPosition(1900)))]; vphud_scaling = sliderPosition(1900)/50;"];

//Spacing changed
sliderSetRange [1901,0,100];
sliderSetPosition [1901,vphud_spacing*50];
sliderSetSpeed [1901,1,5];
ctrlSetText[1014,str(round(vphud_spacing*50))];
((findDisplay 2110) displayCtrl 1901) ctrlAddEventHandler ["SliderPosChanged","ctrlSetText[1014,str(round(sliderPosition(1901)))]; vphud_spacing = sliderPosition(1901)/50;"];

//Crosshair color red changed
sliderSetRange [1902,0,255];
sliderSetPosition [1902,vphud_crosshair_color_red*255];
sliderSetSpeed [1902,5,25];
ctrlSetText[1002,str(round(vphud_crosshair_color_red*255))];
((findDisplay 2110) displayCtrl 1902) ctrlAddEventHandler ["SliderPosChanged","ctrlSetText[1002,str(round(sliderPosition 1902))]; vphud_crosshair_color_red = (sliderPosition 1902)/255;"];

//Crosshair color green changed
sliderSetRange [1903,0,255];
sliderSetPosition [1903,vphud_crosshair_color_green*255];
sliderSetSpeed [1903,5,25];
ctrlSetText[1003,str(round(vphud_crosshair_color_green*255))];
((findDisplay 2110) displayCtrl 1903) ctrlAddEventHandler ["SliderPosChanged","ctrlSetText[1003,str(round(sliderPosition 1903))]; vphud_crosshair_color_green = (sliderPosition 1903)/255;"];

//Crosshair color blue changed
sliderSetRange [1904,0,255];
sliderSetPosition [1904,vphud_crosshair_color_blue*255];
sliderSetSpeed [1904,5,25];
ctrlSetText[1004,str(round(vphud_crosshair_color_blue*255))];
((findDisplay 2110) displayCtrl 1904) ctrlAddEventHandler ["SliderPosChanged","ctrlSetText[1004,str(round(sliderPosition 1904))]; vphud_crosshair_color_blue = (sliderPosition 1904)/255;"];

//Crosshair opacity changed
sliderSetRange [1905,0,100];
sliderSetPosition [1905,vphud_crosshair_color_alpha*100];
sliderSetSpeed [1905,5,20];
ctrlSetText[1005,str(round(vphud_crosshair_color_alpha*100))+"%"];
((findDisplay 2110) displayCtrl 1905) ctrlAddEventHandler ["SliderPosChanged","ctrlSetText[1005,str(round(sliderPosition(1905)))+""%""]; vphud_crosshair_color_alpha = sliderPosition(1905)/100;"];

//Unit system changed
{
    lbAdd [2100,_x];
} forEach _measureUnits;
//lbSetCurSel [2100, vphud_unit_system];
((findDisplay 2110) displayCtrl 2100) lbSetCurSel vphud_unit_system;

//Crosshair toggled
((findDisplay 2110) displayCtrl 2500) ctrlSetChecked vphud_crosshair_toggle;

//Vphud forced
((findDisplay 2110) displayCtrl 2501) ctrlSetChecked vphud_force;

//Crosshair only
((findDisplay 2110) displayCtrl 2502) ctrlSetChecked vphud_crosshair_only_toggle;

//Crosshair style
((findDisplay 2110) displayCtrl 1400) ctrlSetText vphud_crosshair_style;
((findDisplay 2110) displayCtrl 1400) ctrlAddEventHandler ["KeyUp","vphud_crosshair_style = ctrlText 1400;"];