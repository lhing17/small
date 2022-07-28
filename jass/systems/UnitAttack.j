
// 单位受到攻击
function UnitAttack_Conditions takes nothing returns boolean
	local unit u = GetAttacker()
	local unit ut = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer i = 1 + GetPlayerId(p)

	if UnitHasBuffBJ(u, 'B000') then
		// 内伤 攻击时扣除1/1000的气血
		call percentDamage(u, 0.1, true)
	endif

	if UnitHasBuffBJ(u, 'BNso') then
		// 走火入魔 攻击时扣除3/1000的气血
		call percentDamage(u, 0.3, true)
	endif

	set u = null
	set ut = null
	set p = null
	return false
endfunction


function UnitAttack takes nothing returns nothing
	local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function UnitAttack_Conditions))
	set t = null
endfunction
