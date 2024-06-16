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

_isCarryable = [_unit,_oldbodyAreaStates,_bodyAreaStates,_inDeepWater] call FUNC(handleLegsDamage);
//post state updates update duty Factor 

if(_isCarryable) then {
    TRACE_1("Adding AWR Load Factor for Player",_unit);
    ["AWR_LoadFactor", GVAR(incapDutyFactor)] call ace_advanced_fatigue_fnc_addDutyFactor;
}
else {
    TRACE_1("Removing AWR Load Factor for Player",_unit);
    ["AWR_LoadFactor"] call ace_advanced_fatigue_fnc_removeDutyFactor;
};
