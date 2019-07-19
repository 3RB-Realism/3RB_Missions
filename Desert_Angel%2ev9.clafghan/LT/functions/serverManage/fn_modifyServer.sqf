/*
	Author: Sean Crowe

*/


disableSerialization;

_control = ((findDisplay 2520) displayCtrl 2521);
lbClear _control;

_data = missionNamespace getVariable ["LT_SERVER_LO", []];
_numberLoadouts = ((count _data) / 2) - 1;

for "_i" from 0 to _numberLoadouts do
{
	_selectNum = _i * 2;

	_control lbAdd format ["%1", _data select _selectNum];
	_control lbSetData[(lbSize _control)-1,((str _selectNum))];
};

if (count _this > 0) then
{
	_control lbSetCurSel (_this select 0);
};

_control = ((findDisplay 2520) displayCtrl 2523);
_control lbSetCurSel -1;
