#include "script_component.hpp"
/*
* Author: [79AD] S. Spartan
* Event Handler to check the current pain level of the unit.
* Sets the GVAR(draggableCarryable) to false if the system is not enabled or the pain is below the threshold.
* 
* Arguments:
* 0: unit to check (ACE_player)
*
* Return Value:
* nothing
*
* Example:
* [ACE_player] spawn awr_player_fnc_checkIncapacitaedEH;
*
* Public: No
*/
params ["_unit","_oldbodyAreaStates","_bodyAreaStates"];
if (!alive _unit || !GVAR(isEnabled)) exitWith {};
private _inDeepWater = _unit call EFUNC(main,inDeepWater);

_bodyAreaStates params ["_bodyState","_armsState","_legsState"];
_oldbodyAreaStates params ["_oldBodyState","_oldArmsState","_oldLegsState"];
TRACE_2("Updating",_bodyAreaStates,_oldbodyAreaStates);
[_unit,_oldbodyAreaStates,_bodyAreaStates,_inDeepWater] call FUNC(handleWeaponUsage);

//post state updates update duty Factor 
_isIncapacitated = (_bodyState == 2 || _legsState > 0);
_awr_loadFactor = 1.0;
if(_isIncapacitated) then {
    _awr_loadFactor = GVAR(incapDutyFactor);
};

["awr_loadFactor", _awr_loadFactor] call ace_advanced_fatigue_fnc_addDutyFactor;


_isCarryable = [_unit,_oldbodyAreaStates,_bodyAreaStates,_inDeepWater] call FUNC(handleLegsDamage);