globals
//globals from YDTriggerSaveLoadSystem:
constant boolean LIBRARY_YDTriggerSaveLoadSystem=true
hashtable YDHT
hashtable YDLOC
//endglobals from YDTriggerSaveLoadSystem
//globals from YDWEJapiEffect:
constant boolean LIBRARY_YDWEJapiEffect=true
//endglobals from YDWEJapiEffect
//globals from YDWEPolledWaitNull:
constant boolean LIBRARY_YDWEPolledWaitNull=true
//endglobals from YDWEPolledWaitNull
//globals from YDWETriggerEvent:
constant boolean LIBRARY_YDWETriggerEvent=true
trigger yd_DamageEventTrigger= null
trigger array YDWETriggerEvent__DamageEventQueue
integer YDWETriggerEvent__DamageEventNumber= 0
	
item bj_lastMovedItemInItemSlot= null
	
trigger YDWETriggerEvent__MoveItemEventTrigger= null
trigger array YDWETriggerEvent__MoveItemEventQueue
integer YDWETriggerEvent__MoveItemEventNumber= 0
//endglobals from YDWETriggerEvent
//globals from YDWETimerSystem:
constant boolean LIBRARY_YDWETimerSystem=true
integer YDWETimerSystem__CurrentTime
integer YDWETimerSystem__CurrentIndex
integer YDWETimerSystem__TaskListHead
integer YDWETimerSystem__TaskListIdleHead
integer YDWETimerSystem__TaskListIdleMax
integer array YDWETimerSystem__TaskListIdle
integer array YDWETimerSystem__TaskListNext
integer array YDWETimerSystem__TaskListTime
trigger array YDWETimerSystem__TaskListProc
trigger YDWETimerSystem__fnRemoveUnit
trigger YDWETimerSystem__fnDestroyTimer
trigger YDWETimerSystem__fnRemoveItem
trigger YDWETimerSystem__fnDestroyEffect
trigger YDWETimerSystem__fnDestroyLightning
trigger YDWETimerSystem__fnRunTrigger
timer YDWETimerSystem__Timer
integer YDWETimerSystem__TimerHandle
integer YDWETimerSystem__TimerSystem_RunIndex= 0
//endglobals from YDWETimerSystem
    // Generated
trigger gg_trg_firstOccur= null
trigger gg_trg_firstOccur_2= null
integer array attackers
real array spawnFront1Point
real array spawnFront2Point
real array spawnFront3Point
real array spawnBackPoint
real array basePoint
integer wave= 0
timer spawnTimer= CreateTimer()
timer spawnWaitTimer= CreateTimer()
timerdialog spawnWaitDialog
boolean isSpawning= false
boolean isSpawnBack= false
group attackerGroup= CreateGroup()
constant player ATTACK_PLAYER= Player(6)
trigger waitSpawnTrigger= CreateTrigger()
unit array heroList
group heroGroup
boolean array hasHero
unit array hero
unit array heroInSelection
string array heroDescription
real array heroBornPoint
constant integer KUI_HUA_ITEM= 'I000'
constant integer JU_JING_ITEM= 'I001'
constant integer TIAN_YING_ITEM= 'I002'
constant integer QING_LIANG_ITEM= 'I003'
constant integer FEI_MA_ITEM= 'I004'
constant integer LU_JIA_ITEM= 'I005'
constant integer JIN_DAO_ITEM= 'I006'
constant integer TIAN_DI_ITEM= 'I007'

constant integer DENOM_NUMBER= 8
integer array denomListItem
integer array heroDenom
string array denomName
integer array denomFirst
integer array denomSecond
integer array denomThird
integer array denomFourth
boolean array showDamage
constant integer PLAYER_COUNT= 5
	// 悟性，决定技能升重的速度
integer array intellect
	// 根骨，决定伤害暴击倍数
integer array strength
	// 福缘，决定掉落物品的概率
integer array luck
	// 医术，决定英雄血和蓝的恢复能力
integer array medical
constant integer LING_BO_WEI_BU= 'A000'

trigger l__library_init

//JASSHelper struct globals:

endglobals
	native EXGetEffectX takes effect e returns real
	native EXGetEffectY takes effect e returns real
	native EXGetEffectZ takes effect e returns real
	native EXSetEffectXY takes effect e, real x, real y returns nothing
	native EXSetEffectZ takes effect e, real z returns nothing
	native EXGetEffectSize takes effect e returns real
	native EXSetEffectSize takes effect e, real size returns nothing
	native EXEffectMatRotateX takes effect e, real angle returns nothing
	native EXEffectMatRotateY takes effect e, real angle returns nothing
	native EXEffectMatRotateZ takes effect e, real angle returns nothing
	native EXEffectMatScale takes effect e, real x, real y, real z returns nothing
	native EXEffectMatReset takes effect e returns nothing
	native EXSetEffectSpeed takes effect e, real speed returns nothing


//library YDTriggerSaveLoadSystem:
    function YDTriggerSaveLoadSystem__Init takes nothing returns nothing
            set YDHT=InitHashtable()
        set YDLOC=InitHashtable()
    endfunction

//library YDTriggerSaveLoadSystem ends
//library YDWEJapiEffect:













 function YDWESetEffectLoc takes effect e,location loc returns nothing
		call EXSetEffectXY(e, GetLocationX(loc), GetLocationY(loc))
	endfunction

//library YDWEJapiEffect ends
//library YDWEPolledWaitNull:
function YDWEPolledWaitNull takes real duration returns nothing
    local timer t
    local real timeRemaining
    if ( duration > 0 ) then
        set t=CreateTimer()
        call TimerStart(t, duration, false, null)
        loop
            set timeRemaining=TimerGetRemaining(t)
            exitwhen timeRemaining <= 0
            // If we have a bit of time left, skip past 10% of the remaining
            // duration instead of checking every interval, to minimize the
            // polling on long waits.
            if ( timeRemaining > bj_POLLED_WAIT_SKIP_THRESHOLD ) then
                call TriggerSleepAction(0.1 * timeRemaining)
            else
                call TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
            endif
        endloop
        call DestroyTimer(t)
    endif
    set t=null
endfunction

//library YDWEPolledWaitNull ends
//library YDWETriggerEvent:
	
//===========================================================================  
//���ⵥλ�˺��¼� 
//===========================================================================
function YDWEAnyUnitDamagedTriggerAction takes nothing returns nothing
    local integer i= 0
    
    loop
        exitwhen i >= YDWETriggerEvent__DamageEventNumber
        if YDWETriggerEvent__DamageEventQueue[i] != null and IsTriggerEnabled(YDWETriggerEvent__DamageEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent__DamageEventQueue[i]) then
            call TriggerExecute(YDWETriggerEvent__DamageEventQueue[i])
        endif
        set i=i + 1
    endloop
endfunction
function YDWEAnyUnitDamagedFilter takes nothing returns boolean
    if GetUnitAbilityLevel(GetFilterUnit(), 'Aloc') <= 0 then
        call TriggerRegisterUnitEvent(yd_DamageEventTrigger, GetFilterUnit(), EVENT_UNIT_DAMAGED)
    endif
    return false
endfunction
function YDWEAnyUnitDamagedEnumUnit takes nothing returns nothing
    local trigger t= CreateTrigger()
    local region r= CreateRegion()
    local group g= CreateGroup()
    call RegionAddRect(r, GetWorldBounds())
    call TriggerRegisterEnterRegion(t, r, Condition(function YDWEAnyUnitDamagedFilter))
    call GroupEnumUnitsInRect(g, GetWorldBounds(), Condition(function YDWEAnyUnitDamagedFilter))
    call DestroyGroup(g)
    set r=null
    set t=null
    set g=null
endfunction
	
function YDWESyStemAnyUnitDamagedRegistTrigger takes trigger trg returns nothing
    if trg == null then
        return
    endif
        
    if YDWETriggerEvent__DamageEventNumber == 0 then
        set yd_DamageEventTrigger=CreateTrigger()
        call TriggerAddAction(yd_DamageEventTrigger, function YDWEAnyUnitDamagedTriggerAction)
        call YDWEAnyUnitDamagedEnumUnit()
    endif
    
    set YDWETriggerEvent__DamageEventQueue[YDWETriggerEvent__DamageEventNumber]=trg
    set YDWETriggerEvent__DamageEventNumber=YDWETriggerEvent__DamageEventNumber + 1
endfunction
//===========================================================================  
//�ƶ���Ʒ�¼� 
//===========================================================================  
function YDWESyStemItemUnmovableTriggerAction takes nothing returns nothing
    local integer i= 0
    
    if GetIssuedOrderId() >= 852002 and GetIssuedOrderId() <= 852007 then
		set bj_lastMovedItemInItemSlot=GetOrderTargetItem()
    	loop
        	exitwhen i >= YDWETriggerEvent__MoveItemEventNumber
        	if YDWETriggerEvent__MoveItemEventQueue[i] != null and IsTriggerEnabled(YDWETriggerEvent__MoveItemEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent__MoveItemEventQueue[i]) then
        	    call TriggerExecute(YDWETriggerEvent__MoveItemEventQueue[i])
        	endif
        	set i=i + 1
    	endloop
	endif
endfunction
function YDWESyStemItemUnmovableRegistTrigger takes trigger trg returns nothing
    if trg == null then
        return
    endif
        
    if YDWETriggerEvent__MoveItemEventNumber == 0 then
        set YDWETriggerEvent__MoveItemEventTrigger=CreateTrigger()
        call TriggerAddAction(YDWETriggerEvent__MoveItemEventTrigger, function YDWESyStemItemUnmovableTriggerAction)
        call TriggerRegisterAnyUnitEventBJ(YDWETriggerEvent__MoveItemEventTrigger, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    endif
    
    set YDWETriggerEvent__MoveItemEventQueue[YDWETriggerEvent__MoveItemEventNumber]=trg
    set YDWETriggerEvent__MoveItemEventNumber=YDWETriggerEvent__MoveItemEventNumber + 1
endfunction
function GetLastMovedItemInItemSlot takes nothing returns item
    return bj_lastMovedItemInItemSlot
endfunction

//library YDWETriggerEvent ends
//library YDWETimerSystem:
function YDWETimerSystem__NewTaskIndex takes nothing returns integer
 local integer h= YDWETimerSystem__TaskListIdleHead
	if YDWETimerSystem__TaskListIdleHead < 0 then
		if YDWETimerSystem__TaskListIdleMax >= 8000 then
			return 8100
		else
			set YDWETimerSystem__TaskListIdleMax=YDWETimerSystem__TaskListIdleMax + 1
			return YDWETimerSystem__TaskListIdleMax
		endif
	endif
	set YDWETimerSystem__TaskListIdleHead=YDWETimerSystem__TaskListIdle[h]
	return h
endfunction
function YDWETimerSystem__DeleteTaskIndex takes integer index returns nothing
	set YDWETimerSystem__TaskListIdle[index]=YDWETimerSystem__TaskListIdleHead
	set YDWETimerSystem__TaskListIdleHead=index
endfunction
//�ú������д���
function YDWETimerSystem__NewTask takes real time,trigger proc returns integer
 local integer index= YDWETimerSystem__NewTaskIndex()
 local integer h= YDWETimerSystem__TaskListHead
 local integer t= R2I(100. * time) + YDWETimerSystem__CurrentTime
 local integer p
	set YDWETimerSystem__TaskListProc[index]=proc
	set YDWETimerSystem__TaskListTime[index]=t
	loop
		set p=YDWETimerSystem__TaskListNext[h]
		if p < 0 or YDWETimerSystem__TaskListTime[p] >= t then
		//	call BJDebugMsg("NewTask:"+I2S(index))
			set YDWETimerSystem__TaskListNext[h]=index
			set YDWETimerSystem__TaskListNext[index]=p
			return index
		endif
		set h=p
	endloop
	return index
endfunction
function YDWETimerSystemNewTask takes real time,trigger proc returns integer
	return YDWETimerSystem__NewTask(time , proc)
endfunction
function YDWETimerSystemGetCurrentTask takes nothing returns integer
	return YDWETimerSystem__CurrentIndex
endfunction
//ɾ����λ
function YDWETimerSystem__RemoveUnit_CallBack takes nothing returns nothing
    call RemoveUnit(LoadUnitHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerRemoveUnit takes real time,unit u returns nothing
    call SaveUnitHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time , YDWETimerSystem__fnRemoveUnit), u)
endfunction
//�ݻټ�ʱ��
function YDWETimerSystem__DestroyTimer_CallBack takes nothing returns nothing
    call DestroyTimer(LoadTimerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerDestroyTimer takes real time,timer t returns nothing
    call SaveTimerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time , YDWETimerSystem__fnDestroyTimer), t)
endfunction
//ɾ����Ʒ
function YDWETimerSystem__RemoveItem_CallBack takes nothing returns nothing
    call RemoveItem(LoadItemHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerRemoveItem takes real time,item it returns nothing
    call SaveItemHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time , YDWETimerSystem__fnRemoveItem), it)
endfunction
//ɾ����Ч
function YDWETimerSystem__DestroyEffect_CallBack takes nothing returns nothing
    call DestroyEffect(LoadEffectHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerDestroyEffect takes real time,effect e returns nothing
    call SaveEffectHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time , YDWETimerSystem__fnDestroyEffect), e)
endfunction
//ɾ��������Ч
function YDWETimerSystem__DestroyLightning_CallBack takes nothing returns nothing
    call DestroyLightning(LoadLightningHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerDestroyLightning takes real time,lightning lt returns nothing
 local integer i= YDWETimerSystem__NewTask(time , YDWETimerSystem__fnDestroyLightning)
    call SaveLightningHandle(YDHT, YDWETimerSystem__TimerHandle, i, lt)
endfunction
//���д�����
function YDWETimerSystem__RunTrigger_CallBack takes nothing returns nothing
    call TriggerExecute(LoadTriggerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerRunTrigger takes real time,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time , YDWETimerSystem__fnRunTrigger), trg)
endfunction
//ɾ��Ư������
function YDWETimerDestroyTextTag takes real time,texttag tt returns nothing
    local integer N=0
    local integer i=0
    if time <= 0 then
        set time=0.01
    endif
    call SetTextTagPermanent(tt, false)
    call SetTextTagLifespan(tt, time)
    call SetTextTagFadepoint(tt, time)
endfunction
//���ļ�ʱ��������
function YDWETimerSystem__Main takes nothing returns nothing
 local integer h= YDWETimerSystem__TaskListHead
 local integer p
	loop
		set YDWETimerSystem__CurrentIndex=YDWETimerSystem__TaskListNext[h]
		exitwhen YDWETimerSystem__CurrentIndex < 0 or YDWETimerSystem__CurrentTime < YDWETimerSystem__TaskListTime[YDWETimerSystem__CurrentIndex]
		//call BJDebugMsg("Task:"+I2S(CurrentIndex))
		call TriggerEvaluate(YDWETimerSystem__TaskListProc[YDWETimerSystem__CurrentIndex])
		call YDWETimerSystem__DeleteTaskIndex(YDWETimerSystem__CurrentIndex)
		set YDWETimerSystem__TaskListNext[h]=YDWETimerSystem__TaskListNext[YDWETimerSystem__CurrentIndex]
	endloop
	set YDWETimerSystem__CurrentTime=YDWETimerSystem__CurrentTime + 1
endfunction
//��ʼ������
function YDWETimerSystem__Init takes nothing returns nothing
    set YDWETimerSystem__Timer=CreateTimer()
	set YDWETimerSystem__TimerHandle=GetHandleId(YDWETimerSystem__Timer)
	set YDWETimerSystem__CurrentTime=0
	set YDWETimerSystem__TaskListHead=0
	set YDWETimerSystem__TaskListNext[0]=- 1
	set YDWETimerSystem__TaskListIdleHead=1
	set YDWETimerSystem__TaskListIdleMax=1
	set YDWETimerSystem__TaskListIdle[1]=- 1
	
	set YDWETimerSystem__fnRemoveUnit=CreateTrigger()
	set YDWETimerSystem__fnDestroyTimer=CreateTrigger()
	set YDWETimerSystem__fnRemoveItem=CreateTrigger()
	set YDWETimerSystem__fnDestroyEffect=CreateTrigger()
	set YDWETimerSystem__fnDestroyLightning=CreateTrigger()
	set YDWETimerSystem__fnRunTrigger=CreateTrigger()
	call TriggerAddCondition(YDWETimerSystem__fnRemoveUnit, Condition(function YDWETimerSystem__RemoveUnit_CallBack))
	call TriggerAddCondition(YDWETimerSystem__fnDestroyTimer, Condition(function YDWETimerSystem__DestroyTimer_CallBack))
	call TriggerAddCondition(YDWETimerSystem__fnRemoveItem, Condition(function YDWETimerSystem__RemoveItem_CallBack))
	call TriggerAddCondition(YDWETimerSystem__fnDestroyEffect, Condition(function YDWETimerSystem__DestroyEffect_CallBack))
	call TriggerAddCondition(YDWETimerSystem__fnDestroyLightning, Condition(function YDWETimerSystem__DestroyLightning_CallBack))
	call TriggerAddCondition(YDWETimerSystem__fnRunTrigger, Condition(function YDWETimerSystem__RunTrigger_CallBack))
	
    call TimerStart(YDWETimerSystem__Timer, 0.01, true, function YDWETimerSystem__Main)
endfunction
//ѭ�������ö�����ʱ��
function YDWETimerSystemGetRunIndex takes nothing returns integer
    return YDWETimerSystem__TimerSystem_RunIndex
endfunction
function YDWETimerSystem__RunPeriodicTriggerFunction takes nothing returns nothing
    local integer tid= GetHandleId(GetExpiredTimer())
    local trigger trg= LoadTriggerHandle(YDHT, tid, $D0001)
	call SaveInteger(YDHT, StringHash(I2S(GetHandleId(trg))), StringHash("RunIndex"), LoadInteger(YDHT, tid, $D0002))
    if TriggerEvaluate(trg) then
        call TriggerExecute(trg)
    endif
    set trg=null
endfunction
function YDWETimerSystem__RunPeriodicTriggerFunctionByTimes takes nothing returns nothing
    local integer tid= GetHandleId(GetExpiredTimer())
    local trigger trg= LoadTriggerHandle(YDHT, tid, $D0001)
    local integer times= LoadInteger(YDHT, tid, $D0003)
	call SaveInteger(YDHT, StringHash(I2S(GetHandleId(trg))), StringHash("RunIndex"), LoadInteger(YDHT, tid, $D0002))
    if TriggerEvaluate(trg) then
        call TriggerExecute(trg)
    endif
    set times=times - 1
    if times > 0 then
		call SaveInteger(YDHT, tid, $D0003, times)
      else
        call DestroyTimer(GetExpiredTimer())
        call FlushChildHashtable(YDHT, tid)
    endif
    set trg=null
endfunction
function YDWETimerRunPeriodicTrigger takes real timeout,trigger trg,boolean b,integer times,integer data returns nothing
    local timer t
    local integer tid
    local integer index= 0
    if timeout < 0 then
        return
      else
        set t=CreateTimer()
		set tid=GetHandleId(t)
    endif
    set YDWETimerSystem__TimerSystem_RunIndex=YDWETimerSystem__TimerSystem_RunIndex + 1
	call SaveTriggerHandle(YDHT, tid, $D0001, trg)
	call SaveInteger(YDHT, tid, $D0002, YDWETimerSystem__TimerSystem_RunIndex)
	set index=LoadInteger(YDHT, GetHandleId(trg), 'YDTS' + data)
    set index=index + 1
	call SaveInteger(YDHT, GetHandleId(trg), 'YDTS' + data, index)
	call SaveTimerHandle(YDHT, GetHandleId(trg), ( 'YDTS' + data ) * index, t)
	
    if b == false then
		call SaveInteger(YDHT, tid, $D0003, times)
        call TimerStart(t, timeout, true, function YDWETimerSystem__RunPeriodicTriggerFunctionByTimes)
      else
        call TimerStart(t, timeout, true, function YDWETimerSystem__RunPeriodicTriggerFunction)
    endif
    set t=null
endfunction
function YDWETimerRunPeriodicTriggerOver takes trigger trg,integer data returns nothing
 local integer trgid= GetHandleId(trg)
    local integer index= LoadInteger(YDHT, trgid, 'YDTS' + data)
    local timer t
    loop
        exitwhen index <= 0
        set t=LoadTimerHandle(YDHT, trgid, ( 'YDTS' + data ) * index)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT, GetHandleId(t))
		call RemoveSavedHandle(YDHT, trgid, ( 'YDTS' + data ) * index)
        set index=index - 1
    endloop
	
    call RemoveSavedInteger(YDHT, trgid, 'YDTS' + data)
    set t=null
endfunction

//library YDWETimerSystem ends
//===========================================================================
// 
// 小人物的江湖
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Thu Jul 28 16:39:27 2022
//   Map Author: zei_kale
// 
//===========================================================================
//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************
function InitGlobals takes nothing returns nothing
endfunction
//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//TESH.scrollpos=0
//TESH.alwaysfold=0
// -- 引入其他依赖 --
// 刷怪

// 执行刷怪系统
function doSpawnPeriodically takes nothing returns nothing
    local unit u= null
    if isSpawning then
        set u=CreateUnit(ATTACK_PLAYER, attackers[wave], spawnFront1Point[1], spawnFront1Point[2], 270)
        call IssuePointOrderById(u, 0xD000F, basePoint[1], basePoint[2])
        call GroupAddUnit(attackerGroup, u)
        set u=CreateUnit(ATTACK_PLAYER, attackers[wave], spawnFront2Point[1], spawnFront2Point[2], 270)
        call IssuePointOrderById(u, 0xD000F, basePoint[1], basePoint[2])
        call GroupAddUnit(attackerGroup, u)
        set u=CreateUnit(ATTACK_PLAYER, attackers[wave], spawnFront3Point[1], spawnFront3Point[2], 270)
        call IssuePointOrderById(u, 0xD000F, basePoint[1], basePoint[2])
        call GroupAddUnit(attackerGroup, u)
        if isSpawnBack then
            set u=CreateUnit(ATTACK_PLAYER, attackers[wave], spawnBackPoint[1], spawnBackPoint[2], 270)
            call IssuePointOrderById(u, 0xD000F, basePoint[1], basePoint[2])
            call GroupAddUnit(attackerGroup, u)
        endif
    endif
    set u=null
endfunction
function executeWaitSpawn takes nothing returns nothing
    call DestroyTimer(GetExpiredTimer())
    call TriggerExecute(waitSpawnTrigger)
endfunction
function nextSpawn takes nothing returns nothing
    local timer t= CreateTimer()
    set wave=wave + 1
    call DestroyTimerDialog(spawnWaitDialog)
    set isSpawning=true
    call TimerStart(t, 150, false, function executeWaitSpawn)
    set t=null
endfunction
function waitSpawn takes nothing returns nothing
    set isSpawning=false
    // 等待下一次进攻
    call TimerStart(spawnWaitTimer, 90, false, function nextSpawn)
    set spawnWaitDialog=CreateTimerDialogBJ(spawnWaitTimer, "邪教下次进攻：")
endfunction
function firstSpawn takes nothing returns nothing
    local timer t= CreateTimer()
    call DestroyTimerDialog(spawnWaitDialog)
    set wave=1
    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cFFDDA0DD西域邪教开始了进攻正派武林，玩家务必要确保正派武林不被摧毁，否则游戏失败|r")
    set isSpawning=true
    call TimerStart(t, 150, false, function executeWaitSpawn)
    set t=null
endfunction
function InitSpawn takes nothing returns nothing
    local timer tm= CreateTimer()
    // 暂定15波进攻怪
    set attackers[1]='e000'
    set attackers[2]='e001'
    set attackers[3]='e002'
    set attackers[4]='e003'
    set attackers[5]='e004'
    set attackers[6]='e005'
    set attackers[7]='e006'
    set attackers[8]='e007'
    set attackers[9]='e008'
    set attackers[10]='e009'
    set attackers[11]='e010'
    set attackers[12]='e011'
    set attackers[13]='e012'
    set attackers[14]='e013'
    set attackers[15]='e014'
    // 初始化出怪点
    set spawnFront1Point[1]=0.0
    set spawnFront1Point[2]=0.0
    set spawnFront2Point[1]=0.0
    set spawnFront2Point[2]=0.0
    set spawnFront3Point[1]=0.0
    set spawnFront3Point[2]=0.0
    set spawnBackPoint[1]=0.0
    set spawnBackPoint[2]=0.0
    set basePoint[1]=0.0
    set basePoint[2]=0.0
    call TimerStart(spawnTimer, 3, true, function doSpawnPeriodically)
    // 第一次刷怪
    call TimerStart(tm, 120, false, function firstSpawn)
    set spawnWaitDialog=CreateTimerDialogBJ(tm, "邪教进攻倒计时")
    call TriggerAddAction(waitSpawnTrigger, function waitSpawn)
    set tm=null
endfunction
// 选择英雄
function canSelectHero takes nothing returns boolean
    return IsUnitInGroup(GetTriggerUnit(), heroGroup) and hasHero[1 + GetPlayerId(GetTriggerPlayer())]
endfunction
// 播放攻击动画
function playAttackAnimation takes unit u returns nothing
	call SetUnitAnimation(u, "attack")
	call YDWEPolledWaitNull(2)
	call ResetUnitAnimation(u)
endfunction
function selectHero takes nothing returns nothing
    local player p= GetTriggerPlayer()
 local integer i= 1 + GetPlayerId(p)
 local unit u= GetTriggerUnit()
    local integer j= 1
    if heroInSelection[i] == null or GetUnitTypeId(heroInSelection[i]) != GetUnitTypeId(u) then
        // 单击查看英雄描述
        set heroInSelection[i]=u
        loop
            exitwhen j > 7
            if u == heroList[j] then
                call DisplayTimedTextToPlayer(p, 0, 0, 15., heroDescription[j])
			    call playAttackAnimation(u)
                return
            endif
            set j=j + 1
        endloop
    else
        // 双击选取英雄
        set hero[i]=CreateUnit(p, GetUnitTypeId(u), heroBornPoint[1], heroBornPoint[2], 270)
        call SelectUnitRemoveForPlayer(u, p)
        call SelectUnitAddForPlayer(hero[i], p)
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("overhead", hero[i], "Abilities\\Spells\\Other\\Awaken\\Awaken.mdl"))
        set hasHero[i]=true
        // TODO 其他选择英雄时的处理
    endif
    set p=null
    set u=null
endfunction
// 初始化英雄选择
function initHeroSelection takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer j= 1
    set heroList[1]=null // gg_unit_hero_1
set heroList[2]=null // gg_unit_hero_2
set heroList[3]=null // gg_unit_hero_3
set heroList[4]=null // gg_unit_hero_4
set heroList[5]=null // gg_unit_hero_5
set heroList[6]=null // gg_unit_hero_6
set heroList[7]=null // gg_unit_hero_7

    set heroDescription[1]="英雄1描述"
    set heroDescription[2]="英雄2描述"
    set heroDescription[3]="英雄3描述"
    set heroDescription[4]="英雄4描述"
    set heroDescription[5]="英雄5描述"
    set heroDescription[6]="英雄6描述"
    set heroDescription[7]="英雄7描述"
    set heroBornPoint[1]=0.0
    set heroBornPoint[2]=0.0
    set j=1
    loop
        exitwhen j > PLAYER_COUNT
        set hasHero[j]=false
        set hero[j]=null
        set heroInSelection[j]=null
        set j=j + 1
    endloop
    set heroGroup=CreateGroup()
    loop
        exitwhen j > 7
        call GroupAddUnit(heroGroup, heroList[j])
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > PLAYER_COUNT
        call TriggerRegisterPlayerSelectionEventBJ(t, Player(j - 1), true)
        set j=j + 1
    endloop
	call TriggerAddCondition(t, Condition(function canSelectHero))
	call TriggerAddAction(t, function selectHero)
    set t=null
endfunction
// 选择门派
function isJoinDenom takes unit u,item it returns boolean
    local integer i= 1
    loop
        exitwhen i > DENOM_NUMBER
        if GetItemTypeId(it) == denomListItem[i] then
            return true
        endif
        set i=i + 1
    endloop
    return false
endfunction
function joinDenom takes unit u,item it returns nothing
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    local integer j= 1
    loop
        exitwhen j > DENOM_NUMBER
        if GetItemTypeId(it) == denomListItem[j] then
            set heroDenom[i]=j
			call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜加入〓" + denomName[j] + "〓，请在NPC郭靖处选择副职|r")
			call SetPlayerName(p, "〓" + denomName[j] + "〓" + LoadStr(YDHT, GetHandleId(p), GetHandleId(p)))
			call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
			call UnitAddAbility(u, LING_BO_WEI_BU)
			// call AddCharacterABuff(udg_hero[i], udg_xinggeA[i])
			// call AddCharacterBBuff(udg_hero[i], udg_xinggeB[i])
			// if udg_vip[i] < 2 and udg_elevenvip[i] < 1 then
			// 	call UnitAddAbility(u, 'A040')
			// 	call UnitAddAbility(u, 'A041')
			// 	call UnitAddAbility(u, 'A042')
			// endif
			// set I7[(((i - 1) * 20) + 8)] = 'A05R'
			// call UnitRemoveAbility(u, 'Avul')
			// set Q4 = GetRandomLocInRect(He)
			// call SetUnitPositionLoc(u, Q4)
			// call PanCameraToTimedLocForPlayer(p, Q4, 0)
			// call createPartnerAndTownPortalDummy(i, Q4)
			// set gengu[i] = (gengu[i] + 3)
			// set jingmai[i] = (jingmai[i] + 2)
			// call RemoveLocation(Q4)
            call UnitAddItemById(u, 'I100')
        endif
        set j=j + 1
    endloop
    set p=null
endfunction
// 初始化门派选择
function initDenomSelection takes nothing returns nothing
    local integer j= 1
    set denomListItem[1]=KUI_HUA_ITEM
    set denomListItem[2]=JU_JING_ITEM
    set denomListItem[3]=TIAN_YING_ITEM
    set denomListItem[4]=QING_LIANG_ITEM
    set denomListItem[5]=FEI_MA_ITEM
    set denomListItem[6]=LU_JIA_ITEM
    set denomListItem[7]=JIN_DAO_ITEM
    set denomListItem[8]=TIAN_DI_ITEM
    set denomName[1]="葵花派"
    set denomFirst[1]='A000'
    set denomSecond[1]='A000'
    set denomThird[1]='A000'
    set denomFourth[1]='A000'
    set denomName[2]="巨鲸帮"
    set denomFirst[2]='A001'
    set denomSecond[2]='A001'
    set denomThird[2]='A001'
    set denomFourth[2]='A001'
    set denomName[3]="天鹰教"
    set denomFirst[3]='A002'
    set denomSecond[3]='A002'
    set denomThird[3]='A002'
    set denomFourth[3]='A002'
    set denomName[4]="清凉寺"
    set denomFirst[4]='A003'
    set denomSecond[4]='A003'
    set denomThird[4]='A003'
    set denomFourth[4]='A003'
    set denomName[5]="飞马镖局"
    set denomFirst[5]='A004'
    set denomSecond[5]='A004'
    set denomThird[5]='A004'
    set denomFourth[5]='A004'
    set denomName[6]="陆家庄"
    set denomFirst[6]='A005'
    set denomSecond[6]='A005'
    set denomThird[6]='A005'
    set denomFourth[6]='A005'
    set denomName[7]="金刀寨"
    set denomFirst[7]='A006'
    set denomSecond[7]='A006'
    set denomThird[7]='A006'
    set denomFourth[7]='A006'
    set denomName[8]="天地会"
    set denomFirst[8]='A007'
    set denomSecond[8]='A007'
    set denomThird[8]='A007'
    set denomFourth[8]='A007'
    loop
        exitwhen j > PLAYER_COUNT
        set heroDenom[j]=0
        call SaveStr(YDHT, GetHandleId(Player(j - 1)), GetHandleId(Player(j - 1)), GetPlayerName(Player(j - 1)))
        set j=j + 1
    endloop
endfunction
// 通用系统

function doApplyGeneralDebuff takes integer buffnum,integer num,unit uc,integer id,integer buffId,integer orderid,unit ut,string s returns nothing
 local unit u
 local player p
 local location loc
	if ( buffnum == num ) then
        if not UnitHasBuffBJ(uc, buffId) then
            set p=GetOwningPlayer(uc)
            set loc=GetUnitLoc(ut)
            call CreateNUnitsAtLoc(1, 'e000', p, loc, bj_UNIT_FACING)
            set u=bj_lastCreatedUnit
            call ShowUnitHide(u)
            call UnitAddAbility(u, id)
            if ( num == 12 or num == 14 ) then
                call IncUnitAbilityLevel(u, id)
            endif
            call IssueTargetOrderById(u, orderid, ut)
            call UnitApplyTimedLife(u, 'BHwe', 2.)
            call CreateTextTagLocBJ(s, loc, 60., 12., 65., 55., 42., 0)
            call YDWETimerDestroyTextTag(3. , bj_lastCreatedTextTag)
            call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100., 90)
            call RemoveLocation(loc)
        endif
	endif
	set loc=null
	set p=null
	set u=null
endfunction
function applyGeneralDebuff takes unit u,unit ut,integer buffnum returns nothing
    call doApplyGeneralDebuff(buffnum , 1 , u , 'A001' , 'B000' , $D008F , ut , "内伤")
    call doApplyGeneralDebuff(buffnum , 2 , u , 'A002' , 'BNso' , $D02BC , ut , "走火入魔")
    call doApplyGeneralDebuff(buffnum , 3 , u , 'A003' , 'B001' , $D022F , ut , "流血")
    call doApplyGeneralDebuff(buffnum , 4 , u , 'A004' , 'Bcri' , $D00DD , ut , "混乱")
    call doApplyGeneralDebuff(buffnum , 5 , u , 'A005' , 'B002' , $D006B , ut , "昏迷")
    call doApplyGeneralDebuff(buffnum , 6 , u , 'A006' , 'B003' , $D006B , ut , "重伤")
    call doApplyGeneralDebuff(buffnum , 7 , u , 'A007' , 'B004' , $D022F , ut , "血流不止")
    call doApplyGeneralDebuff(buffnum , 8 , u , 'A008' , 'BEer' , $D00DE , ut , "麻痹")
    call doApplyGeneralDebuff(buffnum , 9 , u , 'A009' , 'Bfae' , $D00B5 , ut , "破防")
    call doApplyGeneralDebuff(buffnum , 10 , u , 'A00A' , 'Bcrs' , $D00DE , ut , "神经错乱")
    call doApplyGeneralDebuff(buffnum , 11 , u , 'A00B' , 'B005' , $D007F , ut , "封穴")
    call doApplyGeneralDebuff(buffnum , 12 , u , 'A00B' , 'B005' , $D007F , ut , "穴位全封")
	call doApplyGeneralDebuff(buffnum , 13 , u , 'A00C' , 'BEsh' , $D022F , ut , "中毒")
	call doApplyGeneralDebuff(buffnum , 14 , u , 'A00C' , 'B006' , $D022F , ut , "深度中毒")
    call doApplyGeneralDebuff(buffnum , 15 , u , 'A00D' , 'B007' , $D00DE , ut , "致盲")
    call doApplyGeneralDebuff(buffnum , 16 , u , 'A00E' , 'B008' , $D00DE , ut , "虚弱")
    call doApplyGeneralDebuff(buffnum , 17 , u , 'A0EW' , 'B009' , $D007F , ut , "冰冻")
endfunction

function percentDamage takes unit u,real percent,boolean maxFlag returns nothing
    local real hp= 1
    if maxFlag then
        set hp=GetUnitState(u, UNIT_STATE_LIFE) - percent / 100 * GetUnitState(u, UNIT_STATE_MAX_LIFE)
	else
        set hp=GetUnitState(u, UNIT_STATE_LIFE) - percent / 100 * GetUnitState(u, UNIT_STATE_LIFE)
	endif
    if hp < 1 then
        set hp=1
    endif
    call SetWidgetLife(u, hp)
endfunction
// 系统放到最后
function everySecondAction takes nothing returns nothing
    local group g= CreateGroup()
    local unit u= null
    local real x= 0
    local real y= 0
    local real rand= 0
    call GroupEnumUnitsInRect(g, bj_mapInitialPlayableArea, null)
    loop
        set u=FirstOfGroup(g)
        exitwhen u == null
        if IsUnitAliveBJ(u) then
            if UnitHasBuffBJ(u, 'BEsh') then
                // 中毒 每秒扣0.1%生命值
                call percentDamage(u , 0.1 , true)
            endif
            if UnitHasBuffBJ(u, 'B006') then
                // 深度中毒 每秒扣0.3%生命值
                call percentDamage(u , 0.3 , true)
            endif
            if UnitHasBuffBJ(u, 'B001') then
                // 流血 每秒扣0.2%生命值
                call percentDamage(u , 0.2 , true)
            endif
            if UnitHasBuffBJ(u, 'B004') then
                // 血流不止 每秒扣0.4%生命值
                call percentDamage(u , 0.4 , true)
            endif
            if ( ( UnitHasBuffBJ(u, 'Bcri') ) ) then
                // 混乱 随机移动
                set rand=GetRandomReal(0, 360.)
                set x=GetUnitX(u) + 256 * CosBJ(rand)
                set y=GetUnitY(u) + 256 * SinBJ(rand)
                call IssuePointOrderById(u, $D0012, x, y)
            endif
        endif
        call GroupRemoveUnit(g, u)
    endloop
    call DestroyGroup(g)
    set g=null
    set u=null
endfunction
function everySecond takes nothing returns nothing
    call TimerStart(CreateTimer(), 1, true, function everySecondAction)
endfunction
// 单位受到攻击
function UnitAttack_Conditions takes nothing returns boolean
 local unit u= GetAttacker()
 local unit ut= GetTriggerUnit()
 local player p= GetOwningPlayer(u)
 local integer i= 1 + GetPlayerId(p)
	if UnitHasBuffBJ(u, 'B000') then
		// 内伤 攻击时扣除1/1000的气血
		call percentDamage(u , 0.1 , true)
	endif
	if UnitHasBuffBJ(u, 'BNso') then
		// 走火入魔 攻击时扣除3/1000的气血
		call percentDamage(u , 0.3 , true)
	endif
	set u=null
	set ut=null
	set p=null
	return false
endfunction
function UnitAttack takes nothing returns nothing
 local trigger t= CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function UnitAttack_Conditions))
	set t=null
endfunction
//使用技能系统
function UseAbility_Conditions takes nothing returns boolean
 local integer id= GetSpellAbilityId()
 local unit u= GetTriggerUnit()
 local unit ut= GetSpellTargetUnit()
 local player p= GetOwningPlayer(u)
 local integer i= GetPlayerId(p)
	if UnitHasBuffBJ(u, 'Bcrs') then
		// 神经错乱 使用技能时扣除5%气血
		call percentDamage(u , 5 , true)
	endif
 
	set u=null
	set ut=null
	set p=null
	return false
endfunction
//单位使用技能系统
function UseAbility takes nothing returns nothing
 local trigger t= CreateTrigger()
	
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
	call TriggerAddCondition(t, Condition(function UseAbility_Conditions))
	set t=null
endfunction
function UnitDamage_Conditions takes nothing returns boolean
 local unit u= GetEventDamageSource()
 local unit ut= GetTriggerUnit()
 local player p= GetOwningPlayer(u)
 local integer i= 1 + GetPlayerId(p)
 local real damage= GetEventDamage()
 local string damageStr= ""
 local integer j= 1
 local effect eff= null
	if IsUnitAlly(u, Player(0)) and showDamage[i] then
		// 显示伤害
		set damageStr=I2S(R2I(damage) + 1)
		loop
			exitwhen j > StringLength(damageStr)
			set eff=AddSpecialEffect("war3mapImported\\tips_" + SubString(damageStr, j, j) + ".mdx", GetUnitX(u) + 32 * ( j - 1 ), GetUnitY(u))
			call EXSetEffectSize(eff, 1.38)
			call EXSetEffectZ(eff, 80)
			call DestroyEffect(eff)
			set j=j + 1
		endloop
	endif
	set eff=null
	set u=null
	set ut=null
	set p=null
	return false
endfunction
//任意单位伤害事件系统
function UnitDamage takes nothing returns nothing
 local trigger t= CreateTrigger()
 local integer j= 1
	loop
		exitwhen j > PLAYER_COUNT
		set showDamage[j]=false
		set j=j + 1
	endloop
	
	call YDWESyStemAnyUnitDamagedRegistTrigger(t)
	call TriggerAddCondition(t, Condition(function UnitDamage_Conditions))
	set t=null
endfunction
// 任意单位死亡事件
function UnitDeath_Conditions takes nothing returns boolean
 local unit u= GetKillingUnit()
 local unit ut= GetTriggerUnit()
 local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
	
	set u=null
	set ut=null
	return false
endfunction
//任意单位死亡事件系统
function UnitDeath takes nothing returns nothing
 local trigger t= CreateTrigger()
	
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t, Condition(function UnitDeath_Conditions))
	set t=null
endfunction
// 购买物品
function BuyItem_Conditions takes nothing returns boolean
 local unit u= GetBuyingUnit()
 local unit ut= GetSellingUnit()
 local item it= GetSoldItem()
 local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
	
	set it=null
	set u=null
	set ut=null
	return false
endfunction
// 使用物品
function UseItem_Conditions takes nothing returns boolean
 local unit u= GetTriggerUnit()
 local item it= GetManipulatedItem()
 local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
 local integer id= 0
	
	
	set u=null
	set it=null
	return false
endfunction
// 捡起物品
function PickupItem_Conditions takes nothing returns boolean
 local unit u= GetTriggerUnit()
 local item it= GetManipulatedItem()
 local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
	// 加入门派
	if isJoinDenom(u , it) then
		call joinDenom(u , it)
	endif
	
	set u=null
	set it=null
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
 local timer t= GetExpiredTimer()
 local item it= LoadItemHandle(YDHT, GetHandleId(t), 0)
	
	call SetWidgetLife(it, 1)
	call RemoveItem(it)
	call FlushChildHashtable(YDHT, GetHandleId(t))
	call PauseTimer(t)
	call DestroyTimer(t)
	set t=null
	set it=null
endfunction
function removeDeadItem takes nothing returns nothing
 local timer t= CreateTimer()
	call SaveItemHandle(YDHT, GetHandleId(t), 0, GetManipulatedItem())
	call TimerStart(t, 0, false, function removeDeadItem_1)
	set t=null
endfunction
//任意单位购买物品系统
function ItemEvent takes nothing returns nothing
 local trigger t= CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	call TriggerAddCondition(t, Condition(function BuyItem_Conditions))
	
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
	call TriggerAddCondition(t, Condition(function UseItem_Conditions))
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	call TriggerAddCondition(t, Condition(function PickupItem_Conditions))
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
	call TriggerAddCondition(t, Condition(function isDeadItem))
	call TriggerAddAction(t, function removeDeadItem)
	set t=null
endfunction
function initSelfDefinedGlobals takes nothing returns nothing
 local integer i= 1
	loop
		exitwhen i > PLAYER_COUNT
		set intellect[i]=0
		set strength[i]=0
		set luck[i]=0
		set medical[i]=0
		set i=i + 1
	endloop
endfunction
// 入口函数
function mapInit takes nothing returns nothing
	call initSelfDefinedGlobals() // 初始化全局变量
call InitSpawn() // 初始化刷怪系统
call initHeroSelection() // 初始化英雄选择系统
call initDenomSelection() // 初始化门派选择

	call TimerStart(CreateTimer(), 1, true, function everySecondAction) // 每秒钟调用一次 // INLINED!!
call UnitAttack() // 注册单位攻击事件
call UseAbility() // 注册使用技能事件
call UnitDamage() // 注册任意单位伤害事件
call UnitDeath() // 注册任意单位死亡事件
call ItemEvent() // 注册物品相关事件
endfunction
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************
//===========================================================================
// Trigger: firstOccur
//===========================================================================
function Trig_firstOccurActions takes nothing returns nothing
endfunction
//===========================================================================
function InitTrig_firstOccur takes nothing returns nothing
    set gg_trg_firstOccur=CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger(gg_trg_firstOccur)
    call TriggerAddAction(gg_trg_firstOccur, function Trig_firstOccurActions)
endfunction
//===========================================================================
// Trigger: firstOccur-2
//===========================================================================
function Trig_firstOccur_2Actions takes nothing returns nothing
    call EXSetEffectSize(bj_lastCreatedEffect, 1)
    call EXSetEffectZ(bj_lastCreatedEffect, 0)
    call YDWETimerDestroyTextTag(2 , GetLastCreatedTextTag())
    call YDWEPolledWaitNull(2)
endfunction
//===========================================================================
function InitTrig_firstOccur_2 takes nothing returns nothing
    set gg_trg_firstOccur_2=CreateTrigger()
    call TriggerAddAction(gg_trg_firstOccur_2, function Trig_firstOccur_2Actions)
endfunction
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_firstOccur()
    call InitTrig_firstOccur_2()
endfunction
//***************************************************************************
//*
//*  Players
//*
//***************************************************************************
function InitCustomPlayerSlots takes nothing returns nothing
    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), true)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(2), true)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)
    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(3), true)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)
    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(4), true)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)
    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(5), true)
    call SetPlayerController(Player(5), MAP_CONTROL_COMPUTER)
    // Player 6
    call SetPlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(6), true)
    call SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)
    // Player 7
    call SetPlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(7), true)
    call SetPlayerController(Player(7), MAP_CONTROL_COMPUTER)
endfunction
function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_009
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(4), 0)
    call SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(5), 0)
    call SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
    // Force: TRIGSTR_010
    call SetPlayerTeam(Player(6), 1)
    call SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(7), 1)
    call SetPlayerState(Player(7), PLAYER_STATE_ALLIED_VICTORY, 1)
    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 4)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 4)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(2, 4)
    call SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(3, 4)
    call SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(4, 4)
    call SetStartLocPrio(4, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 3, 3, MAP_LOC_PRIO_HIGH)
endfunction
//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************
//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("SunkenRuinsDay")
    call SetAmbientNightSound("SunkenRuinsNight")
    call SetMapMusic("Music", true, 0)
    call InitBlizzard()

call ExecuteFunc("YDTriggerSaveLoadSystem__Init")
call ExecuteFunc("YDWETimerSystem__Init")

    call InitGlobals()
    call InitCustomTriggers()
endfunction
//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************
function config takes nothing returns nothing
    call SetMapName("小人物的江湖")
    call SetMapDescription("没有说明")
    call SetPlayers(8)
    call SetTeams(8)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, - 7488.0, - 12800.0)
    call DefineStartLocation(1, - 1792.0, 12160.0)
    call DefineStartLocation(2, 2368.0, 8320.0)
    call DefineStartLocation(3, - 12672.0, 4608.0)
    call DefineStartLocation(4, - 11904.0, 14016.0)
    call DefineStartLocation(5, - 2304.0, - 10240.0)
    call DefineStartLocation(6, 7808.0, 14016.0)
    call DefineStartLocation(7, 4800.0, - 3712.0)
    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction
//===========================================================================
//ϵͳ-TimerSystem
//===========================================================================
//===========================================================================  
//===========================================================================  
//�Զ����¼� 
//===========================================================================
//===========================================================================   




//Struct method generated initializers/callers:

