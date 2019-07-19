//KRON_StrIndex   - Returns the position of string b in string a
//                        _index=[a,b] call KRON_StrIndex

private["_hay","_ndl","_lh","_ln","_arr","_tmp","_i","_j","_out"];
	_hay=_this select 0;
	_ndl=_this select 1;
	_out=-1;
	_i=0;
	if (_hay == _ndl) exitWith {0};
	_lh=[_hay] call LT_fnc_KRON_StrLen;
	_ln=[_ndl] call LT_fnc_KRON_StrLen;
	if (_lh < _ln) exitWith {-1};
	_arr=[_hay] call LT_fnc_KRON_StrToArray;
	for "_i" from 0 to (_lh-_ln) do {
		_tmp="";
		for "_j" from _i to (_i+_ln-1) do {
			_tmp=_tmp + (_arr select _j);
		};
		if (_tmp==_ndl) exitWith {_out=_i};
	};
	_out