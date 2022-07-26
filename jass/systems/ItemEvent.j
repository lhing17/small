

// 购买物品
function BuyItem_Conditions takes nothing returns boolean
	local unit u = GetBuyingUnit()
	local unit ut = GetSellingUnit()
	local item it = GetSoldItem()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	

	set it = null
	set u = null
	set ut = null
	return false
endfunction


// 使用物品
function UseItem_Conditions takes nothing returns boolean
	local unit u = GetTriggerUnit()
	local item it = GetManipulatedItem()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
	local integer id = 0
	

	
	set u = null
	set it = null
	return false
endfunction

// 捡起物品
function PickupItem_Conditions takes nothing returns boolean
	local unit u = GetTriggerUnit()
	local item it = GetManipulatedItem()
	local integer i = 1 + GetPlayerId(GetOwningPlayer(u))

	
	set u = null
	set it = null
	return false
endfunction

//任意单位购买物品系统
function ItemEvent takes nothing returns nothing
	local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	call TriggerAddCondition(t, Condition(function BuyItem_Conditions))
	
	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(t, Condition(function UseItem_Conditions))

	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t, Condition(function PickupItem_Conditions))
	set t = null
endfunction



