////////////////////////////////////////////
////////Welcome to AirFell's Keypad!////////
////////////////////////////////////////////
This script package is licensed under the "ARMA PUBLIC LICENSE-SHARE ALIKE" license.(APL-SA)
As Such: http://www.bistudio.com/community/licenses/arma-public-license-share-alike
 With this licence you are free to adapt (i.e. modify, rework or update) and share
	(i.e. copy, distribute or transmit) the material under the following conditions:

    Attribution - You must attribute the material in the manner specified by the author or
		licensor (but not in any way that suggests that they endorse you or your use of the
		material).
		
    Noncommercial - You may not use this material for any commercial purposes.
	
    Arma Only - You may not convert or adapt this material to be used in other games than
		Arma.
		
    Share Alike - If you adapt, or build upon this material, you may distribute the
		resulting material only under the same license.


/////////////////////////////////////////////
Installation:
/////////////////////////////////////////////
1.
Copy the folder AF_Keypad directly into your mission.stratus/mission.altis folder.

2.
In your init.sqf file copy and paste in the line:
_nul = []execVM "AF_Keypad\AF_KP_vars.sqf";

3.
In your description.ext file copy and paste in these two lines:
#include "AF_Keypad\AF_KP_defines.hpp"
#include "AF_Keypad\AF_KP_dialogs.hpp"

4.
ENJOY!

////////////////////////////////////////////
Usage:
////////////////////////////////////////////
Once the keypad files are installed in your mission directory and you have the init.sqf
and description.ext set up, you need to call the dialog from somewhere. Most common method
would be an addaction, but other methods could be used. Get creative!

a basic Addaction method:
player addAction["Open Keypad",{createDialog "AF_Keypad";}];

Once a user hits enter on the dialog keypad, it will return a string (collection of
alpha-numeric characters) to the variable name OutputText

NOTE: OutputText is a GLOBAL VARIABLE.
From the wiki: https://community.bistudio.com/wiki/Variables#Global_Variables
"Global variables are visible on the whole computer where they are defined."

EXTRA NOTE: There is no character limit on the string length.