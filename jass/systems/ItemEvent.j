

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

	// 加入门派
	if isJoinDenom(u, it) then
		call joinDenom(u, it)
	endif
	
	set u = null
	set it = null
	return false
endfunction

// 吃书类物品排泄
// 吃书类的问题使用之后不会自动移除，而会将生命值设置为0，然后缩小模型
// 而生命值为0的物品无法被移除，因此要排泄这类物品，需要捕捉单位丢弃物品事件
// 然后将物品的生命值设置为1后再移除
function isDeadItem takes nothing returns boolean
	return GetWidgetLife(GetManipulatedItem()) < 0.5
endfunction

function removeDeadItem_1 takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local item it = LoadItemHandle(YDHT, GetHandleId(t), 0)
	
	call SetWidgetLife(it, 1)
	call RemoveItem(it)

	call FlushChildHashtable(YDHT, GetHandleId(t))
	call PauseTimer(t)
	call DestroyTimer(t)
	set t = null
	set it = null
endfunction

function removeDeadItem takes nothing returns nothing
	local timer t = CreateTimer()
	call SaveItemHandle(YDHT, GetHandleId(t), 0, GetManipulatedItem())
	call TimerStart(t, 0, false, function removeDeadItem_1)
	set t = null
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

	set t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	call TriggerAddCondition(t, Condition(function isDeadItem))
	call TriggerAddAction(t, function removeDeadItem)
	set t = null
endfunction



