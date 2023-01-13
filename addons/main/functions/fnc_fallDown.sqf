#include "script_component.hpp"
/*
* Author: [79AD] S. Spartan
* Makes the unit fall down
* 
* Arguments:
* 0: unit to force to fall down (ACE_player)
*
* Return Value:
* None
*
* Example:
* [ACE_player, 1, true] call awr_main_fnc_fallDown
*
* Public: No
*/

params ["_unit", ["_wakeUpTime", 1, [1]]];
[_unit, _wakeUpTime] spawn {
	params ["_unit", "_wakeUpTime"];
	[_unit, true] call ACEFUNC(medical_engine,setUnconsciousAnim);
	sleep _wakeUpTime;
	[_unit, false] call ACEFUNC(medical_engine,setUnconsciousAnim);
};