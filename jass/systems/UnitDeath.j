// 任意单位死亡事件
function UnitDeath_Conditions takes nothing returns boolean
	local unit u = GetKillingUnit()
	local unit ut = GetTriggerUnit()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))

	
	set u = null
	set ut = null
	return false
endfunction

//任意单位死亡事件系统
function UnitDeath takes nothing returns nothing
	local trigger t = CreateTrigger()
	
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH )
	call TriggerAddCondition(t,Condition(function UnitDeath_Conditions))
	set t = null
endfunction

