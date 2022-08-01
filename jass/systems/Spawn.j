/*
* 刷怪系统
*/

globals
    integer array attackers
    real array spawnFront1Point
    real array spawnFront2Point
    real array spawnFront3Point
    real array spawnBackPoint
    real array basePoint
    integer wave = 0 // 当前波数
    timer spawnTimer = CreateTimer() // 刷怪计时器
    timer spawnWaitTimer = CreateTimer() // 刷怪等待计时器
    timerdialog spawnWaitDialog // 刷怪等待对话框
    boolean isSpawning = false // 是否正在刷怪
    boolean isSpawnBack = false // 是否刷后面的怪
    group attackerGroup = CreateGroup() // 进攻怪物组
    constant player ATTACK_PLAYER = Player(6) // 进攻玩家
    trigger waitSpawnTrigger = CreateTrigger() // 等待刷怪触发器
endglobals

// 执行刷怪系统
function doSpawnPeriodically takes nothing returns nothing
    local unit u = null
    if isSpawning then
        set u = CreateUnit(ATTACK_PLAYER, attackers[wave], spawnFront1Point[1], spawnFront1Point[2], 270)
        call IssuePointOrderById(u, 0xD000F, basePoint[1], basePoint[2])
        call GroupAddUnit(attackerGroup, u)

        set u = CreateUnit(ATTACK_PLAYER, attackers[wave], spawnFront2Point[1], spawnFront2Point[2], 270)
        call IssuePointOrderById(u, 0xD000F, basePoint[1], basePoint[2])
        call GroupAddUnit(attackerGroup, u)

        set u = CreateUnit(ATTACK_PLAYER, attackers[wave], spawnFront3Point[1], spawnFront3Point[2], 270)
        call IssuePointOrderById(u, 0xD000F, basePoint[1], basePoint[2])
        call GroupAddUnit(attackerGroup, u)

        if isSpawnBack then
            set u = CreateUnit(ATTACK_PLAYER, attackers[wave], spawnBackPoint[1], spawnBackPoint[2], 270)
            call IssuePointOrderById(u, 0xD000F, basePoint[1], basePoint[2])
            call GroupAddUnit(attackerGroup, u)
        endif
    endif
    set u = null
endfunction

function executeWaitSpawn takes nothing returns nothing
    call DestroyTimer(GetExpiredTimer())
    call TriggerExecute(waitSpawnTrigger)
endfunction

function nextSpawn takes nothing returns nothing
    local timer t = CreateTimer()
    set wave = wave + 1

    call DestroyTimerDialog(spawnWaitDialog)
    set isSpawning = true
    call TimerStart(t, 150, false, function executeWaitSpawn)
    set t = null
endfunction

function waitSpawn takes nothing returns nothing
    set isSpawning = false
    // 等待下一次进攻
    call TimerStart(spawnWaitTimer, 90, false, function nextSpawn)
    set spawnWaitDialog = CreateTimerDialogBJ(spawnWaitTimer, "邪教下次进攻：")
endfunction

function firstSpawn takes nothing returns nothing
    local timer t = CreateTimer()
    call DestroyTimerDialog(spawnWaitDialog)
    set wave = 1
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFDDA0DD西域邪教开始了进攻正派武林，玩家务必要确保正派武林不被摧毁，否则游戏失败|r")
    set isSpawning = true
    call TimerStart(t, 150, false, function executeWaitSpawn)
    set t = null
endfunction

function InitSpawn takes nothing returns nothing
    local timer tm = CreateTimer()


    // 暂定15波进攻怪
    set attackers[1] = 'h000'
    set attackers[2] = 'h001'
    set attackers[3] = 'h002'
    set attackers[4] = 'h003'
    set attackers[5] = 'h004'
    set attackers[6] = 'h005'
    set attackers[7] = 'h006'
    set attackers[8] = 'h007'
    set attackers[9] = 'h008'
    set attackers[10] = 'h009'
    set attackers[11] = 'h00A'
    set attackers[12] = 'h00B'
    set attackers[13] = 'h00C'
    set attackers[14] = 'h00D'
    set attackers[15] = 'h00E'

    // 初始化出怪点
    set spawnFront1Point[1] = 0.0
    set spawnFront1Point[2] = 0.0

    set spawnFront2Point[1] = 0.0
    set spawnFront2Point[2] = 0.0

    set spawnFront3Point[1] = 0.0
    set spawnFront3Point[2] = 0.0

    set spawnBackPoint[1] = 0.0
    set spawnBackPoint[2] = 0.0

    set basePoint[1] = 0.0
    set basePoint[2] = 0.0

    call TimerStart(spawnTimer, 3, true, function doSpawnPeriodically)

    // 第一次刷怪
    call TimerStart(tm, 120, false, function firstSpawn)
    set spawnWaitDialog = CreateTimerDialogBJ(tm, "邪教进攻倒计时")

    call TriggerAddAction(waitSpawnTrigger, function waitSpawn)

    set tm = null
endfunction
