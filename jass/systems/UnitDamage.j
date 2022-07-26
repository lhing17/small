
function UnitDamage_Conditions takes nothing returns boolean
	local unit u = GetEventDamageSource()
	local unit ut = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)
	local real damage = GetEventDamage()

	


	set u = null
	set ut = null
	set p = null
	return false
endfunction




//任意单位伤害事件系统
function UnitDamage takes nothing returns nothing
	local trigger t = CreateTrigger()
	
	call YDWESyStemAnyUnitDamagedRegistTrigger( t )
	call TriggerAddCondition(t,Condition(function UnitDamage_Conditions))
	set t = null
endfunction
