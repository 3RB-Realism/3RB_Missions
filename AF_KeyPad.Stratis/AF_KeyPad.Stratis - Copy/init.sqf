
//This line is needed in your init.sqf
_nul = []execVM "AF_Keypad\AF_KP_vars.sqf";



//this IS NOT needed to run AirFell's Keypad.
player addAction["Open Keypad",{createDialog "AF_Keypad";}];