#include "script_component.hpp"


["CBA_settingsInitialized", {
	TRACE_1("Adding AI Event Handler","");
	["awr_handleStatesUpdate", {
		params ["_unit","_oldBodyAreaStates","_bodyAreaStates"];
		if(!GVAR(isEnabled) || isPlayer _unit || !local _unit) exitWith {}; // only update AI units and if this machine is responsible for it (if player is Squadlead of AI group the AI units will be local to the SL)
		TRACE_2("Updating AI",player,_unit);
		_painLevel = _unit call EFUNC(main,getPain);
		[_unit,_oldBodyAreaStates,_bodyAreaStates] spawn FUNC(checkIncapacitatedEH);
	}] call CBA_fnc_addEventHandler;

	["ace_captiveStatusChanged", {
		params ["_unit", "_state", "_reason", "_caller"];
		
		if(_state && _reason == "SetHandcuffed") then {
			_unit setVariable [QGVAR(primaryWeaponHolder), [], true];
			_unit setVariable [QGVAR(handgunWeaponHolder), [], true];
		};
		
		if(_reason == "SetHandcuffed") then {
			_unit setVariable [QGVAR(isHandcuffed), _state, true];
		};

		if(_reason == "SetSurrendered") then {
			_unit setVariable [QGVAR(isSurrendered), _state, true];
		};
	}] call CBA_fnc_addEventHandler;

}] call CBA_fnc_addEventHandler;