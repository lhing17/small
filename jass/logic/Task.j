// ------- 任务系统 -------
// 类型1 护送类任务
// 类型2 杀怪类任务
// 类型3 收集类任务
// 类型4 拜访类任务

globals
    hashtable TASK_HT = InitHashtable()
    hashtable TASK_COUNTER_HT = InitHashtable()

    // 护送类任务
    constant integer PROTECT_TASK_OFFSET = $F000000
    integer protectTaskId = 0
    integer array protectTaskItemId
    integer array protectTaskUnitId
    real array protectStartX
    real array protectStartY
    rect array protectTargetRect
    region array protectTargetRegion
    string array protectTaskHint

    // 杀怪类任务
    constant integer KILL_TASK_OFFSET = $F100000
    integer killTaskId = 0
    integer array killTaskItemId
    integer array killTaskUnitId
    integer array killCount
    boolean array killTaskRepeatable
    string array killTaskHint
    rect array killHintRect // 提示要杀的怪物的位置


    // 常量
    constant integer STATUS_INIT = 0
    constant integer STATUS_DOING = 1
    constant integer STATUS_FINISH = 2
endglobals

// 护送目标死亡，任务失败
function onProtectTaskTargetDead takes unit u returns nothing
    local integer j = 1
    local integer i = 1
    local unit dummy = null
    loop
        exitwhen j > protectTaskId
        if GetUnitTypeId(u) == protectTaskUnitId[j] then
            loop
                exitwhen i > PLAYER_COUNT
                set dummy = LoadUnitHandle(TASK_HT, GetHandleId(Player(i - 1)), PROTECT_TASK_OFFSET + j)
                if dummy != null and dummy == u then
                    call DisplayTextToPlayer(Player(i - 1), 0, 0, "|cFFFF0000任务失败了")
                    call SaveInteger(TASK_HT, GetHandleId(Player(i - 1)), PROTECT_TASK_OFFSET + j, STATUS_INIT)
                    call RemoveSavedHandle(TASK_HT, GetHandleId(Player(i - 1)), PROTECT_TASK_OFFSET + j)
                    call PlaySoundOnUnitBJ(warningSound, 100, hero[i])
                    return
                endif
                set i = i + 1
            endloop
        endif
        set j = j + 1
    endloop
    set dummy = null
endfunction


// 接受护送任务
function acceptProtectTask takes unit u, item it returns nothing
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)
    local integer j = 1
    local integer status = 0
    local unit dummy = null
    loop
        exitwhen j > protectTaskId
        if GetItemTypeId(it) == protectTaskItemId[j] then
            set status = LoadInteger(TASK_HT, GetHandleId(p), PROTECT_TASK_OFFSET + j)
            if status == STATUS_FINISH then
                call DisplayTextToPlayer(p, 0, 0, "你已经完成这个任务了")
                return
            endif
            if status == STATUS_DOING then
                call DisplayTextToPlayer(p, 0, 0, "你已经接受这个任务了，请尽快完成吧")
                return
            endif
            if status == STATUS_INIT then
                call SaveInteger(TASK_HT, GetHandleId(p), PROTECT_TASK_OFFSET + j, STATUS_DOING)
                call DisplayTextToPlayer(p, 0, 0, protectTaskHint[j])
                set dummy = CreateUnit(p, protectTaskUnitId[j], protectStartX[j], protectStartY[j], 270)
                call SaveUnitHandle(TASK_HT, GetHandleId(p), PROTECT_TASK_OFFSET + j, dummy)
                call IssuePointOrderById(dummy, $D0012, GetRectCenterX(protectTargetRect[j]), GetRectCenterY(protectTargetRect[j]))
                call PlaySoundOnUnitBJ(hintSound, 100, u)
                call PingMinimapForPlayer(p, GetRectCenterX(protectTargetRect[j]), GetRectCenterY(protectTargetRect[j]), 5)
            endif
            exitwhen true
        endif
        set j = j + 1
    endloop

    set dummy = null
    set p = null
endfunction

function onEnterProtectTaskTarget takes nothing returns nothing
    local region r = GetTriggeringRegion()
    local integer j = 1
    local unit u = GetEnteringUnit()
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)

    loop
        exitwhen j > protectTaskId
        if r == protectTargetRegion[j] and LoadInteger(TASK_HT, GetHandleId(p), PROTECT_TASK_OFFSET + j) == STATUS_DOING then
            call PlaySoundOnUnitBJ(questCompletedSound, 100, hero[i])
            call SaveInteger(TASK_HT, GetHandleId(p), PROTECT_TASK_OFFSET + j, STATUS_FINISH)
            call RemoveUnit(u)
            // 以下为任务奖励


            // set shengwang[LoadInteger(YDHT, id * cx, - $5E9EB4B3)] = (shengwang[LoadInteger(YDHT, id * cx, - $5E9EB4B3)] + $96)
            // set juexuelingwu[LoadInteger(YDHT, id * cx, - $5E9EB4B3)] = (juexuelingwu[LoadInteger(YDHT, id * cx, - $5E9EB4B3)] + 1)
            // call AdjustPlayerStateBJ($7530, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
            // call AdjustPlayerStateBJ(20, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
            // call DisplayTextToPlayer(Player(- 1 + (LoadInteger(YDHT, id * cx, - $5E9EB4B3))), 0, 0, "|CFF34FF00完成任务江湖声望+150，并获得金钱+30000、稀有币+20、绝学领悟力+1")
            return
        endif
        set j = j + 1
    endloop

    set p = null
    set u = null
    set r = null
endfunction


// 新建护送类任务
function registerProtectTask takes integer taskItemId, integer protectedUnitId, real startX, real startY, rect targetRect, string hint returns nothing
    local integer j = 1
    local trigger t = CreateTrigger()
    // 初始化任务状态
    loop
        exitwhen j > PLAYER_COUNT
        call SaveInteger(TASK_HT, GetHandleId(Player(j - 1)), PROTECT_TASK_OFFSET + protectTaskId, 0)
        set j = j + 1
    endloop
    set protectTaskId = protectTaskId + 1
    set protectTaskItemId[protectTaskId] = taskItemId
    set protectTaskUnitId[protectTaskId] = protectedUnitId
    set protectStartX[protectTaskId] = startX
    set protectStartY[protectTaskId] = startY
    set protectTargetRect[protectTaskId] = targetRect
    set protectTaskHint[protectTaskId] = hint
    set protectTargetRegion[protectTaskId] = CreateRegion()

    // 注册完成任务事件
    call RegionAddRect(protectTargetRegion[protectTaskId], targetRect)
    call TriggerRegisterEnterRegion(t, protectTargetRegion[protectTaskId], null)
    call TriggerAddAction(t, function onEnterProtectTaskTarget)
    set t = null 
endfunction

// 完成杀怪类任务
function onKillTargetDead takes unit killer, unit killed returns nothing
    local integer j = 1
    local player p = GetOwningPlayer(killer)
    local integer i = 1 + GetPlayerId(p)
    loop
        exitwhen j > killTaskId
        if GetUnitTypeId(killed) == killTaskUnitId[j] and LoadInteger(TASK_HT, GetHandleId(p), KILL_TASK_OFFSET + j) == STATUS_DOING then
            call SaveInteger(TASK_COUNTER_HT, GetHandleId(p), KILL_TASK_OFFSET + j, LoadInteger(TASK_COUNTER_HT, GetHandleId(p), KILL_TASK_OFFSET + j) + 1)
            if LoadInteger(TASK_COUNTER_HT, GetHandleId(p), KILL_TASK_OFFSET + j) >= killCount[j] then
                call PlaySoundOnUnitBJ(questCompletedSound, 100, hero[i])
                if killTaskRepeatable[j] then
                    call SaveInteger(TASK_HT, GetHandleId(p), KILL_TASK_OFFSET + j, STATUS_INIT)
                else
                    call SaveInteger(TASK_HT, GetHandleId(p), KILL_TASK_OFFSET + j, STATUS_FINISH)
                endif
                 // 以下为任务奖励

            else
                call DisplayTextToPlayer(p, 0, 0, (GetObjectName(killTaskUnitId[j]) + "：" + (I2S(LoadInteger(TASK_COUNTER_HT, GetHandleId(p), KILL_TASK_OFFSET + j)) + " / " + I2S(killCount[j]))))
            endif
        endif
        set j = j + 1
    endloop
    set p = null
endfunction

// 接受杀怪类任务
function acceptKillTask takes unit u, item it returns nothing
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)
    local integer j = 1
    local integer status = 0
    local unit dummy = null
    loop
        exitwhen j > killTaskId
        if GetItemTypeId(it) == killTaskItemId[j] then
            set status = LoadInteger(TASK_HT, GetHandleId(p), KILL_TASK_OFFSET + j)
            if status == STATUS_FINISH then
                call DisplayTextToPlayer(p, 0, 0, "你已经完成这个任务了")
                return
            endif
            if status == STATUS_DOING then
                call DisplayTextToPlayer(p, 0, 0, "你已经接受这个任务了，请尽快完成吧")
                return
            endif
            if status == STATUS_INIT then
                call SaveInteger(TASK_HT, GetHandleId(p), KILL_TASK_OFFSET + j, STATUS_DOING)
                call DisplayTextToPlayer(p, 0, 0, killTaskHint[j])
                call PlaySoundOnUnitBJ(hintSound, 100, u)
                call PingMinimapForPlayer(p, GetRectCenterX(killHintRect[j]), GetRectCenterY(killHintRect[j]), 5)
            endif
            exitwhen true
        endif
        set j = j + 1
    endloop

    set p = null
    set dummy = null
endfunction


// 新建杀怪类任务
function registerKillTask takes integer taskItemId, integer targetUnitId, integer count, boolean repeatable, rect hintRect, string hint returns nothing
    local integer j = 1
    // 初始化任务状态
    loop
        exitwhen j > PLAYER_COUNT
        call SaveInteger(TASK_HT, GetHandleId(Player(j - 1)), KILL_TASK_OFFSET + killTaskId, 0)
        set j = j + 1
    endloop
    set killTaskId = killTaskId + 1
    set killTaskItemId[killTaskId] = taskItemId
    set killTaskUnitId[killTaskId] = targetUnitId
    set killCount[killTaskId] = count
    set killTaskHint[killTaskId] = hint
    set killTaskRepeatable[killTaskId] = repeatable
    set killHintRect[killTaskId] = hintRect
endfunction


// 初始化任务
function initTasks takes nothing returns nothing

endfunction

