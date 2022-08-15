
globals
	boolean array showDamage
endglobals

function UnitDamage_Conditions takes nothing returns boolean
	local unit u = GetEventDamageSource()
	local unit ut = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local real damage = GetEventDamage()
	local string damageStr = ""
	local integer j = 1
	local effect eff = null

	set eff = null
	set u = null
	set ut = null
	set p = null
	return false
endfunction




//任意单位伤害事件系统
function UnitDamage takes nothing returns nothing
	local trigger t = CreateTrigger()
	local integer j = 1

	loop
		exitwhen j > PLAYER_COUNT
		set showDamage[j] = false
		set j = j + 1
	endloop
	
	call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	call TriggerAddCondition(t, Condition(function UnitDamage_Conditions))
	set t = null
endfunction
