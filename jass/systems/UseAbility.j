
//使用技能系统
function UseAbility_Conditions takes nothing returns boolean
	local integer id = GetSpellAbilityId()
	local unit u = GetTriggerUnit()
	local unit ut = GetSpellTargetUnit()
	local player p = GetOwningPlayer(u)
	local integer i = GetPlayerId(p)

 
	set u = null
	set ut = null
	set p = null
	return false
endfunction

//单位使用技能系统
function UseAbility takes nothing returns nothing
	local trigger t = CreateTrigger()
	
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t, Condition(function UseAbility_Conditions))
	set t = null
endfunction
