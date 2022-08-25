globals
//globals from BzAPI:
constant boolean LIBRARY_BzAPI=true
//endglobals from BzAPI
//globals from FrameLibrary:
constant boolean LIBRARY_FrameLibrary=true
//endglobals from FrameLibrary
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
trigger gg_trg_0_01___u= null
trigger gg_trg_firstOccur= null
trigger gg_trg_firstOccur_2= null
unit gg_unit_O105_0333= null
unit gg_unit_O104_0334= null
unit gg_unit_O100_0335= null
unit gg_unit_O103_0336= null
unit gg_unit_O102_0337= null
unit gg_unit_O101_0338= null
unit gg_unit_O106_0339= null
constant integer FRAME_ID= - 29734415
integer GUI
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

real array newbeeVillagePoint
hashtable TASK_HT= InitHashtable()
hashtable TASK_COUNTER_HT= InitHashtable()
    // 护送类任务
constant integer PROTECT_TASK_OFFSET= $F000000
integer protectTaskId= 0
integer array protectTaskItemId
integer array protectTaskUnitId
real array protectStartX
real array protectStartY
rect array protectTargetRect
region array protectTargetRegion
string array protectTaskHint
    // 杀怪类任务
constant integer KILL_TASK_OFFSET= $F100000
integer killTaskId= 0
integer array killTaskItemId
integer array killTaskUnitId
integer array killCount
boolean array killTaskRepeatable
string array killTaskHint
rect array killHintRect

    // 收集类任务
constant integer COLLECT_TASK_OFFSET= $F200000
integer collectTaskId= 0
integer array collectTaskItemId
integer array collectTaskTargetItemId
boolean array collectTaskRepeatable
string array collectTaskHint
rect array collectNpcRect
    // 拜访类任务
constant integer VISIT_TASK_OFFSET= $F300000
integer visitTaskId= 0
integer array visitTaskItemId
rect array visitTargetNpcRect
boolean array visitTaskRepeatable
string array visitTaskHint
    // 常量
constant integer STATUS_INIT= 0
constant integer STATUS_DOING= 1
constant integer STATUS_FINISH= 2
//===============najitest===============
integer unitnumber_lh=0
integer createdunitnumber_lh=0
string StringList_naji
string array Sdummy_naji
trigger array Ttest_naji
player Ptest_naji
integer Ihandle_naji
integer Ibm_naji
integer Itrigger_naji
integer Iquest_naji
integer Iweather_naji
boolean Bfog_naji
boolean Bpause_naji
boolean Bxy_naji
boolean Bid_naji
boolean Bir_naji
boolean array Bcamera_naji
boolean Bpn_naji
boolean Bddm_naji
dialog array Dnaji_naji
button array Button_naji
real Rhandle_naji
real Rdummy_naji
real array Rcamera_naji
region Rworld_naji
group array Gcd_naji
group Guw_naji
group Gms_naji
quest array Q_naji
timer Tcamera_naji
texttag array Tbm_naji
weathereffect array Weather_naji
	//===============najitest===============
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
	// 声望，用于历练和兑换物品
integer array reputation
	// 英雄命中率，用于计算攻击是否命中
integer array hitRate
	// 额外伤害（ED），来自于武器的伤害加成
real array weaponExtraDamage
	// 额外伤害（ED），来自于非武器的伤害加成
real array extraDamage
	// 暴击率，用于计算暴击伤害
real array critRate
	// 暴击倍数，用于计算暴击伤害
real array critMultiple
constant integer LING_BO_WEI_BU= 'A000'
	// 是否测试版本
constant boolean TEST_VERSION= false
	// 是否测试用户
boolean array isTestPlayer
	// 声音
sound hintSound= null
sound warningSound= null
sound questCompletedSound= null

trigger l__library_init

//JASSHelper struct globals:
constant integer si__Frame=1
integer si__Frame_F=0
integer si__Frame_I=0
integer array si__Frame_V
hashtable s__Frame_HT= InitHashtable()
integer s__Frame_num= 0
integer array s__Frame_id
boolean array s__Frame_isShow
boolean array s__Frame_isEnable
boolean array s__Frame_hover
trigger st__Frame_onDestroy
integer f__arg_this

endglobals
    native DzGetMouseTerrainX takes nothing returns real
    native DzGetMouseTerrainY takes nothing returns real
    native DzGetMouseTerrainZ takes nothing returns real
    native DzIsMouseOverUI takes nothing returns boolean
    native DzGetMouseX takes nothing returns integer
    native DzGetMouseY takes nothing returns integer
    native DzGetMouseXRelative takes nothing returns integer
    native DzGetMouseYRelative takes nothing returns integer
    native DzSetMousePos takes integer x, integer y returns nothing
    native DzTriggerRegisterMouseEvent takes trigger trig, integer btn, integer status, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseEventByCode takes trigger trig, integer btn, integer status, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterKeyEvent takes trigger trig, integer key, integer status, boolean sync, string func returns nothing
    native DzTriggerRegisterKeyEventByCode takes trigger trig, integer key, integer status, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterMouseWheelEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseWheelEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterMouseMoveEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseMoveEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzGetTriggerKey takes nothing returns integer
    native DzGetWheelDelta takes nothing returns integer
    native DzIsKeyDown takes integer iKey returns boolean
    native DzGetTriggerKeyPlayer takes nothing returns player
    native DzGetWindowWidth takes nothing returns integer
    native DzGetWindowHeight takes nothing returns integer
    native DzGetWindowX takes nothing returns integer
    native DzGetWindowY takes nothing returns integer
    native DzTriggerRegisterWindowResizeEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterWindowResizeEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzIsWindowActive takes nothing returns boolean
    native DzDestructablePosition takes destructable d, real x, real y returns nothing
    native DzSetUnitPosition takes unit whichUnit, real x, real y returns nothing
    native DzExecuteFunc takes string funcName returns nothing
    native DzGetUnitUnderMouse takes nothing returns unit
    native DzSetUnitTexture takes unit whichUnit, string path, integer texId returns nothing
    native DzSetMemory takes integer address, real value returns nothing
    native DzSetUnitID takes unit whichUnit, integer id returns nothing
    native DzSetUnitModel takes unit whichUnit, string path returns nothing
    native DzSetWar3MapMap takes string map returns nothing
    native DzGetLocale takes nothing returns string
    native DzGetUnitNeededXP takes unit whichUnit, integer level returns integer
    native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing
    native DzSyncData takes string prefix, string data returns nothing
    native DzGetTriggerSyncData takes nothing returns string
    native DzGetTriggerSyncPlayer takes nothing returns player
    native DzFrameHideInterface takes nothing returns nothing
    native DzFrameEditBlackBorders takes real upperHeight, real bottomHeight returns nothing
    native DzFrameGetPortrait takes nothing returns integer
    native DzFrameGetMinimap takes nothing returns integer
    native DzFrameGetCommandBarButton takes integer row, integer column returns integer
    native DzFrameGetHeroBarButton takes integer buttonId returns integer
    native DzFrameGetHeroHPBar takes integer buttonId returns integer
    native DzFrameGetHeroManaBar takes integer buttonId returns integer
    native DzFrameGetItemBarButton takes integer buttonId returns integer
    native DzFrameGetMinimapButton takes integer buttonId returns integer
    native DzFrameGetUpperButtonBarButton takes integer buttonId returns integer
    native DzFrameGetTooltip takes nothing returns integer
    native DzFrameGetChatMessage takes nothing returns integer
    native DzFrameGetUnitMessage takes nothing returns integer
    native DzFrameGetTopMessage takes nothing returns integer
    native DzGetColor takes integer r, integer g, integer b, integer a returns integer
    native DzFrameSetUpdateCallback takes string func returns nothing
    native DzFrameSetUpdateCallbackByCode takes code funcHandle returns nothing
    native DzFrameShow takes integer frame, boolean enable returns nothing
    native DzCreateFrame takes string frame, integer parent, integer id returns integer
    native DzCreateSimpleFrame takes string frame, integer parent, integer id returns integer
    native DzDestroyFrame takes integer frame returns nothing
    native DzLoadToc takes string fileName returns nothing
    native DzFrameSetPoint takes integer frame, integer point, integer relativeFrame, integer relativePoint, real x, real y returns nothing
    native DzFrameSetAbsolutePoint takes integer frame, integer point, real x, real y returns nothing
    native DzFrameClearAllPoints takes integer frame returns nothing
    native DzFrameSetEnable takes integer name, boolean enable returns nothing
    native DzFrameSetScript takes integer frame, integer eventId, string func, boolean sync returns nothing
    native DzFrameSetScriptByCode takes integer frame, integer eventId, code funcHandle, boolean sync returns nothing
    native DzGetTriggerUIEventPlayer takes nothing returns player
    native DzGetTriggerUIEventFrame takes nothing returns integer
    native DzFrameFindByName takes string name, integer id returns integer
    native DzSimpleFrameFindByName takes string name, integer id returns integer
    native DzSimpleFontStringFindByName takes string name, integer id returns integer
    native DzSimpleTextureFindByName takes string name, integer id returns integer
    native DzGetGameUI takes nothing returns integer
    native DzClickFrame takes integer frame returns nothing
    native DzSetCustomFovFix takes real value returns nothing
    native DzEnableWideScreen takes boolean enable returns nothing
    native DzFrameSetText takes integer frame, string text returns nothing
    native DzFrameGetText takes integer frame returns string
    native DzFrameSetTextSizeLimit takes integer frame, integer size returns nothing
    native DzFrameGetTextSizeLimit takes integer frame returns integer
    native DzFrameSetTextColor takes integer frame, integer color returns nothing
    native DzGetMouseFocus takes nothing returns integer
    native DzFrameSetAllPoints takes integer frame, integer relativeFrame returns boolean
    native DzFrameSetFocus takes integer frame, boolean enable returns boolean
    native DzFrameSetModel takes integer frame, string modelFile, integer modelType, integer flag returns nothing
    native DzFrameGetEnable takes integer frame returns boolean
    native DzFrameSetAlpha takes integer frame, integer alpha returns nothing
    native DzFrameGetAlpha takes integer frame returns integer
    native DzFrameSetAnimate takes integer frame, integer animId, boolean autocast returns nothing
    native DzFrameSetAnimateOffset takes integer frame, real offset returns nothing
    native DzFrameSetTexture takes integer frame, string texture, integer flag returns nothing
    native DzFrameSetScale takes integer frame, real scale returns nothing
    native DzFrameSetTooltip takes integer frame, integer tooltip returns nothing
    native DzFrameCageMouse takes integer frame, boolean enable returns nothing
    native DzFrameGetValue takes integer frame returns real
    native DzFrameSetMinMaxValue takes integer frame, real minValue, real maxValue returns nothing
    native DzFrameSetStepValue takes integer frame, real step returns nothing
    native DzFrameSetValue takes integer frame, real value returns nothing
    native DzFrameSetSize takes integer frame, real w, real h returns nothing
    native DzCreateFrameByTagName takes string frameType, string name, integer parent, string template, integer id returns integer
    native DzFrameSetVertexColor takes integer frame, integer color returns nothing
    native DzOriginalUIAutoResetPoint takes boolean enable returns nothing
    native DzFrameSetPriority takes integer frame, integer priority returns nothing
    native DzFrameSetParent takes integer frame, integer parent returns nothing
    native DzFrameGetHeight takes integer frame returns real
    native DzFrameSetFont takes integer frame, string fileName, real height, integer flag returns nothing
    native DzFrameGetParent takes integer frame returns integer
    native DzFrameSetTextAlignment takes integer frame, integer align returns nothing
    native DzFrameGetName takes integer frame returns string
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
native DzAPI_Map_SaveServerValue takes player whichPlayer, string key, string value returns boolean
native DzAPI_Map_GetServerValue takes player whichPlayer, string key returns string
native DzAPI_Map_Ladder_SetStat takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_IsRPGLadder takes nothing returns boolean
native DzAPI_Map_GetGameStartTime takes nothing returns integer
native DzAPI_Map_Stat_SetStat takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetMatchType takes nothing returns integer
native DzAPI_Map_Ladder_SetPlayerStat takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetServerValueErrorCode takes player whichPlayer returns integer
native DzAPI_Map_GetLadderLevel takes player whichPlayer returns integer
native DzAPI_Map_IsRedVIP takes player whichPlayer returns boolean
native DzAPI_Map_IsBlueVIP takes player whichPlayer returns boolean
native DzAPI_Map_GetLadderRank takes player whichPlayer returns integer
native DzAPI_Map_GetMapLevelRank takes player whichPlayer returns integer
native DzAPI_Map_GetGuildName takes player whichPlayer returns string
native DzAPI_Map_GetGuildRole takes player whichPlayer returns integer
native DzAPI_Map_IsRPGLobby takes nothing returns boolean
native DzAPI_Map_GetMapLevel takes player whichPlayer returns integer
native DzAPI_Map_MissionComplete takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetActivityData takes nothing returns string
native DzAPI_Map_GetMapConfig takes string key returns string
native DzAPI_Map_HasMallItem takes player whichPlayer, string key returns boolean
native DzAPI_Map_SavePublicArchive takes player whichPlayer, string key, string value returns boolean
native DzAPI_Map_GetPublicArchive takes player whichPlayer, string key returns string
native DzAPI_Map_UseConsumablesItem takes player whichPlayer, string key returns nothing
native DzAPI_Map_OrpgTrigger takes player whichPlayer, string key returns nothing
native DzAPI_Map_GetServerArchiveDrop takes player whichPlayer, string key returns string
native DzAPI_Map_GetServerArchiveEquip takes player whichPlayer, string key returns integer
native RequestExtraIntegerData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns integer
native RequestExtraBooleanData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns boolean
native RequestExtraStringData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns string
native RequestExtraRealData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns real
native DzAPI_Map_GetPlatformVIP takes player whichPlayer returns integer
native EXGetUnitAbility takes unit u, integer abilcode returns ability
native EXGetUnitAbilityByIndex takes unit u, integer index returns ability
native EXGetAbilityId takes ability abil returns integer
native EXGetAbilityState takes ability abil, integer state_type returns real
native EXSetAbilityState takes ability abil, integer state_type, real value returns boolean
native EXGetAbilityDataReal takes ability abil, integer level, integer data_type returns real
native EXSetAbilityDataReal takes ability abil, integer level, integer data_type, real value returns boolean
native EXGetAbilityDataInteger takes ability abil, integer level, integer data_type returns integer
native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer value returns boolean
native EXGetAbilityDataString takes ability abil, integer level, integer data_type returns string
native EXSetAbilityDataString takes ability abil, integer level, integer data_type, string value returns boolean
native EXSetAbilityAEmeDataA takes ability abil, integer unitid returns boolean
native EXGetItemDataString takes integer itemcode, integer data_type returns string
native EXSetItemDataString takes integer itemcode, integer data_type, string value returns boolean
native EXGetEventDamageData takes integer edd_type returns integer
native EXSetEventDamage takes real amount returns boolean
native EXExecuteScript takes string script returns string


//Generated method caller for Frame.onDestroy
function sc__Frame_onDestroy takes integer this returns nothing
            if s__Frame_id[this] != 0 then
                call DzDestroyFrame(s__Frame_id[this])
            endif
            set s__Frame_id[this]=0
endfunction

//Generated allocator of Frame
function s__Frame__allocate takes nothing returns integer
 local integer this=si__Frame_F
    if (this!=0) then
        set si__Frame_F=si__Frame_V[this]
    else
        set si__Frame_I=si__Frame_I+1
        set this=si__Frame_I
    endif
    if (this>8190) then
        return 0
    endif

   set s__Frame_id[this]= 0
   set s__Frame_isShow[this]= true
   set s__Frame_isEnable[this]= true
   set s__Frame_hover[this]= false
    set si__Frame_V[this]=-1
 return this
endfunction

//Generated destructor of Frame
function sc__Frame_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Frame_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__Frame_onDestroy)
    set si__Frame_V[this]=si__Frame_F
    set si__Frame_F=this
endfunction

//library BzAPI:
    //hardware




























    //plus











    //sync




    //gui








































































    function DzTriggerRegisterMouseEventTrg takes trigger trg,integer status,integer btn returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseEvent(trg, btn, status, true, null)
    endfunction
    function DzTriggerRegisterKeyEventTrg takes trigger trg,integer status,integer btn returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterKeyEvent(trg, btn, status, true, null)
    endfunction
    function DzTriggerRegisterMouseMoveEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseMoveEvent(trg, true, null)
    endfunction
    function DzTriggerRegisterMouseWheelEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseWheelEvent(trg, true, null)
    endfunction
    function DzTriggerRegisterWindowResizeEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterWindowResizeEvent(trg, true, null)
    endfunction
    function DzF2I takes integer i returns integer
        return i
    endfunction
    function DzI2F takes integer i returns integer
        return i
    endfunction
    function DzK2I takes integer i returns integer
        return i
    endfunction
    function DzI2K takes integer i returns integer
        return i
    endfunction
 function DzTriggerRegisterMallItemSyncData takes trigger trig returns nothing
		call DzTriggerRegisterSyncData(trig, "DZMIA", true)
	endfunction
  function DzGetTriggerMallItemPlayer takes nothing returns player
		return DzGetTriggerSyncPlayer()
	endfunction
  function DzGetTriggerMallItem takes nothing returns string
		return DzGetTriggerSyncData()
	endfunction

//library BzAPI ends
//library FrameLibrary:
        function s__Frame_numadd takes integer this returns nothing
            set s__Frame_num=s__Frame_num + 1
        endfunction
        function s__Frame_getFrame takes integer id returns integer
            local integer f= LoadInteger(s__Frame_HT, FRAME_ID, id)
            if f == 0 then
                set f=s__Frame__allocate()
                set s__Frame_id[f]=id
                call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            endif
            return f
        endfunction
        function s__Frame_new takes string name,integer parent returns integer
            local integer f= s__Frame__allocate()
            set s__Frame_id[f]=DzCreateFrame(name, s__Frame_id[parent], 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newImage0 takes integer parent returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BACKDROP", "Frame_Image" + I2S(s__Frame_num), s__Frame_id[parent], "ImageTemplate", 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newImage1 takes integer parent,string path,real w,real h returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BACKDROP", "Frame_Image" + I2S(s__Frame_num), s__Frame_id[parent], "ImageTemplate", 0)
            if path != null then
                call DzFrameSetTexture(s__Frame_id[f], path, 0)
            endif
            call DzFrameSetSize(s__Frame_id[f], w, h)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newSprite takes integer parent,string path returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("SPRITE", "Frame_Sprite" + I2S(s__Frame_num), s__Frame_id[parent], "sprite", 0)
            call DzFrameSetModel(s__Frame_id[f], path, 0, 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newTips takes integer parent,string path,real w,real h returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BACKDROP", "Frame_Image" + I2S(s__Frame_num), s__Frame_id[parent], path, 0)
            call DzFrameSetSize(s__Frame_id[f], w, h)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newText0 takes integer parent,string ff returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("TEXT", "Frame_Text" + I2S(s__Frame_num), s__Frame_id[parent], ff, 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newText1 takes integer parent,string str,string ff returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("TEXT", "Frame_Text" + I2S(s__Frame_num), s__Frame_id[parent], ff, 0)
            call DzFrameSetText(s__Frame_id[f], str)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newTextButton takes integer parent returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("GLUETEXTBUTTON", "Frame_Button" + I2S(s__Frame_num), s__Frame_id[parent], "template", 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newButton0 takes integer parent returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON", "Frame_Button" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplate", 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newButton1 takes integer parent,real w,real h returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON", "Frame_Button" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplate", 0)
            call DzFrameSetSize(s__Frame_id[f], w, h)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newButtonEmpty0 takes integer parent returns integer
             local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplateEmpty", 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newButtonEmpty1 takes integer parent,real w,real h returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplateEmpty", 0)
            call DzFrameSetSize(s__Frame_id[f], w, h)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newCloseButton takes integer parent returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" + I2S(s__Frame_num), s__Frame_id[parent], "icon1", 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_setScale takes integer this,real r returns nothing
            call DzFrameSetScale(s__Frame_id[this], r)
        endfunction
        function s__Frame_setColor takes integer this,integer c returns nothing
            call DzFrameSetTextColor(s__Frame_id[this], c)
        endfunction
        function s__Frame_setSize takes integer this,real w,real h returns nothing
            call DzFrameSetSize(s__Frame_id[this], w, h)
        endfunction
        function s__Frame_setTexture takes integer this,string path returns nothing
            call DzFrameSetTexture(s__Frame_id[this], path, 0)
        endfunction
        function s__Frame_setText takes integer this,string str returns nothing
            call DzFrameSetText(s__Frame_id[this], str)
        endfunction
        function s__Frame_setPoint takes integer this,integer a,integer tar,integer b,real x,real y returns nothing
            call DzFrameSetPoint(s__Frame_id[this], a, s__Frame_id[tar], b, x, y)
        endfunction
        function s__Frame_setColor255 takes integer this,integer r,integer g,integer b returns nothing
            call DzFrameSetTextColor(s__Frame_id[this], DzGetColor(255, r, g, b))
        endfunction
        function s__Frame_setAllPoints takes integer this,integer tar returns nothing
            call DzFrameSetAllPoints(s__Frame_id[this], s__Frame_id[tar])
        endfunction
        function s__Frame_clearAllPoints takes integer this returns nothing
            call DzFrameClearAllPoints(s__Frame_id[this])
        endfunction
        function s__Frame_regEvent takes integer this,integer i,code func returns nothing
            call DzFrameSetScriptByCode(s__Frame_id[this], i, func, false)
        endfunction
        function s__Frame_regWheelEvent takes integer this,code func returns nothing
            call DzFrameSetScriptByCode(s__Frame_id[this], 6, func, false)
        endfunction
        function s__Frame_regClickEvent takes integer this,code func returns nothing
            call DzFrameSetScriptByCode(s__Frame_id[this], 1, func, false)
        endfunction
        function s__Frame_hide takes integer this returns nothing
            call DzFrameShow(s__Frame_id[this], false)
            set s__Frame_isShow[this]=false
        endfunction
        function s__Frame_show takes integer this returns nothing
            call DzFrameShow(s__Frame_id[this], true)
            set s__Frame_isShow[this]=true
        endfunction
        function s__Frame_toggle takes integer this returns nothing
            if s__Frame_isShow[this] then
                call DzFrameShow(s__Frame_id[this], false)
                set s__Frame_isShow[this]=false
            else
                call DzFrameShow(s__Frame_id[this], true)
                set s__Frame_isShow[this]=true
            endif
        endfunction
        function s__Frame_toggerHover takes integer this,string path0,string path1 returns nothing
            if s__Frame_hover[this] then
                set s__Frame_hover[this]=false
                call DzFrameSetTexture(s__Frame_id[this], path0, 0)
            else
                set s__Frame_hover[this]=true
                call DzFrameSetTexture(s__Frame_id[this], path1, 0)
            endif
        endfunction
        function s__Frame_enable takes integer this returns nothing
            call DzFrameSetEnable(s__Frame_id[this], true)
            set s__Frame_isEnable[this]=true
        endfunction
        function s__Frame_disable takes integer this returns nothing
            call DzFrameSetEnable(s__Frame_id[this], false)
            set s__Frame_isEnable[this]=false
        endfunction
        function s__Frame_setAlpha takes integer this,integer a returns nothing
            call DzFrameSetAlpha(s__Frame_id[this], a)
        endfunction
        function s__Frame_onDestroy takes integer this returns nothing
            if s__Frame_id[this] != 0 then
                call DzDestroyFrame(s__Frame_id[this])
            endif
            set s__Frame_id[this]=0
        endfunction

//Generated destructor of Frame
function s__Frame_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Frame_V[this]!=-1) then
        return
    endif
    call s__Frame_onDestroy(this)
    set si__Frame_V[this]=si__Frame_F
    set si__Frame_F=this
endfunction
    function FrameLibrary___init takes nothing returns nothing
        local integer f= DzFrameGetTooltip()
        local real size= 0.75
        set GUI=s__Frame_getFrame(DzGetGameUI())
        //call openBoardButton.setText("任务")
        //call DzFrameClearAllPoints(f)
        //call DzFrameSetPoint(f, 7, DzGetGameUI(), 7, 0, .14)
    endfunction

//library FrameLibrary ends
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
//   Date: Thu Aug 25 14:36:05 2022
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
//*  Unit Creation
//*
//***************************************************************************
//===========================================================================
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'o00I', 2496.0, 2240.0, 270.000)
endfunction
//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'n00U', - 6514.1, - 9324.1, 53.912)
endfunction
//===========================================================================
function CreateUnitsForPlayer5 takes nothing returns nothing
    local player p= Player(5)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'n016', - 2125.7, 7264.0, 314.526)
endfunction
//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'n000', 14506.8, - 5058.5, 172.220)
    set u=CreateUnit(p, 'n001', 13430.0, - 5333.0, 128.025)
    set u=CreateUnit(p, 'n003', 13699.2, - 3518.8, 251.430)
    set u=CreateUnit(p, 'n005', 12463.7, - 3348.4, 279.753)
    set u=CreateUnit(p, 'n006', 11635.3, - 3344.8, 265.985)
    set u=CreateUnit(p, 'n002', 14352.1, - 4106.8, 198.566)
    set u=CreateUnit(p, 'n004', 12017.4, - 5192.8, 76.236)
    set u=CreateUnit(p, 'n00I', 13517.3, - 8042.7, 285.000)
    set u=CreateUnit(p, 'n00L', 12811.9, - 1607.6, 23.170)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00N', - 13841.2, - 3874.3, 245.629)
    set u=CreateUnit(p, 'n00M', 12531.6, - 744.4, 240.420)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00K', 8444.0, - 10950.9, 123.545)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 13575.1, - 1287.3, 262.933)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 13812.0, - 1456.6, 197.661)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 14148.8, - 1231.2, 171.304)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 14098.6, - 808.8, 293.366)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 13752.2, - 385.3, 340.268)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 13651.3, 61.9, 89.651)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 11758.9, 196.1, 314.702)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 11725.6, - 160.7, 65.096)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 13901.4, 806.5, 344.839)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 14211.1, 1150.3, 252.761)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 13370.2, 1522.9, 289.663)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 13310.0, 1137.1, 108.515)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 12441.1, 1810.9, 57.449)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 12443.1, 1339.7, 131.016)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 11432.1, 1605.0, 313.779)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 11603.1, 1163.7, 80.796)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 14471.7, - 485.1, 293.366)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00B', 14461.0, 170.6, 293.366)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00J', 8124.8, - 12840.5, 246.325)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 9948.3, - 11969.5, 217.031)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 10392.4, - 12009.9, 0.077)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 10162.3, - 11087.4, 262.340)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 10619.1, - 11235.6, 241.278)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 10294.9, - 10136.6, 245.640)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 10703.4, - 10240.2, 46.474)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 9771.4, - 9059.5, 297.354)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 9801.3, - 9339.2, 251.869)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 8951.9, - 8982.4, 171.139)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 8932.3, - 9381.6, 43.551)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 9081.3, - 13226.6, 314.856)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 9121.3, - 13579.6, 58.383)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 9482.6, - 13435.3, 314.175)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 9643.9, - 12853.2, 302.983)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 9970.6, - 13406.9, 139.423)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 7930.9, - 13401.8, 297.574)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 7703.2, - 13527.0, 163.668)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 6306.2, - 12677.8, 342.015)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 6008.0, - 12537.5, 186.872)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 5936.5, - 11731.3, 11.206)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 6352.5, - 11843.0, 113.910)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 6328.1, - 10780.4, 264.086)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 6770.7, - 10987.1, 61.899)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00A', 10224.4, - 13029.5, 139.423)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n00F', - 2349.7, - 12856.5, 230.346)
    set u=CreateUnit(p, 'n00F', - 2053.5, - 12629.3, 149.814)
    set u=CreateUnit(p, 'n00F', - 1691.8, - 12699.3, 260.120)
    set u=CreateUnit(p, 'n00F', - 1593.1, - 12967.8, 37.992)
    set u=CreateUnit(p, 'n00F', - 1863.8, - 13026.8, 155.901)
    set u=CreateUnit(p, 'n00F', - 1818.7, - 12835.8, 271.261)
    set u=CreateUnit(p, 'n00F', - 2256.9, - 13070.2, 31.609)
    set u=CreateUnit(p, 'n00F', - 1663.2, - 13198.7, 316.196)
    set u=CreateUnit(p, 'n00F', - 2414.2, - 13248.1, 273.996)
    set u=CreateUnit(p, 'n00F', - 1894.5, - 13285.6, 246.673)
    set u=CreateUnit(p, 'n00F', - 2490.4, - 11431.0, 230.346)
    set u=CreateUnit(p, 'n00F', - 2394.9, - 11349.5, 149.814)
    set u=CreateUnit(p, 'n00F', - 2033.2, - 11419.5, 260.120)
    set u=CreateUnit(p, 'n00F', - 1934.5, - 11687.9, 37.992)
    set u=CreateUnit(p, 'n00F', - 2205.1, - 11746.9, 155.901)
    set u=CreateUnit(p, 'n00F', - 2160.1, - 11555.9, 271.261)
    set u=CreateUnit(p, 'n00F', - 2368.3, - 11862.4, 31.609)
    set u=CreateUnit(p, 'n00F', - 2004.6, - 11918.8, 316.196)
    set u=CreateUnit(p, 'n00F', - 2468.0, - 11974.4, 273.996)
    set u=CreateUnit(p, 'n00F', - 2290.8, - 12009.4, 246.673)
    set u=CreateUnit(p, 'n00F', - 3540.3, - 10138.8, 230.346)
    set u=CreateUnit(p, 'n00F', - 3444.7, - 10057.2, 149.814)
    set u=CreateUnit(p, 'n00F', - 3083.0, - 10127.2, 260.120)
    set u=CreateUnit(p, 'n00F', - 2984.4, - 10395.7, 37.992)
    set u=CreateUnit(p, 'n00F', - 3255.0, - 10454.7, 155.901)
    set u=CreateUnit(p, 'n00F', - 3209.9, - 10263.7, 271.261)
    set u=CreateUnit(p, 'n00F', - 3062.6, - 13121.8, 316.196)
    set u=CreateUnit(p, 'n00F', - 3086.0, - 12831.8, 271.261)
    set u=CreateUnit(p, 'n00F', - 3263.2, - 12949.9, 155.901)
    set u=CreateUnit(p, 'n00F', - 2790.5, - 12977.1, 37.992)
    set u=CreateUnit(p, 'n00F', - 3091.2, - 12622.5, 260.120)
    set u=CreateUnit(p, 'n00F', - 3452.9, - 12552.4, 149.814)
    set u=CreateUnit(p, 'n00F', - 3548.5, - 12634.0, 230.346)
    set u=CreateUnit(p, 'n00F', - 3375.0, - 12189.9, 293.619)
    set u=CreateUnit(p, 'n00F', - 414.7, - 12611.4, 316.196)
    set u=CreateUnit(p, 'n00F', - 778.5, - 12554.9, 31.609)
    set u=CreateUnit(p, 'n00F', - 878.2, - 12667.0, 273.996)
    set u=CreateUnit(p, 'n00F', - 701.0, - 12702.0, 246.673)
    set u=CreateUnit(p, 'n00F', - 570.2, - 12248.5, 271.261)
    set u=CreateUnit(p, 'n00F', - 615.3, - 12439.5, 155.901)
    set u=CreateUnit(p, 'n00F', - 344.7, - 12380.4, 37.992)
    set u=CreateUnit(p, 'n00F', - 443.3, - 12112.0, 260.120)
    set u=CreateUnit(p, 'n00F', - 805.0, - 12042.0, 149.814)
    set u=CreateUnit(p, 'n00F', - 900.6, - 12123.6, 230.346)
    set u=CreateUnit(p, 'n00F', - 722.9, - 11655.0, 316.196)
    set u=CreateUnit(p, 'n00F', - 1086.6, - 11598.5, 31.609)
    set u=CreateUnit(p, 'n00F', - 1186.3, - 11710.6, 273.996)
    set u=CreateUnit(p, 'n00F', - 1009.1, - 11745.6, 246.673)
    set u=CreateUnit(p, 'n00F', - 878.4, - 11292.1, 271.261)
    set u=CreateUnit(p, 'n00F', - 923.4, - 11483.1, 155.901)
    set u=CreateUnit(p, 'n00F', - 652.8, - 11424.0, 37.992)
    set u=CreateUnit(p, 'n00F', - 751.5, - 11155.6, 260.120)
    set u=CreateUnit(p, 'n00F', - 1113.2, - 11085.6, 149.814)
    set u=CreateUnit(p, 'n00F', - 1208.7, - 11167.1, 230.346)
    set u=CreateUnit(p, 'n00F', - 3418.2, - 10570.2, 31.609)
    set u=CreateUnit(p, 'n00F', - 3054.4, - 10626.6, 316.196)
    set u=CreateUnit(p, 'n00F', - 3517.9, - 10682.2, 273.996)
    set u=CreateUnit(p, 'n00F', - 3340.7, - 10717.2, 246.673)
    set u=CreateUnit(p, 'n00F', - 2574.6, - 10018.9, 260.120)
    set u=CreateUnit(p, 'n00F', - 2475.9, - 10287.3, 37.992)
    set u=CreateUnit(p, 'n00F', - 2746.5, - 10346.4, 155.901)
    set u=CreateUnit(p, 'n00F', - 2701.5, - 10155.4, 271.261)
    set u=CreateUnit(p, 'n00F', - 2546.0, - 10518.3, 316.196)
    set u=CreateUnit(p, 'n00F', - 2052.8, - 9772.6, 260.120)
    set u=CreateUnit(p, 'n00F', - 1954.1, - 10041.1, 37.992)
    set u=CreateUnit(p, 'n00F', - 2224.7, - 10100.1, 155.901)
    set u=CreateUnit(p, 'n00F', - 2179.6, - 9909.1, 271.261)
    set u=CreateUnit(p, 'n00F', - 2024.1, - 10272.0, 316.196)
    set u=CreateUnit(p, 'n007', - 11798.1, - 14237.4, 110.658)
    set u=CreateUnit(p, 'n007', - 11280.7, - 13790.2, 212.900)
    set u=CreateUnit(p, 'n008', - 11718.4, - 13477.0, 187.213)
    set u=CreateUnit(p, 'n008', - 11235.8, - 13228.6, 26.972)
    set u=CreateUnit(p, 'n007', - 11612.8, - 12862.3, 308.451)
    set u=CreateUnit(p, 'n007', - 11043.2, - 12652.4, 6.933)
    set u=CreateUnit(p, 'n008', - 11457.0, - 12239.9, 71.259)
    set u=CreateUnit(p, 'n008', - 12036.0, - 12207.6, 121.425)
    set u=CreateUnit(p, 'n007', - 12514.6, - 11767.7, 171.249)
    set u=CreateUnit(p, 'n008', - 13011.0, - 12079.1, 174.996)
    set u=CreateUnit(p, 'n007', - 13499.1, - 11866.6, 295.948)
    set u=CreateUnit(p, 'n007', - 13933.9, - 12067.8, 155.648)
    set u=CreateUnit(p, 'n007', - 14418.5, - 11883.9, 152.132)
    set u=CreateUnit(p, 'n008', - 14796.1, - 12534.6, 80.389)
    set u=CreateUnit(p, 'n008', - 14260.6, - 12649.9, 138.685)
    set u=CreateUnit(p, 'n007', - 14333.8, - 13240.8, 296.156)
    set u=CreateUnit(p, 'n007', - 14609.2, - 13841.7, 109.526)
    set u=CreateUnit(p, 'n007', - 14220.4, - 14408.1, 128.797)
    set u=CreateUnit(p, 'n007', - 14003.7, - 14855.9, 172.831)
    set u=CreateUnit(p, 'n007', - 13322.8, - 15382.5, 134.422)
    set u=CreateUnit(p, 'n008', - 12311.1, - 15188.1, 192.618)
    set u=CreateUnit(p, 'n008', - 13389.4, - 14904.8, 229.951)
    set u=CreateUnit(p, 'n008', - 12723.5, - 15210.3, 104.802)
    set u=CreateUnit(p, 'n008', - 12096.5, - 14578.1, 56.636)
    set u=CreateUnit(p, 'n00G', - 10925.6, - 11842.2, 232.379)
    set u=CreateUnit(p, 'n00H', - 14459.7, - 15042.3, 32.140)
    set u=CreateUnit(p, 'n009', 14072.4, - 9930.3, 208.889)
    set u=CreateUnit(p, 'n009', 13572.9, - 9518.1, 301.793)
    set u=CreateUnit(p, 'n009', 13059.1, - 9866.5, 359.934)
    set u=CreateUnit(p, 'n009', 13576.1, - 10299.6, 88.805)
    set u=CreateUnit(p, 'n009', 14072.4, - 11162.0, 210.867)
    set u=CreateUnit(p, 'n009', 13094.2, - 11138.3, 10.327)
    set u=CreateUnit(p, 'n009', 13978.9, - 10272.0, 308.451)
    set u=CreateUnit(p, 'n009', 13161.0, - 10248.0, 234.620)
    set u=CreateUnit(p, 'n009', 13097.9, - 9435.6, 89.442)
    set u=CreateUnit(p, 'n009', 14051.0, - 9491.3, 255.011)
    set u=CreateUnit(p, 'n009', 13374.3, - 8945.3, 268.162)
    set u=CreateUnit(p, 'n009', 13650.5, - 8960.5, 331.116)
    set u=CreateUnit(p, 'n009', 12794.8, - 8004.7, 100.462)
    set u=CreateUnit(p, 'n009', 14215.1, - 8008.2, 224.985)
    set u=CreateUnit(p, 'n00O', - 9447.8, - 4846.7, 212.900)
    set u=CreateUnit(p, 'n00C', - 14445.1, - 7451.5, 125.753)
    set u=CreateUnit(p, 'n00C', - 13351.6, - 7387.9, 244.607)
    set u=CreateUnit(p, 'n00C', - 14480.1, - 8097.0, 98.869)
    set u=CreateUnit(p, 'n00C', - 13214.2, - 7946.3, 236.499)
    set u=CreateUnit(p, 'n00C', - 13940.6, - 6353.4, 24.610)
    set u=CreateUnit(p, 'n00C', - 13576.5, - 5941.7, 207.637)
    set u=CreateUnit(p, 'n00C', - 14413.1, - 5106.3, 233.203)
    set u=CreateUnit(p, 'n00C', - 13217.7, - 5218.4, 60.591)
    set u=CreateUnit(p, 'n00C', - 14092.2, - 4203.4, 186.795)
    set u=CreateUnit(p, 'n00C', - 15013.2, - 4591.7, 12.569)
    set u=CreateUnit(p, 'n00C', - 13126.4, - 4306.5, 129.401)
    set u=CreateUnit(p, 'n00C', - 12066.7, - 4471.6, 354.089)
    set u=CreateUnit(p, 'n00C', - 11285.7, - 4548.2, 165.426)
    set u=CreateUnit(p, 'n00C', - 11190.0, - 5122.9, 267.877)
    set u=CreateUnit(p, 'n00C', - 10579.1, - 4042.8, 247.101)
    set u=CreateUnit(p, 'n00C', - 10132.7, - 4682.2, 253.320)
    set u=CreateUnit(p, 'n00C', - 10344.6, - 5373.0, 75.907)
    set u=CreateUnit(p, 'n00C', - 9663.3, - 5643.9, 184.071)
    set u=CreateUnit(p, 'n00C', - 10296.2, - 5853.0, 350.233)
    set u=CreateUnit(p, 'n00C', - 10483.3, - 7036.4, 220.832)
    set u=CreateUnit(p, 'n00C', - 10052.0, - 7373.1, 50.077)
    set u=CreateUnit(p, 'n00C', - 10980.8, - 7340.6, 4.581)
    set u=CreateUnit(p, 'n00C', - 10700.8, - 7965.3, 148.540)
    set u=CreateUnit(p, 'n00C', - 9960.4, - 8064.4, 352.738)
    set u=CreateUnit(p, 'n00C', - 10474.8, - 8378.9, 203.429)
    set u=CreateUnit(p, 'n00C', - 9535.4, - 8468.1, 126.303)
    set u=CreateUnit(p, 'n00C', - 9440.9, - 7845.8, 339.741)
    set u=CreateUnit(p, 'n00C', - 9879.5, - 8895.2, 47.177)
    set u=CreateUnit(p, 'n00C', - 10616.1, - 8863.0, 82.609)
    set u=CreateUnit(p, 'n00C', - 11162.4, - 8939.7, 332.215)
    set u=CreateUnit(p, 'n00Q', 1900.5, 12723.6, 284.390)
    set u=CreateUnit(p, 'n00S', 6348.4, 10562.4, 197.441)
    set u=CreateUnit(p, 'n00P', 4237.1, 12138.8, 215.888)
    set u=CreateUnit(p, 'n00R', 6423.9, 12532.1, 336.214)
    set u=CreateUnit(p, 'n00D', 6662.4, 12139.7, 124.929)
    set u=CreateUnit(p, 'n00D', 6363.5, 11724.3, 353.803)
    set u=CreateUnit(p, 'n00D', 6711.9, 11376.2, 102.286)
    set u=CreateUnit(p, 'n00D', 6564.6, 10922.4, 322.393)
    set u=CreateUnit(p, 'n00D', 4809.3, 11468.2, 58.130)
    set u=CreateUnit(p, 'n00D', 4292.3, 11223.2, 244.816)
    set u=CreateUnit(p, 'n00D', 3711.7, 11171.4, 222.744)
    set u=CreateUnit(p, 'n00D', 3555.8, 11825.2, 146.606)
    set u=CreateUnit(p, 'n00D', 3695.0, 12280.2, 334.148)
    set u=CreateUnit(p, 'n00D', 2639.4, 11099.8, 326.524)
    set u=CreateUnit(p, 'n00D', 2154.0, 11679.7, 236.279)
    set u=CreateUnit(p, 'n00D', 2409.1, 11989.1, 185.334)
    set u=CreateUnit(p, 'n00D', 1850.0, 12204.7, 187.158)
    set u=CreateUnit(p, 'n00D', 1861.5, 11052.3, 248.914)
    set u=CreateUnit(p, 'n00D', 2554.7, 10181.2, 169.195)
    set u=CreateUnit(p, 'n00D', 2916.0, 13491.3, 18.447)
    set u=CreateUnit(p, 'n00D', 2094.7, 13863.4, 256.374)
    set u=CreateUnit(p, 'n00D', 2573.9, 13928.4, 338.378)
    set u=CreateUnit(p, 'n00D', 6105.7, 13660.6, 244.717)
    set u=CreateUnit(p, 'n00D', 4962.5, 14214.0, 55.571)
    set u=CreateUnit(p, 'n00D', 4132.0, 14346.9, 248.892)
    set u=CreateUnit(p, 'n00D', 4501.1, 13853.3, 111.668)
    set u=CreateUnit(p, 'n00D', 3543.9, 14782.6, 157.483)
    set u=CreateUnit(p, 'n00D', 5105.6, 13159.4, 9.514)
    set u=CreateUnit(p, 'n00D', 3755.8, 13331.5, 5.416)
    set u=CreateUnit(p, 'n00D', 5064.7, 10330.1, 244.816)
    set u=CreateUnit(p, 'n00D', 4551.0, 10043.7, 244.816)
    set u=CreateUnit(p, 'n00T', 7809.1, - 4529.5, 185.140)
    set u=CreateUnit(p, 'n00E', 11124.7, 12882.6, 250.000)
    set u=CreateUnit(p, 'n00E', 11281.5, 12875.8, 250.000)
    set u=CreateUnit(p, 'n00E', 11450.2, 12879.5, 250.000)
    set u=CreateUnit(p, 'n00E', 11582.5, 12814.5, 250.000)
    set u=CreateUnit(p, 'n00E', 12437.6, 11689.5, 250.000)
    set u=CreateUnit(p, 'n00E', 12594.4, 11682.7, 250.000)
    set u=CreateUnit(p, 'n00E', 12763.2, 11686.4, 250.000)
    set u=CreateUnit(p, 'n00E', 12895.4, 11621.4, 250.000)
    set u=CreateUnit(p, 'n00E', 13322.1, 10530.7, 250.000)
    set u=CreateUnit(p, 'n00E', 13478.9, 10523.9, 250.000)
    set u=CreateUnit(p, 'n00E', 13647.7, 10527.5, 250.000)
    set u=CreateUnit(p, 'n00E', 13779.9, 10462.5, 250.000)
    set u=CreateUnit(p, 'n00E', 11993.4, 9720.4, 250.000)
    set u=CreateUnit(p, 'n00E', 12150.2, 9713.6, 250.000)
    set u=CreateUnit(p, 'n00E', 12318.9, 9717.3, 250.000)
    set u=CreateUnit(p, 'n00E', 12451.2, 9652.3, 250.000)
    set u=CreateUnit(p, 'n00E', 9983.0, 10564.8, 250.000)
    set u=CreateUnit(p, 'n00E', 10139.8, 10558.0, 250.000)
    set u=CreateUnit(p, 'n00E', 10308.6, 10561.6, 250.000)
    set u=CreateUnit(p, 'n00E', 10440.8, 10496.6, 250.000)
    set u=CreateUnit(p, 'n00E', 10939.5, 11397.9, 250.000)
    set u=CreateUnit(p, 'n00E', 11096.3, 11391.1, 250.000)
    set u=CreateUnit(p, 'n00E', 11265.0, 11394.8, 250.000)
    set u=CreateUnit(p, 'n00E', 11397.3, 11329.8, 250.000)
    set u=CreateUnit(p, 'n00E', 13806.2, 12522.7, 250.000)
    set u=CreateUnit(p, 'n00E', 13963.0, 12515.9, 250.000)
    set u=CreateUnit(p, 'n00E', 14131.8, 12519.5, 250.000)
    set u=CreateUnit(p, 'n00E', 14264.0, 12454.5, 250.000)
    set u=CreateUnit(p, 'n00F', - 1287.0, - 12412.3, 31.609)
    set u=CreateUnit(p, 'n00F', - 1386.7, - 12524.4, 273.996)
    set u=CreateUnit(p, 'n00F', - 1209.5, - 12559.3, 246.673)
    set u=CreateUnit(p, 'n00F', - 1217.7, - 12908.4, 31.609)
    set u=CreateUnit(p, 'n00F', - 1317.4, - 13020.4, 273.996)
    set u=CreateUnit(p, 'n00F', - 1140.2, - 13055.4, 246.673)
    set u=CreateUnit(p, 'n00F', - 223.7, - 11672.9, 31.609)
    set u=CreateUnit(p, 'n00F', - 323.5, - 11784.9, 273.996)
    set u=CreateUnit(p, 'n00F', - 146.2, - 11819.9, 246.673)
    set u=CreateUnit(p, 'n00F', - 1022.2, - 9910.3, 31.609)
    set u=CreateUnit(p, 'n00F', - 1121.9, - 10022.4, 273.996)
    set u=CreateUnit(p, 'n00F', - 944.7, - 10057.4, 246.673)
    set u=CreateUnit(p, 'n00F', - 1515.6, - 9822.4, 237.835)
    set u=CreateUnit(p, 'n00F', - 1615.3, - 9934.5, 239.001)
    set u=CreateUnit(p, 'n00F', - 1438.1, - 9969.5, 231.424)
    set u=CreateUnit(p, 'n00F', - 3482.0, - 10991.6, 31.609)
    set u=CreateUnit(p, 'n00F', - 3581.7, - 11103.7, 273.996)
    set u=CreateUnit(p, 'n00F', - 3404.5, - 11138.7, 246.673)
    set u=CreateUnit(p, 'n00F', - 3519.0, - 11435.6, 31.609)
    set u=CreateUnit(p, 'n00F', - 3618.7, - 11547.6, 273.996)
    set u=CreateUnit(p, 'n00F', - 3441.5, - 11582.6, 246.673)
    set u=CreateUnit(p, 'n010', - 5745.2, - 14343.6, 319.090)
    set u=CreateUnit(p, 'n00X', - 6119.7, - 11546.9, 86.560)
    set u=CreateUnit(p, 'n00V', - 6643.2, - 10341.5, 359.370)
    set u=CreateUnit(p, 'n011', - 12229.2, 6107.5, 147.304)
    set u=CreateUnit(p, 'n012', - 13218.7, 6297.1, 322.711)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n013', - 12820.3, 5606.6, 76.748)
    call SetUnitState(u, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'n014', - 12648.5, 6877.1, 230.237)
    set u=CreateUnit(p, 'n015', - 12678.1, 6229.7, 245.000)
    call SetUnitAcquireRange(u, 200.0)
endfunction
//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'o00H', 6432.0, - 1440.0, 270.000)
    set u=CreateUnit(p, 'o00H', 3872.0, - 6304.0, 270.000)
    set u=CreateUnit(p, 'o00H', - 352.0, - 7840.0, 270.000)
    set u=CreateUnit(p, 'o00H', - 15456.0, 13856.0, 270.000)
    set u=CreateUnit(p, 'o00H', - 2464.0, 10528.0, 270.000)
    set u=CreateUnit(p, 'o00H', 10848.0, 3680.0, 270.000)
    set u=CreateUnit(p, 'o00H', 8224.0, - 14560.0, 270.000)
endfunction
//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'hhdl', 13388.5, 10138.4, 32.224)
    set u=CreateUnit(p, 'hhdl', 13225.6, 10131.6, 15.381)
    set u=CreateUnit(p, 'hhdl', 13423.9, 9966.3, 247.991)
    set u=CreateUnit(p, 'hhdl', 13260.3, 9918.5, 12.679)
    set u=CreateUnit(p, 'hhdl', 13339.5, 9746.6, 232.643)
    set u=CreateUnit(p, 'hhdl', 13491.6, 9825.1, 154.451)
    set u=CreateUnit(p, 'hrdh', 13584.5, 10081.0, 113.877)
    set u=CreateUnit(p, 'hrdh', 13656.1, 9852.8, 326.765)
    set u=CreateUnit(p, 'hrdh', 13618.9, 9737.7, 185.532)
    set u=CreateUnit(p, 'hrdh', 13297.7, 9834.3, 342.619)
    set u=CreateUnit(p, 'hrdh', 13454.9, 10064.4, 263.164)
    set u=CreateUnit(p, 'hhdl', 8738.0, 11779.1, 32.224)
    set u=CreateUnit(p, 'hhdl', 8575.1, 11772.3, 15.381)
    set u=CreateUnit(p, 'hhdl', 8773.4, 11607.1, 247.991)
    set u=CreateUnit(p, 'hhdl', 8609.7, 11559.2, 12.679)
    set u=CreateUnit(p, 'hhdl', 8689.0, 11387.4, 232.643)
    set u=CreateUnit(p, 'hhdl', 8841.0, 11465.9, 154.451)
    set u=CreateUnit(p, 'hrdh', 8934.0, 11721.8, 113.877)
    set u=CreateUnit(p, 'hrdh', 9005.6, 11493.6, 326.765)
    set u=CreateUnit(p, 'hrdh', 8968.4, 11378.5, 185.532)
    set u=CreateUnit(p, 'hrdh', 8647.2, 11475.1, 342.619)
    set u=CreateUnit(p, 'hrdh', 8804.4, 11705.1, 263.164)
    set u=CreateUnit(p, 'hrdh', - 14816.9, - 14644.6, 314.603)
    set u=CreateUnit(p, 'hrdh', - 14928.7, - 14812.5, 84.015)
    set u=CreateUnit(p, 'hrdh', - 15219.0, - 14681.5, 7.295)
    set u=CreateUnit(p, 'hbew', - 14796.2, - 14902.2, 18.018)
    set u=CreateUnit(p, 'hbew', - 14885.0, - 14469.4, 244.739)
    set u=CreateUnit(p, 'hbew', - 15078.3, - 14531.0, 178.325)
    set u=CreateUnit(p, 'hhdl', - 15068.1, - 14791.4, 349.145)
    set u=CreateUnit(p, 'hhdl', - 15035.4, - 14983.1, 214.108)
    set u=CreateUnit(p, 'hhdl', - 15201.0, - 14904.5, 320.975)
    set u=CreateUnit(p, 'hrdh', - 11885.3, - 11567.0, 314.603)
    set u=CreateUnit(p, 'hrdh', - 11997.1, - 11734.9, 84.015)
    set u=CreateUnit(p, 'hrdh', - 12287.3, - 11603.9, 7.295)
    set u=CreateUnit(p, 'hbew', - 11864.6, - 11824.7, 18.018)
    set u=CreateUnit(p, 'hbew', - 11953.3, - 11391.8, 244.739)
    set u=CreateUnit(p, 'hbew', - 12146.7, - 11453.4, 178.325)
    set u=CreateUnit(p, 'hhdl', - 12136.4, - 11713.8, 349.145)
    set u=CreateUnit(p, 'hhdl', - 12103.7, - 11905.5, 214.108)
    set u=CreateUnit(p, 'hhdl', - 12269.4, - 11826.9, 320.975)
    set gg_unit_O105_0333=CreateUnit(p, 'O105', 7607.9, 7315.7, 286.455)
    call SetUnitState(gg_unit_O105_0333, UNIT_STATE_MANA, 0)
    set gg_unit_O104_0334=CreateUnit(p, 'O104', 8135.9, 7527.1, 193.815)
    call SetUnitState(gg_unit_O104_0334, UNIT_STATE_MANA, 0)
    set gg_unit_O100_0335=CreateUnit(p, 'O100', 8613.8, 7333.7, 257.132)
    call SetUnitState(gg_unit_O100_0335, UNIT_STATE_MANA, 0)
    set gg_unit_O103_0336=CreateUnit(p, 'O103', 8857.1, 6849.1, 132.423)
    call SetUnitState(gg_unit_O103_0336, UNIT_STATE_MANA, 0)
    set gg_unit_O102_0337=CreateUnit(p, 'O102', 8717.1, 6437.8, 111.504)
    call SetUnitState(gg_unit_O102_0337, UNIT_STATE_MANA, 0)
    set gg_unit_O101_0338=CreateUnit(p, 'O101', 8135.5, 6369.9, 51.604)
    call SetUnitState(gg_unit_O101_0338, UNIT_STATE_MANA, 0)
    set gg_unit_O106_0339=CreateUnit(p, 'O106', 7586.2, 6769.6, 150.287)
    call SetUnitState(gg_unit_O106_0339, UNIT_STATE_MANA, 0)
    set u=CreateUnit(p, 'o00G', 8164.1, 6871.8, 125.060)
endfunction
//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
endfunction
//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
    call CreateUnitsForPlayer5()
endfunction
//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreateBuildingsForPlayer0() // INLINED!!
    call CreateNeutralHostile()
    call CreateNeutralPassive()
    call CreatePlayerUnits()
endfunction
//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//TESH.scrollpos=0
//TESH.alwaysfold=0
// -- 引入其他依赖 --
// 扩展库
//hardware

//获取鼠标在游戏内的坐标X

//获取鼠标在游戏内的坐标Y

//获取鼠标在游戏内的坐标Z

//鼠标是否在游戏内

//获取鼠标屏幕坐标X

//获取鼠标屏幕坐标Y

//获取鼠标游戏窗口坐标X

//获取鼠标游戏窗口坐标Y

//设置鼠标位置

//注册鼠标点击触发（sync为true时，调用TriggerExecute。为false时，直接运行action函数，可以异步不掉线，action里不要有同步操作）


//注册键盘点击触发


//注册鼠标滚轮触发


//注册鼠标移动触发


//获取触发器的按键码

//获取滚轮delta

//判断按键是否按下

//获取触发key的玩家

//获取war3窗口宽度

//获取war3窗口高度

//获取war3窗口X坐标

//获取war3窗口Y坐标

//注册war3窗口大小变化事件


//判断窗口是否激活

//plus
//设置可摧毁物位置

//设置单位位置-本地调用

//异步执行函数

//取鼠标指向的unit

//设置unit的贴图

//设置内存数值

//设置单位ID

//设置单位模型

//设置小地图背景图片



//sync
//注册数据同步trigger

//同步游戏数据

//获取同步的数据

//获取同步数据的玩家

//gui
/////////////////////////////// 原生UI修改
//隐藏界面元素

//修改游戏世界窗口位置

//头像

//小地图

//技能按钮

//英雄按钮

//英雄血条

//英雄蓝条

//道具按钮

//小地图按钮

//左上菜单按钮

//鼠标提示

//聊天信息

//unit message

//top message

///////////////////////////////
//取rgba色值

//设置界面更新回调（非同步）


//显示/隐藏Frame

//创建frame

//创建SimpleFrame

//销毁frame

//加载toc

//设置frame相对位置

//设置frame绝对位置

//清空frame锚点

//设置frame禁用/启用

//注册UI事件回调


//获取触发ui的玩家

//获取触发的Frame

//查找frame

//查找SimpleFrame

//查找String

//查找Texture

//获取game ui

//点击frame

//自定义屏幕比例

//使用宽屏模式

//设置文字（支持EditBox, TextFrame, TextArea, SimpleFontString、GlueEditBoxWar3、SlashChatBox、TimerTextFrame、TextButtonFrame、GlueTextButton）

//获取文字（支持EditBox, TextFrame, TextArea, SimpleFontString）

//设置字数限制（支持EditBox）

//获取字数限制（支持EditBox）

//设置文字颜色（支持TextFrame, EditBox）

//获取鼠标所在位置的ui控件指针

//设置所有锚点到目标frame上

//设置焦点

//设置模型（支持Sprite、Model、StatusBar）

//获取控件是否启用

//设置透明度（0-255）

//获取透明度

//设置动画

//设置动画进度（autocast为false是可用）

//设置texture（支持Backdrop、SimpleStatusBar）

//设置缩放

//设置tooltip

//鼠标限制在ui内

//获取当前值（支持Slider、SimpleStatusBar、StatusBar）

//设置最大最小值（支持Slider、SimpleStatusBar、StatusBar）

//设置Step值（支持Slider）

//设置当前值（支持Slider、SimpleStatusBar、StatusBar）

//设置frame大小

//根据tag创建frame

//设置颜色（支持SimpleStatusBar）









// function DzTriggerRegisterMouseEventTrg takes trigger trg, integer status, integer btn returns nothing
//     if trg == null then
//         return
//     endif
//     call DzTriggerRegisterMouseEvent(trg, btn, status, true, null)
// endfunction
// function DzTriggerRegisterKeyEventTrg takes trigger trg, integer status, integer btn returns nothing
//     if trg == null then
//         return
//     endif
//     call DzTriggerRegisterKeyEvent(trg, btn, status, true, null)
// endfunction
// function DzTriggerRegisterMouseMoveEventTrg takes trigger trg returns nothing
//     if trg == null then
//         return
//     endif
//     call DzTriggerRegisterMouseMoveEvent(trg, true, null)
// endfunction
// function DzTriggerRegisterMouseWheelEventTrg takes trigger trg returns nothing
//     if trg == null then
//         return
//     endif
//     call DzTriggerRegisterMouseWheelEvent(trg, true, null)
// endfunction
// function DzTriggerRegisterWindowResizeEventTrg takes trigger trg returns nothing
//     if trg == null then
//         return
//     endif
//     call DzTriggerRegisterWindowResizeEvent(trg, true, null)
// endfunction
// function DzF2I takes integer i returns integer
//     return i
// endfunction
// function DzI2F takes integer i returns integer
//     return i
// endfunction
// function DzK2I takes integer i returns integer
//     return i
// endfunction
// function DzI2K takes integer i returns integer
//     return i
// endfunction
// function DzTriggerRegisterMallItemSyncData takes trigger trig returns nothing
//     call DzTriggerRegisterSyncData(trig, "DZMIA", true)
// endfunction
// function DzGetTriggerMallItemPlayer takes nothing returns player
//     return DzGetTriggerSyncPlayer()
// endfunction
// function DzGetTriggerMallItem takes nothing returns string
//     return DzGetTriggerSyncData()
// endfunction

































//library DzAPI ends
// japi






























//library DzAPI:
function DzAPI_Map_IsPlatformVIP takes player whichPlayer returns boolean
	return DzAPI_Map_GetPlatformVIP(whichPlayer) > 0
endfunction
function DzAPI_Map_Global_GetStoreString takes string key returns string
	return RequestExtraStringData(36, GetLocalPlayer(), key, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_Global_StoreString takes string key,string value returns nothing
	call RequestExtraStringData(37, GetLocalPlayer(), key, value, false, 0, 0, 0)
endfunction
function DzAPI_Map_Global_ChangeMsg takes trigger trig returns nothing
	call DzTriggerRegisterSyncData(trig, "DZGAU", true)
endfunction
function DzAPI_Map_ServerArchive takes player whichPlayer,string key returns string
	return RequestExtraStringData(38, whichPlayer, key, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_SaveServerArchive takes player whichPlayer,string key,string value returns nothing
	call RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
endfunction
function DzAPI_Map_IsRPGQuickMatch takes nothing returns boolean
	return RequestExtraBooleanData(40, null, null, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_GetMallItemCount takes player whichPlayer,string key returns integer
	return RequestExtraIntegerData(41, whichPlayer, key, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_ConsumeMallItem takes player whichPlayer,string key,integer count returns boolean
	return RequestExtraBooleanData(42, whichPlayer, key, null, false, count, 0, 0)
endfunction
function DzAPI_Map_EnablePlatformSettings takes player whichPlayer,integer option,boolean enable returns boolean
	return RequestExtraBooleanData(43, whichPlayer, null, null, enable, option, 0, 0)
endfunction
function DzAPI_Map_IsBuyReforged takes player whichPlayer returns boolean
	return RequestExtraBooleanData(44, whichPlayer, null, null, false, 0, 0, 0)
endfunction
function GetPlayerServerValueSuccess takes player whichPlayer returns boolean
	if ( DzAPI_Map_GetServerValueErrorCode(whichPlayer) == 0 ) then
		return true
	else
		return false
	endif
endfunction
function DzAPI_Map_StoreIntegerEX takes player whichPlayer,string key,integer value returns nothing
	set key="I" + key
	call RequestExtraBooleanData(39, whichPlayer, key, I2S(value), false, 0, 0, 0)
	set key=null
	set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredIntegerEX takes player whichPlayer,string key returns integer
 local integer value
	set key="I" + key
	set value=S2I(RequestExtraStringData(38, whichPlayer, key, null, false, 0, 0, 0))
	set key=null
	set whichPlayer=null
	return value
endfunction
function DzAPI_Map_StoreInteger takes player whichPlayer,string key,integer value returns nothing
	set key="I" + key
	call DzAPI_Map_SaveServerValue(whichPlayer, key, I2S(value))
	set key=null
	set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredInteger takes player whichPlayer,string key returns integer
 local integer value
	set key="I" + key
	set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
	set key=null
	set whichPlayer=null
	return value
endfunction
function DzAPI_Map_CommentTotalCount1 takes player whichPlayer,integer id returns integer
	return RequestExtraIntegerData(52, whichPlayer, null, null, false, id, 0, 0)
endfunction
function DzAPI_Map_StoreReal takes player whichPlayer,string key,real value returns nothing
	set key="R" + key
	call DzAPI_Map_SaveServerValue(whichPlayer, key, R2S(value))
	set key=null
	set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredReal takes player whichPlayer,string key returns real
 local real value
	set key="R" + key
	set value=S2R(DzAPI_Map_GetServerValue(whichPlayer, key))
	set key=null
	set whichPlayer=null
	return value
endfunction
function DzAPI_Map_StoreBoolean takes player whichPlayer,string key,boolean value returns nothing
	set key="B" + key
	if ( value ) then
		call DzAPI_Map_SaveServerValue(whichPlayer, key, "1")
	else
		call DzAPI_Map_SaveServerValue(whichPlayer, key, "0")
	endif
	set key=null
	set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredBoolean takes player whichPlayer,string key returns boolean
 local boolean value
	set key="B" + key
	set key=DzAPI_Map_GetServerValue(whichPlayer, key)
	if ( key == "1" ) then
		set value=true
	else
		set value=false
	endif
	set key=null
	set whichPlayer=null
	return value
endfunction
function DzAPI_Map_StoreString takes player whichPlayer,string key,string value returns nothing
	set key="S" + key
	call DzAPI_Map_SaveServerValue(whichPlayer, key, value)
	set key=null
	set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredString takes player whichPlayer,string key returns string
	return DzAPI_Map_GetServerValue(whichPlayer, "S" + key)
endfunction
function DzAPI_Map_StoreStringEX takes player whichPlayer,string key,string value returns nothing
	set key="S" + key
	call RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
	set key=null
	set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredStringEX takes player whichPlayer,string key returns string
	return RequestExtraStringData(38, whichPlayer, "S" + key, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_GetStoredUnitType takes player whichPlayer,string key returns integer
 local integer value
	set key="I" + key
	set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
	set key=null
	set whichPlayer=null
	return value
endfunction
function DzAPI_Map_GetStoredAbilityId takes player whichPlayer,string key returns integer
 local integer value
	set key="I" + key
	set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
	set key=null
	set whichPlayer=null
	return value
endfunction
function DzAPI_Map_FlushStoredMission takes player whichPlayer,string key returns nothing
	call DzAPI_Map_SaveServerValue(whichPlayer, key, null)
	set key=null
	set whichPlayer=null
endfunction
function DzAPI_Map_Ladder_SubmitIntegerData takes player whichPlayer,string key,integer value returns nothing
	call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
endfunction
function DzAPI_Map_Stat_SubmitUnitIdData takes player whichPlayer,string key,integer value returns nothing
	if ( value == 0 ) then
		//call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
	else
		call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
	endif
endfunction
function DzAPI_Map_Stat_SubmitUnitData takes player whichPlayer,string key,unit value returns nothing
	call DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer , key , GetUnitTypeId(value))
endfunction
function DzAPI_Map_Ladder_SubmitAblityIdData takes player whichPlayer,string key,integer value returns nothing
	if ( value == 0 ) then
		//call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
	else
		call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
	endif
endfunction
function DzAPI_Map_Ladder_SubmitItemIdData takes player whichPlayer,string key,integer value returns nothing
 local string S
	if ( value == 0 ) then
		set S="0"
	else
		set S=I2S(value)
		call DzAPI_Map_Ladder_SetStat(whichPlayer, key, S)
	endif
	//call DzAPI_Map_Ladder_SetStat(whichPlayer,key,S)
	set S=null
	set whichPlayer=null
endfunction
function DzAPI_Map_Ladder_SubmitItemData takes player whichPlayer,string key,item value returns nothing
	call DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer , key , GetItemTypeId(value))
endfunction
function DzAPI_Map_Ladder_SubmitBooleanData takes player whichPlayer,string key,boolean value returns nothing
	if ( value ) then
		call DzAPI_Map_Ladder_SetStat(whichPlayer, key, "1")
	else
		call DzAPI_Map_Ladder_SetStat(whichPlayer, key, "0")
	endif
endfunction
function DzAPI_Map_Ladder_SubmitTitle takes player whichPlayer,string value returns nothing
	call DzAPI_Map_Ladder_SetStat(whichPlayer, value, "1")
endfunction
function DzAPI_Map_Ladder_SubmitPlayerRank takes player whichPlayer,integer value returns nothing
	call DzAPI_Map_Ladder_SetPlayerStat(whichPlayer, "RankIndex", I2S(value))
endfunction
function DzAPI_Map_Ladder_SubmitPlayerExtraExp takes player whichPlayer,integer value returns nothing
	call DzAPI_Map_Ladder_SetStat(whichPlayer, "ExtraExp", I2S(value))
endfunction
function DzAPI_Map_PlayedGames takes player whichPlayer returns integer
	return RequestExtraIntegerData(45, whichPlayer, null, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_CommentCount takes player whichPlayer returns integer
	return RequestExtraIntegerData(46, whichPlayer, null, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_FriendCount takes player whichPlayer returns integer
	return RequestExtraIntegerData(47, whichPlayer, null, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_IsConnoisseur takes player whichPlayer returns boolean
	return RequestExtraBooleanData(48, whichPlayer, null, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_IsBattleNetAccount takes player whichPlayer returns boolean
	return RequestExtraBooleanData(49, whichPlayer, null, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_IsAuthor takes player whichPlayer returns boolean
	return RequestExtraBooleanData(50, whichPlayer, null, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_CommentTotalCount takes nothing returns integer
	return RequestExtraIntegerData(51, null, null, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_Statistics takes player whichPlayer,string eventKey,string eventType,integer value returns nothing
	call RequestExtraBooleanData(34, whichPlayer, eventKey, "", false, value, 0, 0)
endfunction
function DzAPI_Map_Returns takes player whichPlayer,integer label returns boolean
	return RequestExtraBooleanData(53, whichPlayer, null, null, false, label, 0, 0)
endfunction
function DzAPI_Map_ContinuousCount takes player whichPlayer,integer id returns integer
	return RequestExtraIntegerData(54, whichPlayer, null, null, false, id, 0, 0)
endfunction
// IsPlayer,                      //是否为玩家
function DzAPI_Map_IsPlayer takes player whichPlayer returns boolean
	return RequestExtraBooleanData(55, whichPlayer, null, null, false, 0, 0, 0)
endfunction
// MapsTotalPlayed,               //所有地图的总游戏时长
function DzAPI_Map_MapsTotalPlayed takes player whichPlayer returns integer
	return RequestExtraIntegerData(56, whichPlayer, null, null, false, 0, 0, 0)
endfunction
// MapsLevel,                    //指定地图的地图等级
function DzAPI_Map_MapsLevel takes player whichPlayer,integer mapId returns integer
	return RequestExtraIntegerData(57, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
// MapsConsumeGold,              //所有地图的金币消耗
function DzAPI_Map_MapsConsumeGold takes player whichPlayer,integer mapId returns integer
	return RequestExtraIntegerData(58, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
// MapsConsumeLumber,            //所有地图的木材消耗
function DzAPI_Map_MapsConsumeLumber takes player whichPlayer,integer mapId returns integer
	return RequestExtraIntegerData(59, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
// MapsConsumeLv1,               //消费 1-199
function DzAPI_Map_MapsConsumeLv1 takes player whichPlayer,integer mapId returns boolean
	return RequestExtraBooleanData(60, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
// MapsConsumeLv2,               //消费 200-499
function DzAPI_Map_MapsConsumeLv2 takes player whichPlayer,integer mapId returns boolean
	return RequestExtraBooleanData(61, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
// MapsConsumeLv3,               //消费 500~999
function DzAPI_Map_MapsConsumeLv3 takes player whichPlayer,integer mapId returns boolean
	return RequestExtraBooleanData(62, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
// MapsConsumeLv4,               //消费 1000+
function DzAPI_Map_MapsConsumeLv4 takes player whichPlayer,integer mapId returns boolean
	return RequestExtraBooleanData(63, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
//获取论坛数据（0=累计获得赞数，1=精华帖数量，2=发表回复次数，3=收到的欢乐数，4=是否发过贴子，5=是否版主，6=主题数量）
function DzAPI_Map_GetForumData takes player whichPlayer,integer whichData returns integer
	return RequestExtraIntegerData(65, whichPlayer, null, null, false, whichData, 0, 0)
endfunction
function DzAPI_Map_OpenMall takes player whichPlayer,string whichkey returns boolean
	return RequestExtraBooleanData(66, whichPlayer, whichkey, null, false, 0, 0, 0)
endfunction
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
    set attackers[1]='h000'
    set attackers[2]='h001'
    set attackers[3]='h002'
    set attackers[4]='h003'
    set attackers[5]='h004'
    set attackers[6]='h005'
    set attackers[7]='h006'
    set attackers[8]='h007'
    set attackers[9]='h008'
    set attackers[10]='h009'
    set attackers[11]='h00A'
    set attackers[12]='h00B'
    set attackers[13]='h00C'
    set attackers[14]='h00D'
    set attackers[15]='h00E'
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
    return IsUnitInGroup(GetTriggerUnit(), heroGroup) and not hasHero[1 + GetPlayerId(GetTriggerPlayer())]
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
    set heroList[1]=gg_unit_O105_0333
    set heroList[2]=gg_unit_O104_0334
    set heroList[3]=gg_unit_O100_0335
    set heroList[4]=gg_unit_O103_0336
    set heroList[5]=gg_unit_O102_0337
    set heroList[6]=gg_unit_O101_0338
    set heroList[7]=gg_unit_O106_0339
    set heroDescription[1]="英雄1描述"
    set heroDescription[2]="英雄2描述"
    set heroDescription[3]="英雄3描述"
    set heroDescription[4]="英雄4描述"
    set heroDescription[5]="英雄5描述"
    set heroDescription[6]="英雄6描述"
    set heroDescription[7]="英雄7描述"
    set heroBornPoint[1]=7800
    set heroBornPoint[2]=7000
    set j=1
    loop
        exitwhen j > PLAYER_COUNT
        set hasHero[j]=false
        set hero[j]=null
        set heroInSelection[j]=null
        set j=j + 1
    endloop
    set j=1
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
            // 传送至新手村
            call SetUnitPosition(hero[i], newbeeVillagePoint[1], newbeeVillagePoint[2])
            call PanCameraToTimedForPlayer(p, newbeeVillagePoint[1], newbeeVillagePoint[2], 0)
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
    set newbeeVillagePoint[1]=5348
    set newbeeVillagePoint[2]=- 468
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
// 任务
// ------- 任务系统 -------
// 类型1 护送类任务
// 类型2 杀怪类任务
// 类型3 收集类任务
// 类型4 拜访类任务
// 护送目标死亡，任务失败
function onProtectTaskTargetDead takes unit u returns nothing
    local integer j= 1
    local integer i= 1
    local unit dummy= null
    loop
        exitwhen j > protectTaskId
        if GetUnitTypeId(u) == protectTaskUnitId[j] then
            loop
                exitwhen i > PLAYER_COUNT
                set dummy=LoadUnitHandle(TASK_HT, GetHandleId(Player(i - 1)), PROTECT_TASK_OFFSET + j)
                if dummy != null and dummy == u then
                    call DisplayTextToPlayer(Player(i - 1), 0, 0, "|cFFFF0000任务失败了")
                    call SaveInteger(TASK_HT, GetHandleId(Player(i - 1)), PROTECT_TASK_OFFSET + j, STATUS_INIT)
                    call RemoveSavedHandle(TASK_HT, GetHandleId(Player(i - 1)), PROTECT_TASK_OFFSET + j)
                    call PlaySoundOnUnitBJ(warningSound, 100, hero[i])
                    return
                endif
                set i=i + 1
            endloop
        endif
        set j=j + 1
    endloop
    set dummy=null
endfunction
// 接受护送任务
function acceptProtectTask takes unit u,item it returns nothing
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    local integer j= 1
    local integer status= 0
    local unit dummy= null
    loop
        exitwhen j > protectTaskId
        if GetItemTypeId(it) == protectTaskItemId[j] then
            set status=LoadInteger(TASK_HT, GetHandleId(p), PROTECT_TASK_OFFSET + j)
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
                set dummy=CreateUnit(p, protectTaskUnitId[j], protectStartX[j], protectStartY[j], 270)
                call SaveUnitHandle(TASK_HT, GetHandleId(p), PROTECT_TASK_OFFSET + j, dummy)
                call IssuePointOrderById(dummy, $D0012, GetRectCenterX(protectTargetRect[j]), GetRectCenterY(protectTargetRect[j]))
                call PlaySoundOnUnitBJ(hintSound, 100, u)
                call PingMinimapForPlayer(p, GetRectCenterX(protectTargetRect[j]), GetRectCenterY(protectTargetRect[j]), 5)
            endif
            exitwhen true
        endif
        set j=j + 1
    endloop
    set dummy=null
    set p=null
endfunction
function onEnterProtectTaskTarget takes nothing returns nothing
    local region r= GetTriggeringRegion()
    local integer j= 1
    local unit u= GetEnteringUnit()
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
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
        set j=j + 1
    endloop
    set p=null
    set u=null
    set r=null
endfunction
// 新建护送类任务
function registerProtectTask takes integer taskItemId,integer protectedUnitId,real startX,real startY,rect targetRect,string hint returns nothing
    local integer j= 1
    local trigger t= CreateTrigger()
    // 初始化任务状态
    loop
        exitwhen j > PLAYER_COUNT
        call SaveInteger(TASK_HT, GetHandleId(Player(j - 1)), PROTECT_TASK_OFFSET + protectTaskId, 0)
        set j=j + 1
    endloop
    set protectTaskId=protectTaskId + 1
    set protectTaskItemId[protectTaskId]=taskItemId
    set protectTaskUnitId[protectTaskId]=protectedUnitId
    set protectStartX[protectTaskId]=startX
    set protectStartY[protectTaskId]=startY
    set protectTargetRect[protectTaskId]=targetRect
    set protectTaskHint[protectTaskId]=hint
    set protectTargetRegion[protectTaskId]=CreateRegion()
    // 注册完成任务事件
    call RegionAddRect(protectTargetRegion[protectTaskId], targetRect)
    call TriggerRegisterEnterRegion(t, protectTargetRegion[protectTaskId], null)
    call TriggerAddAction(t, function onEnterProtectTaskTarget)
    set t=null
endfunction
// 完成杀怪类任务
function onKillTargetDead takes unit killer,unit killed returns nothing
    local integer j= 1
    local player p= GetOwningPlayer(killer)
    local integer i= 1 + GetPlayerId(p)
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
                call DisplayTextToPlayer(p, 0, 0, ( GetObjectName(killTaskUnitId[j]) + "：" + ( I2S(LoadInteger(TASK_COUNTER_HT, GetHandleId(p), KILL_TASK_OFFSET + j)) + " / " + I2S(killCount[j]) ) ))
            endif
        endif
        set j=j + 1
    endloop
    set p=null
endfunction
// 接受杀怪类任务
function acceptKillTask takes unit u,item it returns nothing
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    local integer j= 1
    local integer status= 0
    local unit dummy= null
    loop
        exitwhen j > killTaskId
        if GetItemTypeId(it) == killTaskItemId[j] then
            set status=LoadInteger(TASK_HT, GetHandleId(p), KILL_TASK_OFFSET + j)
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
        set j=j + 1
    endloop
    set p=null
    set dummy=null
endfunction
// 新建杀怪类任务
function registerKillTask takes integer taskItemId,integer targetUnitId,integer count,boolean repeatable,rect hintRect,string hint returns nothing
    local integer j= 1
    // 初始化任务状态
    loop
        exitwhen j > PLAYER_COUNT
        call SaveInteger(TASK_HT, GetHandleId(Player(j - 1)), KILL_TASK_OFFSET + killTaskId, 0)
        set j=j + 1
    endloop
    set killTaskId=killTaskId + 1
    set killTaskItemId[killTaskId]=taskItemId
    set killTaskUnitId[killTaskId]=targetUnitId
    set killCount[killTaskId]=count
    set killTaskHint[killTaskId]=hint
    set killTaskRepeatable[killTaskId]=repeatable
    set killHintRect[killTaskId]=hintRect
endfunction
// 初始化任务
function initTasks takes nothing returns nothing
endfunction
// 历练
// 历练系统
// 副本
// 副本系统
// 伤害公式
// 命中公式 实际命中率=自己命中率/（自己命中率+别人闪避率）*[自己等级*2/（自己等级+对方等级）]
function hitFormula takes unit source,unit target returns real
    local integer sourceLevel= GetUnitLevel(source)
    local integer targetLevel= GetUnitLevel(target)
    // 敌人闪避暂时设定为等于等级
    local integer targetEvasion= targetLevel
    local integer i= 1 + GetPlayerId(GetOwningPlayer(source))
    local real hit= 0
    if i <= 5 then
        set hit=1.0 * hitRate[i] / ( hitRate[i] + targetEvasion ) * sourceLevel * 2 / ( sourceLevel + targetLevel )
    else
        // 敌方的命中是等级的5倍
        set hit=1.0 * sourceLevel * 5 / ( sourceLevel * 5 + targetEvasion ) * sourceLevel * 2 / ( sourceLevel + targetLevel )
    endif
    // 命中率在0.1到0.95之间
    if hit < 0.1 then
        set hit=0.1
    elseif hit > 0.95 then
        set hit=0.95
    endif
    return hit
endfunction
function showDamageWithEffects takes integer i,unit u,real damage,boolean critical returns nothing
 local integer criticalInt= 2
 local location loc= GetUnitLoc(u)
 local string damageStr= ""
 local integer j= 1
 local effect eff= null
	if critical then
		set criticalInt=1
	endif
	if IsUnitEnemy(u, Player(0)) then
		if Player(i - 1) == GetLocalPlayer() and showDamage[i] then
			// 显示伤害
			set damageStr=I2S(R2I(damage) + 1)
			loop
				exitwhen j > StringLength(damageStr)
				set eff=AddSpecialEffect("war3mapImported\\SHZT1" + I2S(criticalInt) + "-" + SubStringBJ(damageStr, j, j) + ".mdx", GetUnitX(u) + 32 / 1.38 * ( j - 1 ), GetUnitY(u))
				call EXSetEffectZ(eff, GetLocationZ(loc) + 80)
				call DestroyEffect(eff)
				set j=j + 1
			endloop
			if critical then
				set eff=AddSpecialEffect("war3mapImported\\SHZT11-10.mdx", GetUnitX(u) - 37 / 1.38, GetUnitY(u))
				call EXSetEffectZ(eff, GetLocationZ(loc) + 80)
				call DestroyEffect(eff)
			endif
		endif
	endif
	call RemoveLocation(loc)
	set loc=null
	set eff=null
endfunction
// 伤害公式 
// 基本伤害= 100
// 伤害 = （基本伤害 * (1+武器ed数值/100) + 直接最小/最大伤害增加值）  *  （1 + 0.01 * 招式 + 非武器ed/100) * (1 + 0.01 * 内力 + 技能系数/100) * {暴击倍数} + {元素伤害}
function damageFormula takes unit source,real coefficient,integer skillId returns real
    local real damage= 0
    local real baseDamage= 100
    local integer i= 1 + GetPlayerId(GetOwningPlayer(source))
    set damage=baseDamage * ( 1 + weaponExtraDamage[i] / 100 ) * ( 1 + 0.01 * GetHeroStr(source, true) + extraDamage[i] / 100 ) * ( 1 + 0.01 * GetHeroInt(source, true) + coefficient * GetUnitAbilityLevel(source, skillId) / 100 )
    return damage
endfunction
function dealDamage takes unit source,unit target,real damage returns nothing
    local integer i= 1 + GetPlayerId(GetOwningPlayer(source))
    local boolean critical= false
    // 触发暴击
    if GetRandomReal(0, 1) < critRate[i] then
        set damage=damage * critMultiple[i]
        set critical=true
    endif
    // 触发闪避
    if GetRandomReal(0, 1) > hitFormula(source , target) then
        set damage=0
    endif
    // 触发格档？
    // 实际伤害
    if damage > 0 then
        call UnitDamageTarget(source, target, damage, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
        call showDamageWithEffects(i , target , damage , critical)
    endif
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
//===============najitest===============
//=====================================@共用函数开始=====================================
function ID2S_naji takes integer i_naji returns string
    local integer z_naji
    local integer n_naji=0
    set Sdummy_naji[100]=""
    if Bid_naji == false then
        return Sdummy_naji[100]
    endif
    if i_naji != 0 then
        loop
            set z_naji=i_naji - ( i_naji / 256 ) * 256
            set i_naji=i_naji / 256
            set Sdummy_naji[100]=SubString(StringList_naji, z_naji, z_naji + 1) + Sdummy_naji[100]
            set n_naji=n_naji + 1
            exitwhen n_naji == 4
        endloop
        set Sdummy_naji[100]="'" + Sdummy_naji[100] + "'"
    else
        set Sdummy_naji[100]="null"
    endif
    return Sdummy_naji[100]
endfunction
function S2ID_naji takes string s_naji returns integer
    local integer l_naji=StringLength(s_naji)
    local integer i_naji=0
    local integer z_naji=0
    local integer n_naji=1
    local integer result_naji=0
    loop
        exitwhen z_naji > l_naji - 1
        set n_naji=R2I(Pow(256, l_naji - 1 - z_naji))
        set i_naji=1
        loop
            exitwhen i_naji > 255
            if SubString(s_naji, z_naji, z_naji + 1) == SubString(StringList_naji, i_naji, i_naji + 1) then
                set result_naji=result_naji + i_naji * n_naji
                set i_naji=256
            endif
            set i_naji=i_naji + 1
        endloop
        set z_naji=z_naji + 1
    endloop
    return result_naji
endfunction
function IDidentify_naji takes integer i_naji returns string
    local integer l_naji
    local integer a_naji=0
    local integer z_naji
    local integer n_naji=0
    local integer result=0
    set Sdummy_naji[100]=""
    if i_naji != 0 then
        loop
            set z_naji=i_naji - ( i_naji / 256 ) * 256
            set i_naji=i_naji / 256
            set Sdummy_naji[100]=SubString(StringList_naji, z_naji, z_naji + 1) + Sdummy_naji[100]
            set n_naji=n_naji + 1
            exitwhen n_naji == 4
        endloop
    else
        set Sdummy_naji[100]="null"
        return Sdummy_naji[100]
    endif
    set l_naji=StringLength(Sdummy_naji[100])
    set n_naji=1
    set z_naji=0
    loop
        exitwhen z_naji > l_naji - 1
        set n_naji=R2I(Pow(256, l_naji - 1 - z_naji))
        set a_naji=1
        loop
            exitwhen a_naji > 255
            if SubString(Sdummy_naji[100], z_naji, z_naji + 1) == SubString(StringList_naji, a_naji, a_naji + 1) then
                set result=result + a_naji * n_naji
                set a_naji=256
            endif
            set a_naji=a_naji + 1
        endloop
        set z_naji=z_naji + 1
    endloop
    return GetObjectName(result)
endfunction
function Distance_naji takes real x1_naji,real y1_naji,real x2_naji,real y2_naji returns real
    return SquareRoot(( y2_naji - y1_naji ) * ( y2_naji - y1_naji ) + ( x2_naji - x1_naji ) * ( x2_naji - x1_naji ))
endfunction
function Angle_naji takes real x1_naji,real y1_naji,real x2_naji,real y2_naji returns real
    local real r_naji
    set r_naji=57.29582 * Atan2(y2_naji - y1_naji, x2_naji - x1_naji)
    if r_naji < 0 then
        return 360 + r_naji
    endif
    return r_naji
endfunction
function DialogResetA3_naji takes nothing returns nothing
    call DialogClear(Dnaji_naji[2])
    if IsMapFlagSet(MAP_OBSERVERS_ON_DEATH) then
        set Button_naji[1]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF失败时作为观看者|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F1）|r", 768)
    else
        set Button_naji[1]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF失败时作为观看者|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F1）|r", 768)
    endif
    if IsMapFlagSet(MAP_LOCK_RESOURCE_TRADING) then
        set Button_naji[2]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定资源交易|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F2）|r", 769)
    else
        set Button_naji[2]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定资源交易|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F2）|r", 769)
    endif
    if IsMapFlagSet(MAP_RESOURCE_TRADING_ALLIES_ONLY) then
        set Button_naji[3]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF限定盟友资源交易|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F3）|r", 770)
    else
        set Button_naji[3]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF限定盟友资源交易|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F3）|r", 770)
    endif
    if IsMapFlagSet(MAP_LOCK_ALLIANCE_CHANGES) then
        set Button_naji[4]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定联盟设置|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F4）|r", 771)
    else
        set Button_naji[4]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定联盟设置|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F4）|r", 771)
    endif
    if IsMapFlagSet(MAP_ALLIANCE_CHANGES_HIDDEN) then
        set Button_naji[5]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF隐藏联盟设置|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F5）|r", 772)
    else
        set Button_naji[5]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF隐藏联盟设置|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F5）|r", 772)
    endif
    set Button_naji[100]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF取消|cff00FF00（Esc）|r", 512)
endfunction
function DialogResetA2_naji takes nothing returns nothing
    call DialogClear(Dnaji_naji[1])
    if Bxy_naji then
        set Button_naji[1]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF坐标参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F1）|r", 768)
    else
        set Button_naji[1]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF坐标参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F1）|r", 768)
    endif
    if Bid_naji then
        set Button_naji[2]=DialogAddButton(Dnaji_naji[1], "|cff00FFFFID参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F2）|r", 769)
    else
        set Button_naji[2]=DialogAddButton(Dnaji_naji[1], "|cff00FFFFID参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F2）|r", 769)
    endif
    if Bpn_naji then
        set Button_naji[3]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF玩家名参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F3）|r", 770)
    else
        set Button_naji[3]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF玩家名参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F3）|r", 770)
    endif
    if Bir_naji then
        set Button_naji[4]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF数值显示|cffFFFF00（当前状态：|cffFF0000整数|cffFFFF00）|cff00FF00（F4）|r", 771)
    else
        set Button_naji[4]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF数值显示|cffFFFF00（当前状态：|cffFF0000实数|cffFFFF00）|cff00FF00（F4）|r", 771)
    endif
    if Bddm_naji then
        set Button_naji[5]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF伤害显示类型|cffFFFF00（当前状态：|cffFF0000游戏文本|cffFFFF00）|cff00FF00（F5）|r", 772)
    else
        set Button_naji[5]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF伤害显示类型|cffFFFF00（当前状态：|cffFF0000飘浮文字|cffFFFF00）|cff00FF00（F5）|r", 772)
    endif
    set Button_naji[0]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF返回上一层|cff00FF00（space）|r", 32)
    set Button_naji[100]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF取消|cff00FF00（Esc）|r", 512)
endfunction
function DialogResetA_naji takes nothing returns nothing
    call DialogClear(Dnaji_naji[0])
    if IsTriggerEnabled(Ttest_naji[2]) then
        set Button_naji[1]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F1）|r", 768)
    else
        set Button_naji[1]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F1）|r", 768)
    endif
    if IsTriggerEnabled(Ttest_naji[15]) then
        set Button_naji[2]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF命令信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F2）|r", 769)
    else
        set Button_naji[2]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF命令信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F2）|r", 769)
    endif
    if IsTriggerEnabled(Ttest_naji[17]) then
        set Button_naji[3]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF寿命信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F3）|r", 770)
    else
        set Button_naji[3]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF寿命信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F3）|r", 770)
    endif
    if IsTriggerEnabled(Ttest_naji[26]) then
        set Button_naji[4]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF伤害信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F4）|r", 771)
    else
        set Button_naji[4]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF伤害信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F4）|r", 771)
    endif
    if IsTriggerEnabled(Ttest_naji[4]) then
        set Button_naji[5]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能无冷却不耗魔|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F5）|r", 772)
    else
        set Button_naji[5]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能无冷却不耗魔|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F5）|r", 772)
    endif
    if IsTriggerEnabled(Ttest_naji[71]) then
        set Button_naji[8]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF群体施法|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F6）|r", 773)
    else
        set Button_naji[8]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF群体施法|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F6）|r", 773)
    endif
    //=========================以下部分1.24以下的版本需删除==============================
    if IsTriggerEnabled(Ttest_naji[7]) then
        set Button_naji[6]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF句柄信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F7）|r", 774)
    else
        set Button_naji[6]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF句柄信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F7）|r", 774)
    endif
    //=========================以上部分1.24以下的版本需删除==============================
    if IsTriggerEnabled(Ttest_naji[61]) then
        set Button_naji[7]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF公共聊天系统|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F8）|r", 775)
    else
        set Button_naji[7]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF公共聊天系统|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F8）|r", 775)
    endif
    set Button_naji[0]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF系统信息调整|cff00FF00（space）|r", 32)
    set Button_naji[100]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF取消|cff00FF00（Esc）|r", 512)
endfunction
//=====================================@共用函数结束=====================================
//=====================================#功能函数开始=====================================
function TestA82_naji takes nothing returns nothing
    call ExecuteFunc(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
endfunction
function TestA81_naji takes nothing returns nothing
    local integer i_naji
    if StringLength(GetEventPlayerChatString()) <= 6 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000参数输入错误！位数不足无法判断进制类型|r")
    elseif StringLength(GetEventPlayerChatString()) == 7 then
        set i_naji=S2ID_naji(SubString(GetEventPlayerChatString(), 3, 7))
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0" + SubString(GetEventPlayerChatString(), 3, 7) + "|r→|cffFFFF00" + I2S(i_naji) + "|r")
    else
        set i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0" + SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())) + "|r→|cffFFFF00" + ID2S_naji(i_naji) + "|r")
    endif
endfunction
function TestA80_naji takes nothing returns nothing
    local group g_naji
    local unit u_naji
    local real x_naji
    local real y_naji
    local integer z_naji=StringLength(GetEventPlayerChatString()) - 1
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            loop
                set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
                if Sdummy_naji[1] == "," then
                    if z_naji == 4 then
                        set x_naji=GetUnitX(u_naji)
                    else
                        set x_naji=S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
                    endif
                    if z_naji == StringLength(GetEventPlayerChatString()) - 1 then
                        set y_naji=GetUnitY(u_naji)
                    else
                        set y_naji=S2R(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
                    endif
                    exitwhen true
                endif
                set z_naji=z_naji - 1
                if z_naji <= 0 then
                    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000参数不足！请输入|cffFFFF002|cffFF0000位参数|r")
                    call DestroyGroup(g_naji)
                    set g_naji=null
                    set u_naji=null
                    return
                endif
            endloop
            call SetUnitX(u_naji, x_naji)
            call SetUnitY(u_naji, y_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00玩家选择单位的所有单位的坐标更改为|cffFF0000(" + R2S(x_naji) + "," + R2S(y_naji) + ")|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA79_naji takes nothing returns nothing
    local group g_naji
    local unit u_naji
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local item it_naji
    if i_naji < 0 or i_naji >= 7 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000参数输入错误！请输入|cffFFFF001~6|cffFF0000间的整数|r")
        return
    elseif i_naji == 0 then
        set i_naji=1
    endif
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    set u_naji=FirstOfGroup(g_naji)
    if u_naji != null then
        if UnitItemInSlot(u_naji, i_naji - 1) != null then
            set it_naji=UnitItemInSlot(u_naji, i_naji - 1)
            if GetItemType(it_naji) == ITEM_TYPE_PERMANENT then
                set Sdummy_naji[0]="永久"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_CHARGED then
                set Sdummy_naji[0]="可允"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_POWERUP then
                set Sdummy_naji[0]="能量提升"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_ARTIFACT then
                set Sdummy_naji[0]="人造"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_PURCHASABLE then
                set Sdummy_naji[0]="可购买"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_CAMPAIGN then
                set Sdummy_naji[0]="战役"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_MISCELLANEOUS then
                set Sdummy_naji[0]="混杂"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_UNKNOWN then
                set Sdummy_naji[0]="未知"
            endif
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "===============*****===============")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0物品名称：|cffFFFF00" + GetItemName(it_naji) + "|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0ID256进制/10进制：|cffFFFF00" + ID2S_naji(GetItemTypeId(it_naji)) + "/" + I2S(GetItemTypeId(it_naji)) + "|r")
            //=========================以下部分1.24以下的版本需删除==============================
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0存储地址：|cffFFFF00" + I2S(GetHandleId(it_naji)) + "|r")
            //=========================以上部分1.24以下的版本需删除==============================
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0所属玩家/cj索引：|cffFFFF00" + GetPlayerName(GetItemPlayer(it_naji)) + "/" + I2S(GetPlayerId(GetItemPlayer(it_naji))) + "|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0坐标：|cffFFFF00(" + R2S(GetItemX(it_naji)) + "," + R2S(GetItemY(it_naji)) + ")|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0物品分类：|cffFFFF00" + Sdummy_naji[0] + "|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0物品等级：|cffFFFF00" + I2S(GetItemLevel(it_naji)) + "|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0自定义值：|cffFFFF00" + I2S(GetItemUserData(it_naji)) + "|r")
            set Sdummy_naji[0]=" "
            if IsItemPowerup(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0] + "拾取自动使用，"
            endif
            if IsItemSellable(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0] + "可出售，"
            endif
            if IsItemPawnable(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0] + "可抵押，"
            endif
            if IsItemVisible(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0] + "可见，"
            endif
            if IsItemInvulnerable(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0] + "无敌的，"
            endif
            set Sdummy_naji[0]=SubString(Sdummy_naji[0], 1, StringLength(Sdummy_naji[0]) - 2)
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0可识别状态：|cffFFFF00" + Sdummy_naji[0] + "||r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000该单位|cffFFFF00第" + I2S(i_naji) + "格物品栏|cffFF0000不存在物品|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
    set it_naji=null
endfunction
function TestA78_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if IsUnitInGroup(FirstOfGroup(g_naji), Gcd_naji[1]) then
            call GroupRemoveUnit(Gcd_naji[1], FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已取消玩家选择单位的|cffFF0000技能无冷却不耗蓝判定|r")
        else
            call SetUnitState(FirstOfGroup(g_naji), UNIT_STATE_MANA, GetUnitState(FirstOfGroup(g_naji), UNIT_STATE_MAX_MANA))
            call UnitResetCooldown(FirstOfGroup(g_naji))
            call GroupAddUnit(Gcd_naji[1], FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已启动玩家选择单位的|cffFF0000技能无冷却不耗蓝判定|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA77_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if IsUnitInGroup(FirstOfGroup(g_naji), Gms_naji) then
            call GroupRemoveUnit(Gms_naji, FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已取消玩家选择单位的|cffFF0000群体施法判定|r")
        else
            call GroupAddUnit(Gms_naji, FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已启动玩家选择单位的|cffFF0000群体施法判定|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA76_naji takes nothing returns nothing
    local unit u_naji
    local group g_naji
    local integer i_naji
    local integer z_naji
    local integer n_naji
    local real r_naji
    local boolean b_naji
    local location p_naji=GetSpellTargetLoc()
    if IsUnitInGroup(GetTriggerUnit(), Gms_naji) and ( GetSpellTargetUnit() != null or p_naji != null ) then
        set i_naji=GetUnitCurrentOrder(GetTriggerUnit())
        set z_naji=GetSpellAbilityId()
        set n_naji=GetUnitAbilityLevel(GetTriggerUnit(), z_naji)
        if GetSpellTargetUnit() != null then
            set g_naji=CreateGroup()
            set b_naji=IsUnitEnemy(GetSpellTargetUnit(), GetTriggerPlayer())
            call GroupEnumUnitsInRange(g_naji, GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), Distance_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetUnitX(GetSpellTargetUnit()) , GetUnitY(GetSpellTargetUnit())), null)
            loop
                exitwhen FirstOfGroup(g_naji) == null
                if IsUnitType(FirstOfGroup(g_naji), UNIT_TYPE_DEAD) == false and FirstOfGroup(g_naji) != GetSpellTargetUnit() and b_naji == IsUnitEnemy(FirstOfGroup(g_naji), GetTriggerPlayer()) then
                    set u_naji=CreateUnit(GetTriggerPlayer(), 'nvul', GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), Angle_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetUnitX(FirstOfGroup(g_naji)) , GetUnitY(FirstOfGroup(g_naji))))
                    call UnitAddAbility(u_naji, 'Aloc')
                    call UnitAddAbility(u_naji, 'Abun')
                    call UnitAddAbility(u_naji, 'AIbm')
                    call UnitAddAbility(u_naji, 'AI2m')
                    call UnitAddAbility(u_naji, 'AImb')
                    call UnitAddAbility(u_naji, 'AImz')
                    call UnitAddAbility(u_naji, 'AImv')
                    call UnitRemoveAbility(u_naji, 'Awan')
                    if UnitAddAbility(u_naji, 'Arav') then
                        call UnitRemoveAbility(u_naji, 'Arav')
                    endif
                    call SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
                    call ShowUnit(u_naji, false)
                    call UnitApplyTimedLife(u_naji, 'BTLF', 10)
                    call SetUnitUseFood(u_naji, false)
                    call SetUnitPathing(u_naji, false)
                    call SetUnitMoveSpeed(u_naji, 522)
                    call SetUnitTurnSpeed(u_naji, 1)
                    call SetUnitFlyHeight(u_naji, GetUnitFlyHeight(GetTriggerUnit()), 0)
                    call UnitAddType(u_naji, UNIT_TYPE_ANCIENT)
                    call UnitAddType(u_naji, UNIT_TYPE_PEON)
                    call UnitAddAbility(u_naji, z_naji)
                    call SetUnitAbilityLevel(u_naji, z_naji, n_naji)
                    call IssueTargetOrderById(u_naji, i_naji, FirstOfGroup(g_naji))
                endif
                call GroupRemoveUnit(g_naji, FirstOfGroup(g_naji))
            endloop
            call DestroyGroup(g_naji)
            set g_naji=null
        else
            set r_naji=0
            loop
                exitwhen r_naji >= 2
                set u_naji=CreateUnit(GetTriggerPlayer(), 'nvul', GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), Angle_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetLocationX(p_naji) , GetLocationY(p_naji)) - 30 + 60 * r_naji)
                call UnitAddAbility(u_naji, 'Aloc')
                call UnitAddAbility(u_naji, 'Abun')
                call UnitAddAbility(u_naji, 'AIbm')
                call UnitAddAbility(u_naji, 'AI2m')
                call UnitAddAbility(u_naji, 'AImb')
                call UnitAddAbility(u_naji, 'AImz')
                call UnitAddAbility(u_naji, 'AImv')
                call UnitRemoveAbility(u_naji, 'Awan')
                if UnitAddAbility(u_naji, 'Arav') then
                    call UnitRemoveAbility(u_naji, 'Arav')
                endif
                call SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
                call ShowUnit(u_naji, false)
                call UnitApplyTimedLife(u_naji, 'BTLF', 10)
                call SetUnitUseFood(u_naji, false)
                call SetUnitPathing(u_naji, false)
                call SetUnitMoveSpeed(u_naji, 522)
                call SetUnitTurnSpeed(u_naji, 1)
                call SetUnitFlyHeight(u_naji, GetUnitFlyHeight(GetTriggerUnit()), 0)
                call UnitAddType(u_naji, UNIT_TYPE_ANCIENT)
                call UnitAddType(u_naji, UNIT_TYPE_PEON)
                call UnitAddAbility(u_naji, z_naji)
                call SetUnitAbilityLevel(u_naji, z_naji, n_naji)
                call IssuePointOrderById(u_naji, i_naji, GetUnitX(GetTriggerUnit()) + Cos(0.01745 * ( Angle_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetLocationX(p_naji) , GetLocationY(p_naji)) - 30 + 60 * r_naji )) * Distance_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetLocationX(p_naji) , GetLocationY(p_naji)), GetUnitY(GetTriggerUnit()) + Sin(0.01745 * ( Angle_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetLocationX(p_naji) , GetLocationY(p_naji)) - 30 + 60 * r_naji )) * Distance_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetLocationX(p_naji) , GetLocationY(p_naji)))
                set r_naji=r_naji + 1
            endloop
        endif
    endif
    call RemoveLocation(p_naji)
    set p_naji=null
    set u_naji=null
endfunction
function TestA75_naji takes nothing returns nothing
    call RestartGame(true)
endfunction
function TestA74_naji takes nothing returns nothing
    local integer array i_naji
    local integer a_naji=2
    local integer b_naji=8
    local integer c_naji=8
    set i_naji[1]=S2ID_naji(SubString(GetEventPlayerChatString(), 3, 7))
    set i_naji[2]=0
    set i_naji[3]=GetPlayerId(GetTriggerPlayer()) + 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), b_naji, b_naji + 1)
        if Sdummy_naji[1] == "," then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(), c_naji, b_naji))
            set a_naji=a_naji + 1
            set c_naji=b_naji + 1
            if a_naji >= 3 then
                set i_naji[3]=S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
                exitwhen true
            endif
        endif
        set b_naji=b_naji + 1
        if b_naji >= StringLength(GetEventPlayerChatString()) then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
    endloop
    if i_naji[3] >= 1 and i_naji[3] <= 16 then
        call SetPlayerTechResearched(Player(i_naji[3] - 1), i_naji[1], i_naji[2])
        call SetPlayerTechMaxAllowed(Player(i_naji[3] - 1), i_naji[1], i_naji[2])
        call SetPlayerTechMaxAllowed(Player(i_naji[3] - 1), i_naji[1], i_naji[2])
        if i_naji[2] == 0 then
            call SetPlayerAbilityAvailable(Player(i_naji[3] - 1), i_naji[1], false)
        else
            call SetPlayerAbilityAvailable(Player(i_naji[3] - 1), i_naji[1], true)
        endif
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已对|cff00FFFF" + GetPlayerName(Player(i_naji[3] - 1)) + "|cffFF0000执行对应行为，若没有效果，请确认你是否输入了|cffFFFF00正确的物编ID|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家参数输入数值错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA73_naji takes nothing returns nothing
    local integer i_naji=S2ID_naji(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if StringLength(GetEventPlayerChatString()) <= 6 then
        if Iweather_naji >= 1 then
            loop
                call RemoveWeatherEffect(Weather_naji[Iweather_naji])
                set Iweather_naji=Iweather_naji - 1
                exitwhen Iweather_naji <= 0
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000删除|cffFFFF00所有已创建的全图天气|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00请输入|cffFF0000合法的天气ID|cffFFFF00，可点击|cffFF0000F9|cffFFFF00查看所有天气ID|r")
        endif
    else
        set Iweather_naji=Iweather_naji + 1
        set Weather_naji[Iweather_naji]=AddWeatherEffect(GetWorldBounds(), i_naji)
        call EnableWeatherEffect(Weather_naji[Iweather_naji], true)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已创建对应的天气。目前已有|cffFF0000" + I2S(Iweather_naji) + "|cffFFFF00个全图天气|r")
    endif
endfunction
function TestA72_naji takes nothing returns nothing
    call EnableUserControl(true)
    call ShowInterface(true, 0.01)
    call EnableOcclusion(true)
endfunction
function TestA71_naji takes nothing returns nothing
    if GetClickedButton() != Button_naji[100] then
        if GetClickedButton() == Button_naji[1] then
            if IsMapFlagSet(MAP_OBSERVERS_ON_DEATH) then
                call SetMapFlag(MAP_OBSERVERS_ON_DEATH, false)
            else
                call SetMapFlag(MAP_OBSERVERS_ON_DEATH, true)
            endif
        elseif GetClickedButton() == Button_naji[2] then
            if IsMapFlagSet(MAP_LOCK_RESOURCE_TRADING) then
                call SetMapFlag(MAP_LOCK_RESOURCE_TRADING, false)
            else
                call SetMapFlag(MAP_LOCK_RESOURCE_TRADING, true)
            endif
        elseif GetClickedButton() == Button_naji[3] then
            if IsMapFlagSet(MAP_RESOURCE_TRADING_ALLIES_ONLY) then
                call SetMapFlag(MAP_RESOURCE_TRADING_ALLIES_ONLY, false)
            else
                call SetMapFlag(MAP_RESOURCE_TRADING_ALLIES_ONLY, true)
            endif
        elseif GetClickedButton() == Button_naji[4] then
            if IsMapFlagSet(MAP_LOCK_ALLIANCE_CHANGES) then
                call SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES, false)
            else
                call SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES, true)
            endif
        elseif GetClickedButton() == Button_naji[5] then
            if IsMapFlagSet(MAP_ALLIANCE_CHANGES_HIDDEN) then
                call SetMapFlag(MAP_ALLIANCE_CHANGES_HIDDEN, false)
            else
                call SetMapFlag(MAP_ALLIANCE_CHANGES_HIDDEN, true)
            endif
        endif
        call DialogResetA3_naji()
        call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[2], true)
    endif
endfunction
function TestA70_naji takes nothing returns nothing
    call DialogResetA3_naji()
    call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[2], true)
endfunction
function TestA69_naji takes nothing returns nothing
    local real i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if i_naji >= 1 and i_naji <= 5 then
        call SetMapFlag(MAP_LOCK_SPEED, false)
        if i_naji == 1 then
            call SetGameSpeed(MAP_SPEED_SLOWEST)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000极慢|r")
        elseif i_naji == 2 then
            call SetGameSpeed(MAP_SPEED_SLOW)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000慢|r")
        elseif i_naji == 3 then
            call SetGameSpeed(MAP_SPEED_NORMAL)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000普通|r")
        elseif i_naji == 4 then
            call SetGameSpeed(MAP_SPEED_FAST)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000快|r")
        elseif i_naji == 5 then
            call SetGameSpeed(MAP_SPEED_FASTEST)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000极快|r")
        endif
    else
        call DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFF0000输入错误！请输入|cffFFFF001~5|cffFF0000之间的整数|r")
    endif
endfunction
function TestA68_naji takes nothing returns nothing
    call EndGame(true)
endfunction
function TestA67_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call SetUnitScale(u_naji, r_naji, r_naji, r_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00玩家选择的所有单位的缩放更改为原模型默认的|cffFF0000" + R2S(r_naji) + "|cffFFFF00倍|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA66_naji takes nothing returns nothing
    local integer i_naji
    set i_naji=0
    loop
        call DisplayTimedTextToPlayer(Player(i_naji), 0, 0, 15, "                              |cff00FFFF" + GetPlayerName(GetTriggerPlayer()) + "：|r" + GetEventPlayerChatString())
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
endfunction
function TestA65_naji takes nothing returns nothing
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "===============*****===============")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0目标坐标：|cffFFFF00(" + R2S(GetCameraTargetPositionX()) + "," + R2S(GetCameraTargetPositionY()) + "," + R2S(GetCameraTargetPositionZ()) + ")|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0源坐标：|cffFFFF00(" + R2S(GetCameraEyePositionX()) + "," + R2S(GetCameraEyePositionY()) + "," + R2S(GetCameraEyePositionZ()) + ")|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0X轴旋转角度/弧度：|cffFFFF00" + R2S(57.295 * GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)) + "/" + R2S(GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0Y轴旋转角度/弧度：|cffFFFF00" + R2S(57.295 * GetCameraField(CAMERA_FIELD_ROLL)) + "/" + R2S(GetCameraField(CAMERA_FIELD_ROLL)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0Z轴旋转角度/弧度：|cffFFFF00" + R2S(57.295 * GetCameraField(CAMERA_FIELD_ROTATION)) + "/" + R2S(GetCameraField(CAMERA_FIELD_ROTATION)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0Z轴偏移：|cffFFFF00" + R2S(GetCameraField(CAMERA_FIELD_ZOFFSET)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0镜头距离：|cffFFFF00" + R2S(GetCameraField(CAMERA_FIELD_TARGET_DISTANCE)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0远景截断距离：|cffFFFF00" + R2S(GetCameraField(CAMERA_FIELD_FARZ)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0镜头区域：|cffFFFF00" + R2S(GetCameraField(CAMERA_FIELD_FIELD_OF_VIEW)) + "|r")
endfunction
function TestA64_naji takes nothing returns nothing
    if GetLocalPlayer() == Ptest_naji then
        set Rcamera_naji[2]=57.29582 * GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)
        set Rcamera_naji[3]=57.29582 * GetCameraField(CAMERA_FIELD_ROTATION)
        if Bcamera_naji[1] then
            set Rcamera_naji[2]=Rcamera_naji[2] - 1
        endif
        if Bcamera_naji[2] then
            set Rcamera_naji[2]=Rcamera_naji[2] + 1
        endif
        if Bcamera_naji[3] then
            set Rcamera_naji[3]=Rcamera_naji[3] - 1
        endif
        if Bcamera_naji[4] then
            set Rcamera_naji[3]=Rcamera_naji[3] + 1
        endif
        call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, Rcamera_naji[2], 0.01)
        call SetCameraField(CAMERA_FIELD_ROTATION, Rcamera_naji[3], 0.01)
        call PanCameraToTimed(Rcamera_naji[0], Rcamera_naji[1], 0)
    endif
endfunction
function TestA63_naji takes nothing returns nothing
    local integer i_naji=0
    if GetTriggerEventId() == EVENT_PLAYER_ARROW_UP_UP then
        set Bcamera_naji[1]=false
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_DOWN_UP then
        set Bcamera_naji[2]=false
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_LEFT_UP then
        set Bcamera_naji[3]=false
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_RIGHT_UP then
        set Bcamera_naji[4]=false
    endif
    loop
        set i_naji=i_naji + 1
        if i_naji >= 5 then
            call DestroyTimer(Tcamera_naji)
            set Tcamera_naji=null
            exitwhen true
        endif
        if Bcamera_naji[i_naji] then
            exitwhen true
        endif
    endloop
endfunction
function TestA62_naji takes nothing returns nothing
    if Tcamera_naji == null then
        set Tcamera_naji=CreateTimer()
        call TimerStart(Tcamera_naji, 0.01, true, function TestA64_naji)
    endif
    set Rcamera_naji[0]=GetCameraTargetPositionX()
    set Rcamera_naji[1]=GetCameraTargetPositionY()
    if GetTriggerEventId() == EVENT_PLAYER_ARROW_UP_DOWN then
        set Bcamera_naji[1]=true
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_DOWN_DOWN then
        set Bcamera_naji[2]=true
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_LEFT_DOWN then
        set Bcamera_naji[3]=true
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_RIGHT_DOWN then
        set Bcamera_naji[4]=true
    endif
endfunction
function TestA61_naji takes nothing returns nothing
    if Bcamera_naji[0] then
        set Bcamera_naji[0]=false
        call DestroyTimer(Tcamera_naji)
        call DisableTrigger(Ttest_naji[58])
        call DisableTrigger(Ttest_naji[59])
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000关闭|cffFFFF00镜头模式|r")
    else
        set Bcamera_naji[0]=true
        call EnableTrigger(Ttest_naji[58])
        call EnableTrigger(Ttest_naji[59])
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10, "|cffFF0000开启|cffFFFF00镜头模式|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10, "|cffFF0000用上下左右对镜头进行调整，镜头距离请用|cffFFFF00'cd|cffFF0000代码，重置镜头请用|cffFFFF00'cr|cffFF0000代码|r")
    endif
endfunction
function TestA60_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if GetLocalPlayer() == GetTriggerPlayer() then
            call SetCameraTargetController(FirstOfGroup(g_naji), 0, 0, false)
        endif
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已锁定|cffFF0000玩家选择的第一个单位|cffFFFF00的镜头，按下|cffFF0000Ctrl+C|cffFFFF00可解锁|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA59_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call UnitRemoveBuffs(u_naji, true, true)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已清除玩家选择的所有单位的|cffFF0000魔法效果|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA58_naji takes nothing returns nothing
    local integer i_naji=0
    call ClearTextMessages()
    loop
        call DisplayTextToPlayer(Player(i_naji), 0, 0, "|cffFFFF00你已经被|cffFF0000踢出游戏|r")
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
endfunction
function TestA57_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
    if i_naji >= 0 and i_naji <= 15 then
        if GetPlayerSlotState(Player(i_naji)) == PLAYER_SLOT_STATE_PLAYING then
            if GetLocalPlayer() == Player(i_naji) then
                call TimerStart(CreateTimer(), 0, true, function TestA58_naji)
            endif
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已将|cffFF0000" + GetPlayerName(Player(i_naji)) + "|cffFFFF00踢出游戏！|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00这个玩家位|cffFF0000并不存在玩家|r")
        endif
    else
        call DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA56_naji takes nothing returns nothing
    local integer i_naji=S2ID_naji(SubString(GetEventPlayerChatString(), 3, 7))
    local group g_naji
    local item tt
    local integer z_naji=1
    if StringLength(GetEventPlayerChatString()) >= 8 then
        set z_naji=S2I(SubString(GetEventPlayerChatString(), 8, StringLength(GetEventPlayerChatString())))
        if z_naji <= 0 then
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000数值部分请输入|cffFFFF00大于0|cffFF0000的整数|r")
            return
        endif
    endif
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已执行对应行为，若没有效果，请确定你输入了正确的|cffFF0000物体编辑器ID|r")
        if UnitAddAbility(FirstOfGroup(g_naji), i_naji) == false then
            if StringLength(GetEventPlayerChatString()) >= 8 then
                call SetUnitAbilityLevel(FirstOfGroup(g_naji), i_naji, z_naji)
            else
                call UnitRemoveAbility(FirstOfGroup(g_naji), i_naji)
                call UnitMakeAbilityPermanent(FirstOfGroup(g_naji), false, i_naji)
            endif
        else
            call UnitMakeAbilityPermanent(FirstOfGroup(g_naji), true, i_naji)
            call SetUnitAbilityLevel(FirstOfGroup(g_naji), i_naji, z_naji)
        endif
        loop
            call CreateUnit(GetTriggerPlayer(), i_naji, GetUnitX(FirstOfGroup(g_naji)), GetUnitY(FirstOfGroup(g_naji)), 0)
            set tt=CreateItem(i_naji, GetUnitX(FirstOfGroup(g_naji)), GetUnitY(FirstOfGroup(g_naji)))
            if tt != null then
                call SetItemPlayer(tt, GetTriggerPlayer(), false)
                set tt=null
            endif
            call CreateDestructable(i_naji, GetUnitX(FirstOfGroup(g_naji)), GetUnitY(FirstOfGroup(g_naji)), 0, 1, 0)
            set z_naji=z_naji - 1
            exitwhen z_naji <= 0
        endloop
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA55_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            if IsUnitInGroup(u_naji, Guw_naji) then
                call SetUnitPathing(u_naji, true)
                call GroupRemoveUnit(Guw_naji, u_naji)
            else
                call SetUnitPathing(u_naji, false)
                call GroupAddUnit(Guw_naji, u_naji)
            endif
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已切换玩家选择的所有单位的|cffFFFF00触碰|cffFF0000状态|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA54_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if GetLocalPlayer() == GetTriggerPlayer() then
        if r_naji > 0 then
            call SetCameraField(CAMERA_FIELD_FARZ, r_naji, 0)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家当前镜头的远景截断距离为|cffFFFF00" + R2S(r_naji) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000数值错误！|cffFFFF00请输入|cffFF0000大于0|cffFFFF00的实数|r")
        endif
    endif
endfunction
function TestA53_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
    local group g_naji=CreateGroup()
    local unit u_naji
    if i_naji >= 0 and i_naji <= 15 then
        call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
        if FirstOfGroup(g_naji) != null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitOwner(u_naji, Player(i_naji), true)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家选择的所有单位|cffFFFF00的所有者已改变为|cffFF0000" + GetPlayerName(Player(i_naji)) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
    else
        call DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA52_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
    local integer z_naji=StringLength(GetEventPlayerChatString()) - 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
        if Sdummy_naji[1] == "," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji - 1
        if z_naji <= 0 then
            set z_naji=GetPlayerId(GetTriggerPlayer()) + 1
            exitwhen true
        endif
    endloop
    if z_naji <= 0 or z_naji >= 17 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
        return
    endif
    if i_naji >= 0 and i_naji <= 15 then
        if IsPlayerAlly(Player(i_naji), GetTriggerPlayer()) then
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_PASSIVE, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_XP, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_SPELLS, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_REQUEST, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_RESPONSE, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_PASSIVE, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_XP, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_VISION, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_SPELLS, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_REQUEST, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_RESPONSE, false)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" + GetPlayerName(Player(z_naji - 1)) + "|cffFFFF00和|cffFF0000" + GetPlayerName(Player(i_naji)) + "|cffFFFF00成为|cffFF0000敌人|r")
        else
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_PASSIVE, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_XP, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_SPELLS, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_REQUEST, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_RESPONSE, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_PASSIVE, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_XP, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_VISION, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_SPELLS, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_REQUEST, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_RESPONSE, true)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" + GetPlayerName(Player(z_naji - 1)) + "|cffFFFF00和|cffFF0000" + GetPlayerName(Player(i_naji)) + "|cffFFFF00成为|cffFF0000同盟|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA51_naji takes nothing returns nothing
    if GetLocalPlayer() == Ptest_naji then
        call ClearTextMessages()
        call ResetToGameCamera(0)
        loop
            call DestroyQuest(Q_naji[Iquest_naji])
            set Iquest_naji=Iquest_naji - 1
            exitwhen Iquest_naji == 0
        endloop
    endif
    loop
        call DestroyTrigger(Ttest_naji[Itrigger_naji])
        set Itrigger_naji=Itrigger_naji - 1
        exitwhen Itrigger_naji == 0
    endloop
    if Ttest_naji[0] != null then
        call DestroyTrigger(Ttest_naji[0])
    endif
    if Ibm_naji >= 1 then
        loop
            set Ibm_naji=Ibm_naji - 1
            call DestroyTextTag(Tbm_naji[Ibm_naji])
            set Tbm_naji[Ibm_naji]=null
            exitwhen Ibm_naji <= 0
        endloop
    endif
    loop
        call RemoveWeatherEffect(Weather_naji[Iweather_naji])
        set Iweather_naji=Iweather_naji - 1
        exitwhen Iweather_naji <= 0
    endloop
    call DialogDestroy(Dnaji_naji[0])
    call DialogDestroy(Dnaji_naji[1])
    call DialogDestroy(Dnaji_naji[2])
    call DestroyGroup(Gcd_naji[0])
    call DestroyGroup(Gcd_naji[1])
    call DestroyGroup(Gms_naji)
    call DestroyGroup(Guw_naji)
    call RemoveRegion(Rworld_naji)
    call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "|cffFF0000已移除|cffFFFF00najitest|cffFF0000测试系统")
endfunction
function TestA50_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call KillUnit(u_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00杀死|cffFF0000玩家选择的所有单位|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA49_naji takes nothing returns nothing
    local real array r_naji
    local integer a_naji=1
    local integer b_naji=3
    local integer c_naji=3
    set r_naji[1]=1
    set r_naji[2]=GetPlayerId(GetTriggerPlayer()) + 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), b_naji, b_naji + 1)
        if Sdummy_naji[1] == "," then
            set r_naji[a_naji]=S2R(SubString(GetEventPlayerChatString(), c_naji, b_naji))
            set a_naji=a_naji + 1
            set c_naji=b_naji + 1
            if a_naji >= 2 and c_naji < StringLength(GetEventPlayerChatString()) then
                set r_naji[2]=S2R(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
                exitwhen true
            endif
        endif
        set b_naji=b_naji + 1
        if b_naji >= StringLength(GetEventPlayerChatString()) then
            set r_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
    endloop
    if R2I(r_naji[2]) >= 1 and R2I(r_naji[2]) <= 16 then
        call SetMapFlag(MAP_USE_HANDICAPS, true)
        call SetPlayerHandicap(Player(R2I(r_naji[2]) - 1), r_naji[1])
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已设置|cff00FFFF" + GetPlayerName(Player(R2I(r_naji[2]) - 1)) + "|cffFF0000的生命障碍为|cffFFFF00" + R2S(r_naji[1]) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家参数输入数值错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA48_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    call SetTimeOfDayScale(r_naji / 100)
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置时间流逝速度为|cffFFFF00" + R2S(r_naji) + "%|r")
endfunction
function TestA47_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call SetUnitUserData(u_naji, i_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的自定义值为|cffFFFF00" + I2S(i_naji) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA46_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if i_naji >= 1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                if IsUnitType(u_naji, UNIT_TYPE_HERO) then
                    call SetHeroInt(u_naji, i_naji, true)
                    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有英雄的智力为|cffFFFF00" + I2S(i_naji) + "|r")
                endif
            endloop
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA45_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
       if i_naji >= 1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                if IsUnitType(u_naji, UNIT_TYPE_HERO) then
                    call SetHeroAgi(u_naji, i_naji, true)
                    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有英雄的敏捷为|cffFFFF00" + I2S(i_naji) + "|r")
                endif
            endloop
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA44_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if i_naji >= 1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                if IsUnitType(u_naji, UNIT_TYPE_HERO) then
                    call SetHeroStr(u_naji, i_naji, true)
                    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有英雄的力量为|cffFFFF00" + I2S(i_naji) + "|r")
                endif
            endloop
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA43_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            if IsUnitType(u_naji, UNIT_TYPE_HERO) then
                if GetHeroSkillPoints(u_naji) + i_naji >= 0 then
                    call UnitModifySkillPoints(u_naji, i_naji)
                else
                    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF80C0" + GetUnitName(u_naji) + "|cffFF0000的剩余技能点不能|cffFFFF00低于0|cffFF0000！|r")
                endif
            endif
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000增加玩家选择的所有英雄的技能点数：|cffFFFF00" + I2S(i_naji) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA42_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            if UnitAddAbility(u_naji, 'Arav') then
                call UnitRemoveAbility(u_naji, 'Arav')
            endif
            call SetUnitFlyHeight(u_naji, r_naji, 0)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的飞行高度为|cffFFFF00" + R2S(r_naji) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA41_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if r_naji > 0 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitAcquireRange(u_naji, r_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的主动攻击范围为|cffFFFF00" + R2S(r_naji) + "|r")
        else
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitAcquireRange(u_naji, GetUnitDefaultAcquireRange(u_naji))
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认主动攻击范围|cffFF0000。请输入|cffFFFF00大于0|cffFF0000的实数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA40_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if r_naji >= 0 and r_naji <= 1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitTurnSpeed(u_naji, r_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的转身速率为|cffFFFF00" + R2S(r_naji) + "|r")
        else
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitTurnSpeed(u_naji, GetUnitDefaultTurnSpeed(u_naji))
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认转身速率|cffFF0000。请输入|cffFFFF000~1|cffFF0000之间的实数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA39_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if r_naji >= 0 and r_naji <= 522 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitMoveSpeed(u_naji, r_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的移动速度为|cffFFFF00" + R2S(r_naji) + "|r")
        else
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitMoveSpeed(u_naji, GetUnitDefaultMoveSpeed(u_naji))
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认移动速度|cffFF0000。请输入|cffFFFF000~522|cffFF0000之间的实数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA38_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if r_naji >= 0 and r_naji <= 24 then
        call SetFloatGameState(GAME_STATE_TIME_OF_DAY, r_naji)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000当前时间设置为|cffFFFF00" + R2S(r_naji) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000请输入|cffFFFF000~24|cffFF0000之间的实数|r")
    endif
endfunction
function TestA37_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    call SetRandomSeed(i_naji)
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000随机种子设置为|cffFFFF00" + I2S(i_naji) + "|r")
endfunction
function TestA36_naji takes nothing returns nothing
    local group g_naji
    local unit u_naji
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local integer z_naji=StringLength(GetEventPlayerChatString()) - 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
        if Sdummy_naji[1] == "," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji - 1
        if z_naji <= 0 then
            set z_naji=1
            exitwhen true
        endif
    endloop
    if z_naji <= 0 or z_naji >= 7 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000第二参数输入错误！请输入|cffFFFF001~6|cffFF0000间的整数|r")
        return
    endif
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    set u_naji=FirstOfGroup(g_naji)
    if u_naji != null then
        if UnitItemInSlot(u_naji, z_naji - 1) != null then
            if i_naji <= 0 then
                set i_naji=0
            endif
            call SetItemCharges(UnitItemInSlot(u_naji, z_naji - 1), i_naji)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000该单位|cffFFFF00第" + I2S(z_naji) + "格物品栏|cffFF0000的可允次数设置为|cffFFFF00" + I2S(i_naji) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000该单位|cffFFFF00第" + I2S(z_naji) + "格物品栏|cffFF0000不存在物品|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA35_naji takes nothing returns nothing
    loop
        set Ibm_naji=Ibm_naji - 1
        call DestroyTextTag(Tbm_naji[Ibm_naji])
        set Tbm_naji[Ibm_naji]=null
        exitwhen Ibm_naji <= 0
    endloop
    call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "|cffFF0000已清除所有|cffFFFF00备忘文字|r")
endfunction
function TestA34_naji takes nothing returns nothing
    set Tbm_naji[Ibm_naji]=CreateTextTag()
    call SetTextTagText(Tbm_naji[Ibm_naji], SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())), 20 * 0.023 / 10)
    call SetTextTagPos(Tbm_naji[Ibm_naji], GetCameraTargetPositionX(), GetCameraTargetPositionY(), 0)
    call SetTextTagColor(Tbm_naji[Ibm_naji], 0, 255, 0, 255)
    set Ibm_naji=Ibm_naji + 1
endfunction
function TestA33_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if r_naji > 100 then
        set r_naji=1
    endif
    if r_naji < 0 then
        set r_naji=0
    endif
    set r_naji=r_naji / 100
    if GetLocalPlayer() == GetTriggerPlayer() then
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_AMBIENTSOUNDS, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_FIRE, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITMOVEMENT, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UI, r_naji)
    endif
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000你当前的音效音量为：|cffFFFF00" + I2S(R2I(r_naji * 100)) + "%|r")
endfunction
function TestA32_naji takes nothing returns nothing
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000骰得点数：|cffFFFF00" + I2S(GetRandomInt(1, 100)) + "|r")
endfunction
function TestA31_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if i_naji > 100 then
        set i_naji=100
    endif
    if i_naji < 0 then
        set i_naji=0
    endif
    if GetLocalPlayer() == GetTriggerPlayer() then
        call SetMusicVolume(R2I(I2R(i_naji) * 1.27))
    endif
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000你当前的音乐音量为：|cffFFFF00" + I2S(i_naji) + "%|r")
endfunction
function TestA30_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            if IsUnitPaused(u_naji) then
                call PauseUnit(u_naji, false)
            else
                call PauseUnit(u_naji, true)
            endif
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已切换玩家选择的所有单位的|cffFFFF00暂停状态|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA29_naji takes nothing returns nothing
    local texttag tt
    if Bir_naji then
        set Sdummy_naji[0]=I2S(R2I(GetEventDamage()))
    else
        set Sdummy_naji[0]=R2S(GetEventDamage())
    endif
    if Bddm_naji then
        if Bpn_naji then
            set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer()) + "（玩家" + I2S(GetPlayerId(GetTriggerPlayer()) + 1) + "）"
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetEventDamageSource())) + "（玩家" + I2S(GetPlayerId(GetOwningPlayer(GetEventDamageSource())) + 1) + "）"
        else
            set Sdummy_naji[3]=""
            set Sdummy_naji[4]=""
        endif
        if Bxy_naji then
            set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
            set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetEventDamageSource())) + "," + R2S(GetWidgetY(GetEventDamageSource())) + "）"
        else
            set Sdummy_naji[1]=""
            set Sdummy_naji[2]=""
        endif
        call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000受到了|cffFFFF00" + Sdummy_naji[0] + "|cffFF8000点伤害！|cff00FFFF伤害来源为|r" + Sdummy_naji[4] + "|cffFFFF00" + GetUnitName(GetEventDamageSource()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetEventDamageSource())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
    else
        if GetLocalPlayer() == Ptest_naji then
            set tt=CreateTextTag()
            call SetTextTagText(tt, Sdummy_naji[0], 13 * 0.023 / 10)
            call SetTextTagPosUnit(tt, GetTriggerUnit(), 0)
            call SetTextTagColor(tt, 255, 0, 0, 255)
            call SetTextTagVelocity(tt, 150 * 0.071 / 128 * Cos(Rdummy_naji * 0.01745), 150 * 0.071 / 128 * Sin(Rdummy_naji * 0.01745))
            call SetTextTagPermanent(tt, false)
            call SetTextTagLifespan(tt, 1)
            call SetTextTagFadepoint(tt, 0.8)
            set tt=null
            set Rdummy_naji=Rdummy_naji + 30
            if Rdummy_naji >= 360 then
                set Rdummy_naji=Rdummy_naji - 360
            endif
        endif
    endif
endfunction
function TestA28_naji takes nothing returns nothing
    if GetUnitAbilityLevel(GetTriggerUnit(), 'Aloc') == 0 then
        call TriggerRegisterUnitEvent(Ttest_naji[0], GetTriggerUnit(), EVENT_UNIT_DAMAGED)
    endif
endfunction
function TestA27_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local integer i_naji=0
    local integer z_naji
    loop
        call GroupEnumUnitsOfPlayer(g_naji, Player(i_naji), null)
        set z_naji=0
        loop
            exitwhen FirstOfGroup(g_naji) == null
            call GroupRemoveUnit(g_naji, FirstOfGroup(g_naji))
            set z_naji=z_naji + 1
        endloop
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15, "|cff00FFFF(" + I2S(i_naji + 1) + ")|cffFF0000" + GetPlayerName(Player(i_naji)) + "|r：|cffFF80C0总单位数|cffFFFF00" + I2S(z_naji) + "|r：|cffFF80C0金钱|cffFFFF00" + I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_GOLD)) + "|r：|cffFF80C0木头|cffFFFF00" + I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_LUMBER)) + "|r：|cffFF80C0已用/可用人口|cffFFFF00" + I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_FOOD_USED)) + "|r/|cffFFFF00" + I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_FOOD_CAP)))
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA26_naji takes nothing returns nothing
    if Bpause_naji then
        call PauseGame(false)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000继续游戏|r")
        set Bpause_naji=false
    else
        call PauseGame(true)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000暂停游戏|r")
        set Bpause_naji=true
    endif
endfunction
function TestA25_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call SetUnitTimeScale(u_naji, r_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的动画播放速率为|cffFFFF00" + R2S(r_naji) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA24_naji takes nothing returns nothing
    local integer array i_naji
    local integer a_naji=1
    local integer b_naji=4
    local integer c_naji=4
    local group g_naji
    local unit u_naji
    set i_naji[1]=0
    set i_naji[2]=0
    set i_naji[3]=0
    set i_naji[4]=0
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), b_naji, b_naji + 1)
        if Sdummy_naji[1] == "," then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(), c_naji, b_naji))
            set a_naji=a_naji + 1
            set c_naji=b_naji + 1
            if a_naji >= 4 then
                set i_naji[4]=S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
                exitwhen true
            endif
        endif
        set b_naji=b_naji + 1
        if b_naji >= StringLength(GetEventPlayerChatString()) then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
    endloop
    if i_naji[1] >= 0 and i_naji[1] <= 255 and i_naji[2] >= 0 and i_naji[2] <= 255 and i_naji[3] >= 0 and i_naji[3] <= 255 and i_naji[4] >= 0 and i_naji[4] <= 255 then
        set g_naji=CreateGroup()
        call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
        if FirstOfGroup(g_naji) != null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitVertexColor(u_naji, i_naji[1], i_naji[2], i_naji[3], i_naji[4])
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的染色为|cffFFFF00" + I2S(i_naji[1]) + "|cffFF0000,|cffFFFF00" + I2S(i_naji[2]) + "|cffFF0000,|cffFFFF00" + I2S(i_naji[3]) + "|cffFF0000,|cffFFFF00" + I2S(i_naji[4]) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
        call DestroyGroup(g_naji)
        set g_naji=null
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！请输入|cffFFFF000~255|cffFF0000之间的整数|r")
    endif
    set u_naji=null
endfunction
function TestA23_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
    local integer z_naji=StringLength(GetEventPlayerChatString()) - 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
        if Sdummy_naji[1] == "," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji - 1
        if z_naji <= 0 then
            set z_naji=GetPlayerId(GetTriggerPlayer()) + 1
            exitwhen true
        endif
    endloop
    if z_naji <= 0 or z_naji >= 17 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
        return
    endif
    if i_naji >= 0 and i_naji <= 15 then
        if GetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_ADVANCED_CONTROL) then
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_CONTROL, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_ADVANCED_CONTROL, false)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" + GetPlayerName(Player(z_naji - 1)) + "|cffFFFF00失去了|cffFF0000" + GetPlayerName(Player(i_naji)) + "|cffFFFF00的|cffFF0000控制权|r")
        else
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_CONTROL, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_ADVANCED_CONTROL, true)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" + GetPlayerName(Player(z_naji - 1)) + "|cffFFFF00获得了|cffFF0000" + GetPlayerName(Player(i_naji)) + "|cffFFFF00的|cffFF0000控制权|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA22_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    local integer i_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    set u_naji=FirstOfGroup(g_naji)
    if u_naji != null then
        set i_naji=GetUnitTypeId(u_naji)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "===============*****===============")
        if IsUnitType(u_naji, UNIT_TYPE_HERO) then
            set Sdummy_naji[0]=GetHeroProperName(u_naji)
        else
            set Sdummy_naji[0]="无"
        endif
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0单位名称/称谓：|cffFFFF00" + GetUnitName(u_naji) + "/" + Sdummy_naji[0] + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0ID256进制/10进制：|cffFFFF00" + ID2S_naji(GetUnitTypeId(u_naji)) + "/" + I2S(GetUnitTypeId(u_naji)) + "|r")
        //=========================以下部分1.24以下的版本需删除==============================
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0存储地址：|cffFFFF00" + I2S(GetHandleId(u_naji)) + "|r")
        //=========================以上部分1.24以下的版本需删除==============================
        if IsUnitRace(u_naji, RACE_HUMAN) then
            set Sdummy_naji[0]="人族"
        endif
        if IsUnitRace(u_naji, RACE_ORC) then
            set Sdummy_naji[0]="兽族"
        endif
        if IsUnitRace(u_naji, RACE_UNDEAD) then
            set Sdummy_naji[0]="不死族"
        endif
        if IsUnitRace(u_naji, RACE_NIGHTELF) then
            set Sdummy_naji[0]="暗夜精灵族"
        endif
        if IsUnitRace(u_naji, RACE_DEMON) then
            set Sdummy_naji[0]="恶魔"
        endif
        if IsUnitRace(u_naji, ConvertRace(0)) then
            set Sdummy_naji[0]="没有"
        endif
        if IsUnitRace(u_naji, ConvertRace(7)) then
            set Sdummy_naji[0]="其它"
        endif
        if IsUnitRace(u_naji, ConvertRace(8)) then
            set Sdummy_naji[0]="野外生物"
        endif
        if IsUnitRace(u_naji, ConvertRace(9)) then
            set Sdummy_naji[0]="平民"
        endif
        if IsUnitRace(u_naji, RACE_HUMAN) then
            set Sdummy_naji[0]="人族"
        endif
        if IsUnitRace(u_naji, ConvertRace(10)) then
            set Sdummy_naji[0]="动物"
        endif
        if IsUnitRace(u_naji, ConvertRace(11)) then
            set Sdummy_naji[0]="娜迦族"
        endif
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0种族/等级：|cffFFFF00" + Sdummy_naji[0] + "/" + I2S(GetUnitLevel(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0所属玩家/cj索引：|cffFFFF00" + GetPlayerName(GetOwningPlayer(u_naji)) + "/" + I2S(GetPlayerId(GetOwningPlayer(u_naji))) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0坐标：|cffFFFF00(" + R2S(GetUnitX(u_naji)) + "," + R2S(GetUnitY(u_naji)) + ")|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0面向角度/弧度：|cffFFFF00" + R2S(GetUnitFacing(u_naji)) + "/" + R2S(0.017 * GetUnitFacing(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0自定义值：|cffFFFF00" + I2S(GetUnitUserData(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0附加值：|cffFFFF00" + I2S(GetUnitPointValue(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0主动攻击范围当前/默认：|cffFFFF00" + R2S(GetUnitAcquireRange(u_naji)) + "/" + R2S(GetUnitDefaultAcquireRange(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0移动速度当前/默认：|cffFFFF00" + R2S(GetUnitMoveSpeed(u_naji)) + "/" + R2S(GetUnitDefaultMoveSpeed(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0转身速率当前/默认：|cffFFFF00" + R2S(GetUnitTurnSpeed(u_naji)) + "/" + R2S(GetUnitDefaultTurnSpeed(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0飞行高度当前/默认：|cffFFFF00" + R2S(GetUnitFlyHeight(u_naji)) + "/" + R2S(GetUnitDefaultFlyHeight(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0拥有buff数量全部/正面/负面：|cffFFFF00" + I2S(UnitCountBuffsEx(u_naji, true, true, false, false, true, true, false)) + "/" + I2S(UnitCountBuffsEx(u_naji, true, false, false, false, true, true, false)) + "/" + I2S(UnitCountBuffsEx(u_naji, false, true, false, false, true, true, false)) + "|r")
        set Sdummy_naji[0]=" "
        if IsUnitIdType(i_naji, UNIT_TYPE_MELEE_ATTACKER) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "近战，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_RANGED_ATTACKER) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "远程，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_STRUCTURE) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "建筑，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_HERO) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "英雄，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_GROUND) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "地面，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_FLYING) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "飞行，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_SUMMONED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "召唤单位，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_PLAGUED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "附带瘟疫，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_SNARED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "被束缚的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_STUNNED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "被眩晕的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_GIANT) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "泰坦，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_TAUREN) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "牛头人，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_UNDEAD) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "不死族，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_MECHANICAL) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "机械，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_ANCIENT) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "古树，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_PEON) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "工人，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_TOWNHALL) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "城镇大厅，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_SAPPER) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "地精工兵，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_POISONED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "中毒的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_POLYMORPHED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "被变形的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_SLEEPING) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "被催眠的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_RESISTANT) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "有抗性皮肤的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_ETHEREAL) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "处于虚无状态，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_MAGIC_IMMUNE) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "魔法免疫，"
        endif
        set Sdummy_naji[0]=SubString(Sdummy_naji[0], 1, StringLength(Sdummy_naji[0]) - 2)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0可识别类型：|cffFFFF00" + Sdummy_naji[0] + "||r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA21_naji takes nothing returns nothing
    if GetLocalPlayer() == GetTriggerPlayer() then
        call ResetToGameCamera(0)
    endif
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000重置镜头|r")
endfunction
function TestA20_naji takes nothing returns nothing
    if GetLocalPlayer() == GetTriggerPlayer() then
        call ClearTextMessages()
    endif
endfunction
function TestA19_naji takes nothing returns nothing
    if Bpn_naji then
        set Sdummy_naji[3]=GetPlayerName(GetOwningPlayer(GetTriggerUnit())) + "（玩家" + I2S(GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1) + "）"
    else
        set Sdummy_naji[3]=""
    endif
    if Bxy_naji then
        set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
        set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetKillingUnit())) + "," + R2S(GetWidgetY(GetKillingUnit())) + "）"
    else
        set Sdummy_naji[1]=""
        set Sdummy_naji[2]=""
    endif
    if GetTriggerPlayer() == null then
	    set unitnumber_lh=unitnumber_lh + 1
	    set createdunitnumber_lh=createdunitnumber_lh + 1
        call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0第一次进入地图,当前单位数：" + I2S(unitnumber_lh) + ",创建单位总数：" + I2S(createdunitnumber_lh) + "|r")
    else
        if Bpn_naji then
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetKillingUnit())) + "（玩家" + I2S(GetPlayerId(GetOwningPlayer(GetKillingUnit())) + 1) + "）"
        else
            set Sdummy_naji[4]=""
        endif
        set unitnumber_lh=unitnumber_lh - 1
        call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0死亡！凶手是：|r" + Sdummy_naji[4] + "|cffFFFF00" + GetUnitName(GetKillingUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetKillingUnit())) + "|cffFFFF00" + Sdummy_naji[2] + ",当前单位数：" + I2S(unitnumber_lh) + ",创建单位总数：" + I2S(createdunitnumber_lh) + "|r")
    endif
endfunction
function TestA18_naji takes nothing returns nothing
    call SetPlayerName(GetTriggerPlayer(), SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000你当前的名称为：|cffFFFF00" + GetPlayerName(GetTriggerPlayer()) + "|r")
endfunction
function TestA17_naji takes nothing returns nothing
    local location p_naji
    if Bpn_naji then
        set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer()) + "（玩家" + I2S(GetPlayerId(GetTriggerPlayer()) + 1) + "）"
    else
        set Sdummy_naji[3]=""
    endif
    if Bxy_naji then
        set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
        set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetOrderTarget())) + "," + R2S(GetWidgetY(GetOrderTarget())) + "）"
    else
        set Sdummy_naji[1]=""
        set Sdummy_naji[2]=""
    endif
    set Sdummy_naji[0]=OrderId2String(GetIssuedOrderId())
    if Sdummy_naji[0] == null then
        set Sdummy_naji[0]=UnitId2String(GetIssuedOrderId())
        if Sdummy_naji[0] == null then
            set Sdummy_naji[0]=IDidentify_naji(GetIssuedOrderId())
            if Sdummy_naji[0] == null or Sdummy_naji[0] == "Default string" then
                set Sdummy_naji[0]="null"
            else
                set Sdummy_naji[0]=Sdummy_naji[0] + "|cff00FF00" + ID2S_naji(GetIssuedOrderId())
            endif
        endif
    endif
    if GetOrderTargetUnit() == null then
        if GetOrderTargetDestructable() == null then
            if GetOrderTargetItem() == null then
                set p_naji=GetOrderPointLoc()
                if p_naji == null then
                    call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0发布了|cffFFFF00" + Sdummy_naji[0] + "|cffFF0000（" + I2S(GetIssuedOrderId()) + "）|r")
                else
                    call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0发布了|cffFFFF00" + Sdummy_naji[0] + "|cffFF0000（" + I2S(GetIssuedOrderId()) + "）|cff00FFFF目标点为|cffFFFF00（" + R2S(GetOrderPointX()) + "," + R2S(GetOrderPointY()) + "）|r")
                endif
                call RemoveLocation(p_naji)
                set p_naji=null
            else
                call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0发布了|cffFFFF00" + Sdummy_naji[0] + "|cffFF0000（" + I2S(GetIssuedOrderId()) + "）|cff00FFFF目标为|cffFFFF00" + GetItemName(GetOrderTargetItem()) + "|cffFF0000" + ID2S_naji(GetItemTypeId(GetOrderTargetItem())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
            endif
        else
            call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0发布了|cffFFFF00" + Sdummy_naji[0] + "|cffFF0000（" + I2S(GetIssuedOrderId()) + "）|cff00FFFF目标为|cffFFFF00" + GetDestructableName(GetOrderTargetDestructable()) + "|cffFF0000" + ID2S_naji(GetDestructableTypeId(GetOrderTargetDestructable())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
        endif
    else
        if Bpn_naji then
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetOrderTargetUnit())) + "（玩家" + I2S(GetPlayerId(GetOwningPlayer(GetOrderTargetUnit())) + 1) + "）"
        else
            set Sdummy_naji[4]=""
        endif
        call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0发布了|cffFFFF00" + Sdummy_naji[0] + "|cffFF0000（" + I2S(GetIssuedOrderId()) + "）|cff00FFFF目标为|r" + Sdummy_naji[4] + "|cffFFFF00" + GetUnitName(GetOrderTargetUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetOrderTargetUnit())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
    endif
endfunction
function TestA16_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call RemoveUnit(u_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00删除|cffFF0000玩家选择的所有单位|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA15_naji takes nothing returns nothing
    local real r_naji=S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if GetLocalPlayer() == GetTriggerPlayer() then
        if r_naji > 0 then
            call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, r_naji, 0)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家当前镜头的镜头距离为|cffFFFF00" + R2S(r_naji) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000数值错误！|cffFFFF00请输入|cffFF0000大于0|cffFFFF00的实数|r")
        endif
    endif
endfunction
function TestA14_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji
    local unit u_naji
    if i_naji >= 0 then
        set g_naji=CreateGroup()
        call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
        if FirstOfGroup(g_naji) != null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitAnimationByIndex(u_naji, i_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000播放玩家选择的所有单位的第|cffFFFF00" + I2S(i_naji) + "|cffFF0000号动作|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
        call DestroyGroup(g_naji)
        set g_naji=null
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！请输入|cffFFFF00大于0|cffFF0000的数值|r")
    endif
    set u_naji=null
endfunction
function TestA13_naji takes nothing returns nothing
    if Bfog_naji then
        call FogEnable(false)
        call FogMaskEnable(false)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000关闭|cffFFFF00阴影及战争迷雾|r")
        set Bfog_naji=false
    else
        call FogEnable(true)
        call FogMaskEnable(true)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000开启|cffFFFF00阴影及战争迷雾|r")
        set Bfog_naji=true
    endif
endfunction
function TestA12_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji
    local unit u_naji
    if i_naji >= 1 then
        set g_naji=CreateGroup()
        call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
        if FirstOfGroup(g_naji) != null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                if IsUnitType(u_naji, UNIT_TYPE_HERO) then
                    if GetUnitLevel(u_naji) <= i_naji then
                        call SetHeroLevel(u_naji, i_naji, true)
                    else
                        call UnitStripHeroLevel(u_naji, GetUnitLevel(u_naji) - i_naji)
                    endif
                endif
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000将玩家选择的所有英雄等级设置为|cffFFFF00" + I2S(i_naji) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
        call DestroyGroup(g_naji)
        set g_naji=null
        set u_naji=null
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！请输入|cffFFFF00大于1|cffFF0000的数值|r")
    endif
endfunction
function TestA11_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local integer z_naji=StringLength(GetEventPlayerChatString()) - 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
        if Sdummy_naji[1] == "," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji - 1
        if z_naji <= 0 then
            set z_naji=GetPlayerId(GetTriggerPlayer()) + 1
            exitwhen true
        endif
    endloop
    if z_naji <= 0 or z_naji >= 17 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000第二参数输入错误！请输入|cffFFFF001~16|cffFF0000间的整数|r")
        return
    endif
    call SetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_LUMBER) + i_naji)
    if i_naji > 0 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" + GetPlayerName(Player(z_naji - 1)) + "|cffFF0000增加了|cffFFFF00" + I2S(i_naji) + "|cffFF0000木头|r")
    elseif i_naji < 0 then
        set i_naji=i_naji * - 1
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" + GetPlayerName(Player(z_naji - 1)) + "|cffFF0000减少了|cffFFFF00" + I2S(i_naji) + "|cffFF0000木头|r")
    endif
endfunction
function TestA10_naji takes nothing returns nothing
    local integer i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local integer z_naji=StringLength(GetEventPlayerChatString()) - 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
        if Sdummy_naji[1] == "," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji - 1
        if z_naji <= 0 then
            set z_naji=GetPlayerId(GetTriggerPlayer()) + 1
            exitwhen true
        endif
    endloop
    if z_naji <= 0 or z_naji >= 17 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000第二参数输入错误！请输入|cffFFFF001~16|cffFF0000间的整数|r")
        return
    endif
    call SetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_GOLD) + i_naji)
    if i_naji > 0 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" + GetPlayerName(Player(z_naji - 1)) + "|cffFF0000增加了|cffFFFF00" + I2S(i_naji) + "|cffFF0000黄金|r")
    elseif i_naji < 0 then
        set i_naji=i_naji * - 1
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" + GetPlayerName(Player(z_naji - 1)) + "|cffFF0000减少了|cffFFFF00" + I2S(i_naji) + "|cffFF0000黄金|r")
    endif
endfunction
//=========================以下部分1.24以下的版本需删除==============================
function TestA9_naji takes nothing returns nothing
    local location p_naji=Location(0, 0)
    set Rhandle_naji=Rhandle_naji + 0.1
    if Rhandle_naji >= 60 then
        set Sdummy_naji[2]=R2S(Rhandle_naji - I2R(R2I(Rhandle_naji / 60)) * 60)
        if S2R(Sdummy_naji[2]) == 60 then
            set Sdummy_naji[2]="0.0"
        else
            set Sdummy_naji[2]=SubString(" " + Sdummy_naji[2], 1, StringLength(Sdummy_naji[2]) - 1)
        endif
        set Sdummy_naji[1]=" " + R2S(Rhandle_naji / 60)
        set Sdummy_naji[1]=SubString(Sdummy_naji[1], 1, StringLength(Sdummy_naji[1]) - 4) + "分" + Sdummy_naji[2] + "秒"
    else
        set Sdummy_naji[1]=" " + R2S(Rhandle_naji)
        set Sdummy_naji[1]=SubString(Sdummy_naji[1], 1, StringLength(Sdummy_naji[1]) - 2) + "秒"
    endif
    call DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFFFF00基准值：|r" + I2S(Ihandle_naji) + "|cffFFFF00——当前值：|r" + I2S(GetHandleId(p_naji)) + "|cffFFFF00——差值：|r" + I2S(GetHandleId(p_naji) - Ihandle_naji) + "|cffFFFF00——开启时间：|r" + Sdummy_naji[1])
    call RemoveLocation(p_naji)
    set p_naji=null
endfunction
//=========================以上部分1.24以下的版本需删除==============================
function TestA7_naji takes nothing returns nothing
    local group g_naji=CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call SetUnitState(u_naji, UNIT_STATE_LIFE, GetUnitState(u_naji, UNIT_STATE_MAX_LIFE))
            call SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
            call UnitResetCooldown(u_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000恢复了所有玩家选择单位的|cffFFFF00生命/魔法/冷却|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA6_naji takes nothing returns nothing
    local timer t_naji=GetExpiredTimer()
    local unit u_naji
    loop
        set u_naji=FirstOfGroup(Gcd_naji[0])
        exitwhen u_naji == null
        call GroupRemoveUnit(Gcd_naji[0], u_naji)
        call SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
        call UnitResetCooldown(u_naji)
    endloop
    call DestroyTimer(t_naji)
    set t_naji=null
    set u_naji=null
endfunction
function TestA5_naji takes nothing returns nothing
    local timer t_naji
    if IsUnitInGroup(GetTriggerUnit(), Gcd_naji[1]) then
        set t_naji=CreateTimer()
        call GroupAddUnit(Gcd_naji[0], GetTriggerUnit())
        call TimerStart(t_naji, 0, false, function TestA6_naji)
        set t_naji=null
    endif
endfunction
function TestA3_naji takes nothing returns nothing
    local location p_naji
    if Bpn_naji then
        set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer()) + "（玩家" + I2S(GetPlayerId(GetTriggerPlayer()) + 1) + "）"
    else
        set Sdummy_naji[3]=""
    endif
    if GetSpellTargetUnit() == null then
        if GetSpellTargetDestructable() == null then
            if GetSpellTargetItem() == null then
                set p_naji=GetSpellTargetLoc()
                if p_naji == null then
                    call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000施放了|cffFFFF00" + GetObjectName(GetSpellAbilityId()) + "|cffFF0000" + ID2S_naji(GetSpellAbilityId()) + "|r")
                else
                    call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000施放了|cffFFFF00" + GetObjectName(GetSpellAbilityId()) + "|cffFF0000" + ID2S_naji(GetSpellAbilityId()) + "|cff00FFFF目标点为|cffFFFF00（" + R2S(GetLocationX(p_naji)) + "," + R2S(GetLocationY(p_naji)) + "）|r")
                endif
                call RemoveLocation(p_naji)
                set p_naji=null
            else
                if Bxy_naji then
                    set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
                    set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetSpellTargetItem())) + "," + R2S(GetWidgetY(GetSpellTargetItem())) + "）"
                else
                    set Sdummy_naji[1]=""
                    set Sdummy_naji[2]=""
                endif
                call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000施放了|cffFFFF00" + GetObjectName(GetSpellAbilityId()) + "|cffFF0000" + ID2S_naji(GetSpellAbilityId()) + "|cff00FFFF目标为|cffFFFF00" + GetItemName(GetSpellTargetItem()) + "|cffFF0000" + ID2S_naji(GetItemTypeId(GetSpellTargetItem())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
            endif
        else
            if Bxy_naji then
                set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
                set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetSpellTargetDestructable())) + "," + R2S(GetWidgetY(GetSpellTargetDestructable())) + "）"
            else
                set Sdummy_naji[1]=""
                set Sdummy_naji[2]=""
            endif
            call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000施放了|cffFFFF00" + GetObjectName(GetSpellAbilityId()) + "|cffFF0000" + ID2S_naji(GetSpellAbilityId()) + "|cff00FFFF目标为|cffFFFF00" + GetDestructableName(GetSpellTargetDestructable()) + "|cffFF0000" + ID2S_naji(GetDestructableTypeId(GetSpellTargetDestructable())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
        endif
    else
        if Bpn_naji then
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetSpellTargetUnit())) + "（玩家" + I2S(GetPlayerId(GetOwningPlayer(GetSpellTargetUnit())) + 1) + "）"
        else
            set Sdummy_naji[4]=""
        endif
        if Bxy_naji then
            set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
            set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetSpellTargetUnit())) + "," + R2S(GetWidgetY(GetSpellTargetUnit())) + "）"
        else
            set Sdummy_naji[1]=""
            set Sdummy_naji[2]=""
        endif
        call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000施放了|cffFFFF00" + GetObjectName(GetSpellAbilityId()) + "|cffFF0000" + ID2S_naji(GetSpellAbilityId()) + "|cff00FFFF目标为|r" + Sdummy_naji[4] + "|cffFFFF00" + GetUnitName(GetSpellTargetUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetSpellTargetUnit())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
    endif
endfunction
function TestA8_naji takes nothing returns nothing
    if GetClickedButton() != Button_naji[0] and GetClickedButton() != Button_naji[100] then
        if GetClickedButton() == Button_naji[1] then
            if Bxy_naji then
                set Bxy_naji=false
            else
                set Bxy_naji=true
            endif
        elseif GetClickedButton() == Button_naji[2] then
            if Bid_naji then
                set Bid_naji=false
            else
                set Bid_naji=true
            endif
        elseif GetClickedButton() == Button_naji[3] then
            if Bpn_naji then
                set Bpn_naji=false
            else
                set Bpn_naji=true
            endif
        elseif GetClickedButton() == Button_naji[4] then
            if Bir_naji then
                set Bir_naji=false
            else
                set Bir_naji=true
            endif
        elseif GetClickedButton() == Button_naji[5] then
            if Bddm_naji then
                set Bddm_naji=false
            else
                set Bddm_naji=true
            endif
        endif
        call DialogResetA2_naji()
        call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[1], true)
    elseif GetClickedButton() == Button_naji[0] then
        call DialogResetA_naji()
        call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[0], true)
    endif
endfunction
function TestA4_naji takes nothing returns nothing
    local location p_naji
    local group g_naji
    local integer i_naji
    local unit u_naji
    if GetClickedButton() != Button_naji[0] and GetClickedButton() != Button_naji[100] then
        if GetClickedButton() == Button_naji[1] then
            if IsTriggerEnabled(Ttest_naji[2]) then
                call DisableTrigger(Ttest_naji[2])
            else
                call EnableTrigger(Ttest_naji[2])
            endif
        elseif GetClickedButton() == Button_naji[2] then
            if IsTriggerEnabled(Ttest_naji[15]) then
                call DisableTrigger(Ttest_naji[15])
            else
                call EnableTrigger(Ttest_naji[15])
            endif
        elseif GetClickedButton() == Button_naji[3] then
            if IsTriggerEnabled(Ttest_naji[17]) then
                call DisableTrigger(Ttest_naji[17])
            else
                call EnableTrigger(Ttest_naji[17])
            endif
        elseif GetClickedButton() == Button_naji[4] then
            if IsTriggerEnabled(Ttest_naji[26]) then
                call DestroyTrigger(Ttest_naji[0])
                call DisableTrigger(Ttest_naji[26])
                set Rdummy_naji=0
            else
                set Ttest_naji[0]=CreateTrigger()
                call TriggerAddCondition(Ttest_naji[0], Condition(function TestA29_naji))
                call EnableTrigger(Ttest_naji[26])
                set g_naji=CreateGroup()
                set i_naji=0
                loop
                    call GroupEnumUnitsOfPlayer(g_naji, Player(i_naji), null)
                    loop
                        set u_naji=FirstOfGroup(g_naji)
                        exitwhen u_naji == null
                        call GroupRemoveUnit(g_naji, u_naji)
                        if GetUnitAbilityLevel(u_naji, 'Aloc') == 0 then
                            call TriggerRegisterUnitEvent(Ttest_naji[0], u_naji, EVENT_UNIT_DAMAGED)
                        endif
                    endloop
                    set i_naji=i_naji + 1
                    exitwhen i_naji >= 16
                endloop
                set Rdummy_naji=0
                call DestroyGroup(g_naji)
                set g_naji=null
            endif
        elseif GetClickedButton() == Button_naji[5] then
            if IsTriggerEnabled(Ttest_naji[4]) then
                call DestroyGroup(Gcd_naji[1])
                call DisableTrigger(Ttest_naji[4])
            else
                set Gcd_naji[1]=CreateGroup()
                call EnableTrigger(Ttest_naji[4])
            endif
    //=========================以下部分1.24以下的版本需删除==============================
        elseif GetClickedButton() == Button_naji[6] then
            if IsTriggerEnabled(Ttest_naji[7]) then
                call DisableTrigger(Ttest_naji[7])
            else
                call EnableTrigger(Ttest_naji[7])
                set Ihandle_naji=0
                set Rhandle_naji=0
                set p_naji=Location(0, 0)
                set Ihandle_naji=GetHandleId(p_naji)
                call EnableTrigger(Ttest_naji[7])
                call RemoveLocation(p_naji)
                set p_naji=null
            endif
    //=========================以上部分1.24以下的版本需删除==============================
        elseif GetClickedButton() == Button_naji[7] then
            if IsTriggerEnabled(Ttest_naji[61]) then
                call DisableTrigger(Ttest_naji[61])
            else
                call EnableTrigger(Ttest_naji[61])
            endif
        elseif GetClickedButton() == Button_naji[8] then
            if IsTriggerEnabled(Ttest_naji[71]) then
                call DestroyGroup(Gms_naji)
                call DisableTrigger(Ttest_naji[71])
            else
                set Gms_naji=CreateGroup()
                call EnableTrigger(Ttest_naji[71])
            endif
        endif
        call DialogResetA_naji()
        call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[0], true)
    elseif GetClickedButton() == Button_naji[0] then
        call DialogResetA2_naji()
        call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[1], true)
    endif
    set u_naji=null
endfunction
function TestA2_naji takes nothing returns nothing
    call DialogResetA_naji()
    call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[0], true)
endfunction
//=====================================#功能函数结束=====================================
//=====================================$初始化函数开始=====================================
function TestA_naji takes nothing returns nothing
    local integer i_naji
    local integer row_naji=2769
    set Sdummy_naji[1]="2013/11/04"
    // 拥有测试权限
    if isTestPlayer[1 + GetPlayerId(GetTriggerPlayer())] or TEST_VERSION then
    // if udg_vip[1+GetPlayerId(GetTriggerPlayer())]>1 then
    	call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cff00FF00===============*****===============|r")
    	call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFF8000         开始初始化|cff00FFFFnajitest|cffFF8000测试代码|r")
    	call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFF80C0                代码版本：|cffFF0000V2.4|r")
    	call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cff00FF00              更新日期：|cffFF0000" + Sdummy_naji[1] + "|r")
    	call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFFFF00       需要查看所有可用代码请按下|cffFF0000F9|r")
    	call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFFFF00     任意玩家输入|cffFF0000'remove|cffFFFF00可清除该系统|r")
    	call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cff00FF00===============*****===============|r")
    	set Ptest_naji=GetTriggerPlayer()
    	set StringList_naji=".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
    	set Rworld_naji=CreateRegion()
    	call RegionAddRect(Rworld_naji, GetWorldBounds())
    	set Itrigger_naji=0
    	loop
    	    set Itrigger_naji=Itrigger_naji + 1
    	    set Ttest_naji[Itrigger_naji]=CreateTrigger()
    	    exitwhen Itrigger_naji >= 77
    	endloop
    	set Iquest_naji=0
    	loop
    	    set Iquest_naji=Iquest_naji + 1
    	    set Q_naji[Iquest_naji]=CreateQuest()
    	    call QuestSetIconPath(Q_naji[Iquest_naji], "Buildings\\Other\\TempArtB\\BTNTempB.blp")
    	    call QuestSetRequired(Q_naji[Iquest_naji], false)
    	    call QuestSetDiscovered(Q_naji[Iquest_naji], true)
    	    call QuestSetCompleted(Q_naji[Iquest_naji], false)
    	    exitwhen Iquest_naji >= 13
    	endloop
    	set i_naji=61
    	call QuestSetTitle(Q_naji[1], "|cffFF0000najitest帮助信息")
    	call QuestSetDescription(Q_naji[1], "|cff00FFFF注意：|r|n|cff00FFFF1、|cffFF0000*|cffFFFF00代表需要输入|cffFF80C0数字/文字，且其数量代表要输入多少个参数，参数之间用英文逗号隔开。多参数命令的第1参数必需输入，其它参数若空缺则系统会自动填补|r|n|cff00FFFF2、|cffFF0000(s)|cffFFFF00代表该代码功能可以同时作用|cffFF80C0玩家选择的所有单位|r|n|cff00FFFF3、|cffFFFF00很多功能都可以通过|cffFF80C0反复输入代码|cffFFFF00来切换|cffFF0000开/关|r|n|cff00FFFF4、|cffFFFF00为保持稳定，判定|cffFF80C0玩家选择单位|cffFFFF00没有同步系统数据，请确保在使用相关代码前|cffFF0000重新框选|cffFFFF00合适的单位|r|n|cff00FFFF5、|cffFFFF00大部分功能支持|cffFF0000负数|cffFFFF00，不支持负数的功能输入负值会|cffFF80C0还原默认设定|r|n|cff00FFFF6、|cffFFFF00使用者可以在任何时候|cffFF0000按下Esc|cffFFFF00重新获得用户控制权及关闭电影模式|r")
    	call QuestSetTitle(Q_naji[2], "|cffFF0000独立系统")
    	call QuestSetDescription(Q_naji[2], "|cffFFFF00'fengshu|cffFF0000(|rnajitest system|cffFF0000)|r|cffFFFF00'gms|cffFF0000(|r(Group Multiple Spell)|cffFF0000)|r|cffFFFF00'gcd|cffFF0000(|r(Group Cool Down)|cffFF0000)|r|n|n|cff00FFFF该系统包含众多测试功能，输入后会打开一个对话框")
    	call QuestSetTitle(Q_naji[3], "|cffFF0000单位-英雄（必须选择英雄）")
    	call QuestSetDescription(Q_naji[3], "|cffFFFF00'hl*|cffFF0000(|rset Hero(s) Level|cffFF0000)|r|cffFFFF00'hp*|cffFF0000(|radd Hero(s) skill Point|cffFF0000)|r|cffFFFF00'hs*|cffFF0000(|rset Hero(s) Str|cffFF0000)|r|cffFFFF00'ha*|cffFF0000(|rset Hero(s) Agi|cffFF0000)|r|cffFFFF00'hi*|cffFF0000(|rset Hero(s) Int|cffFF0000)|r")
    	call QuestSetTitle(Q_naji[4], "|cffFF0000单位-数值（必须选择单位）")
    	call QuestSetDescription(Q_naji[4], "|cffFFFF00'uts*|cffFF0000(|rUnit(s) Time Scale|cffFF0000)|r|cffFFFF00'uic**|cffFF0000(|rset Unit's Item Charge|cffFF0000)|r|cffFFFF00'um*|cffFF0000(|rset Unit(s) Move speed|cffFF0000)|r|cffFFFF00'uus*|cffFF0000(|rset Unit(s) tUrn Speed|cffFF0000)|r|cffFFFF00'uar*|cffFF0000(|rset Unit(s) Acquire Range|cffFF0000)|r|cffFFFF00'ufh*|cffFF0000(|rset Unit(s) Fly Height|cffFF0000)|r|cffFFFF00'ud*|cffFF0000(|rset Unit(s) user Data|cffFF0000)|r|cffFFFF00'us*|cffFF0000(|rset Unit(s) Scale|cffFF0000)|r|cffFFFF00'uvc****|cffFF0000(|rset Unit(s) Vertax Color|cffFF0000)|r|cffFFFF00'uxy**|cffFF0000(|rset Unit(s) XY|cffFF0000)|r")
    	call QuestSetTitle(Q_naji[5], "|cffFF0000单位-状态（必须选择单位）")
    	call QuestSetDescription(Q_naji[5], "|cffFFFF00'uh|cffFF0000(|rUnit(s) Healing|cffFF0000)|r|cffFFFF00'up|cffFF0000(|rUnit(s) Pause|cffFF0000)|r|cffFFFF00'ub|cffFF0000(|rUnit(s) Buff clear|cffFF0000)|r|cffFFFF00'uw|cffFF0000(|rUnit(s) Windwalk|cffFF0000)|r")
    	call QuestSetTitle(Q_naji[6], "|cffFF0000单位-特殊（必须选择单位）")
    	call QuestSetDescription(Q_naji[6], "|cffFFFF00'ua*|cffFF0000(|rplay Unit(s) Animation by index|cffFF0000)|r|cffFFFF00'ui|cffFF0000(|rUnit Information|cffFF0000)|r|cffFFFF00'uo*|cffFF0000(|rset Unit(s) Owner|cffFF0000)|r|cffFFFF00'uk|cffFF0000(|rUnit(s) Killed|cffFF0000)|r|cffFFFF00'co**|cffFF0000(|rCreate Object|cffFF0000)|r|cffFFFF00'ul|cffFF0000(|rUnit camera Lock|cffFF0000)|r|cffFFFF00'ur|cffFF0000(|rUnit(s) Remove|cffFF0000)|r|cffFFFF00'uii*|cffFF0000(|rUnit's Item Information|cffFF0000)|r")
    	call QuestSetTitle(Q_naji[7], "|cffFF0000玩家相关")
    	call QuestSetDescription(Q_naji[7], "|cffFFFF00'ag**/al**|cffFF0000(|rAdd Gold/Lumber|cffFF0000)|r|cffFFFF00'pc**|cffFF0000(|rPlayer Control|cffFF0000)|r|cffFFFF00'pa**|cffFF0000(|rset Player Alliance|cffFF0000)|r|cffFFFF00'pk*|cffFF0000(|rPlayer Kicked|cffFF0000)|r|cffFFFF00'ph**|cffFF0000(|rset Player Handicap|cffFF0000)|r|cffFFFF00'pn*|cffFF0000(|rPlayer Name|cffFF0000)|r|cffFFFF00'pt***|cffFF0000(|rPlayer Tech|cffFF0000)|r|cffFFFF00'psl|cffFF0000(|rPlayer Statistics List|cffFF0000)|r")
    	call QuestSetTitle(Q_naji[8], "|cffFF0000镜头相关")
    	call QuestSetDescription(Q_naji[8], "|cffFFFF00'cm|cffFF0000(|rCamera Mode|cffFF0000)|r|cffFFFF00'cd*|cffFF0000(|rCamera Distance|cffFF0000)|r|cffFFFF00'cr|cffFF0000(|rCamera Reset|cffFF0000)|r|cffFFFF00'ci|cffFF0000(|rCamera Information|cffFF0000)|r|cffFFFF00'cz*|cffFF0000(|rset Camera farZ|cffFF0000)|r")
    	call QuestSetTitle(Q_naji[9], "|cffFF0000其它")
    	call QuestSetDescription(Q_naji[9], "|cffFFFF00'fog|cffFF0000(|rFog|cffFF0000)|r|cffFFFF00'sc|cffFF0000(|rScreen Clear|cffFF0000)|r|cffFFFF00'rd|cffFF0000(|rRoll Dice|cffFF0000)|r|cffFFFF00'bm*|cffFF0000(|rBackup Message|cffFF0000)|r|cffFFFF00'cbm|cffFF0000(|rClear Backup Message|cffFF0000)|r|cffFFFF00'td*|cffFF0000(|rset Time of Day|cffFF0000)|r|cffFFFF00'ts*|cffFF0000(|rset Time of day Scale|cffFF0000)|r|cffFFFF00'we*|cffFF0000(|rWeather Effect|cffFF0000)|r|cffFFFF00'se*|cffFF0000(|rSystem Exchange|cffFF0000)|r|cffFFFF00'ef*|cffFF0000(|rExecute Function|cffFF0000)|r")
    	call QuestSetTitle(Q_naji[10], "|cffFF0000游戏设置")
    	call QuestSetDescription(Q_naji[10], "|cffFFFF00'mv*|cffFF0000(|rMusic Volume|cffFF0000)|r|cffFFFF00'sv*|cffFF0000(|rSound Volume|cffFF0000)|r|cffFFFF00'pg|cffFF0000(|rPause Game|cffFF0000)|r|cffFFFF00'rs*|cffFF0000(|rset Random Seed|cffFF0000)|r|cffFFFF00'gg|cffFF0000(|rGood Game|cffFF0000)|r|cffFFFF00'gs*|cffFF0000(|rset Game Speed|cffFF0000)|r|cffFFFF00'mf|cffFF0000(|rset Map Flag|cffFF0000)|r|cffFFFF00're|cffFF0000(|rRestart|cffFF0000)|r")
    	call QuestSetTitle(Q_naji[11], "|cffFF0000co命令帮助信息")
    	call QuestSetDescription(Q_naji[11], "|cffFF0000co命令可以创建单位、物品、可破坏物、添加删除技能、设置技能等级、删除buff。输入格式为'co+id+,+数值，数值对应创建物体的数量或技能等级，当没有输入数值时，默认为1。当单位已经拥有该技能，带有数值的'co命令会改变等级，不带数值的则会删除技能。|n|n|cffFFFF00Amov|cffFF0000(|r移动|cffFF0000)|r|cffFFFF00Abun|cffFF0000(|r货物保持|cffFF0000)|r|cffFFFF00Avul|cffFF0000(|r无敌|cffFF0000)|r|cffFFFF00AInv|cffFF0000(|r英雄物品栏|cffFF0000)|r|cffFFFF00ARal|cffFF0000(|r集结|cffFF0000)|r|cffFFFF00Arng|cffFF0000(|r复仇|cffFF0000)|r|cffFFFF00Awan|cffFF0000(|r游荡者|cffFF0000)|r|cffFFFF00Ane2|cffFF0000(|r选择单位|cffFF0000)|r|cffFFFF00Apiv|cffFF0000(|r永久隐形|cffFF0000)|r|cffFFFF00Adtg|cffFF0000(|r真实视域|cffFF0000)|r|cffFFFF00Aeth|cffFF0000(|r可见幽灵|cffFF0000)|r|cffFFFF00Arsk|cffFF0000(|r抗性皮肤|cffFF0000)|r|cffFFFF00Acmi|cffFF0000(|r魔法免疫|cffFF0000)|r")
    	call QuestSetTitle(Q_naji[12], "|cffFF0000we命令帮助信息")
    	call QuestSetDescription(Q_naji[12], "|cffFF0000注意乱输4位ID会游戏崩溃！输入的ID未满4位时会清除所有已创建的全图天气。|r|n|n|cffFFFF00RA(h/l)r|cffFF0000(|r白杨谷(大/小)雨|cffFF0000)|r|cffFFFF00MEds|cffFF0000(|r达拉然之盾|cffFF0000)|r|cffFFFF00FD(b/g/r/w)(h/l)|cffFF0000(|r地下城(蓝/绿/红/白)(浓/薄)雾|cffFF0000)|r|cffFFFF00RL(h/l)r|cffFF0000(|r洛丹伦(大/小)雨|cffFF0000)|r|cffFFFF00SN(b/h/l)s|cffFF0000(|r诺森德(暴/大/小)雪|cffFF0000)|r|cffFFFF00WO(c/l)w|cffFF0000(|r边缘之地(大/小)风|cffFF0000)|r|cffFFFF00Lr(a/m)a|cffFF0000(|r(日/月)光|cffFF0000)|r|cffFFFF00WNcw|cffFF0000(|r大风|cffFF0000)|r")
    	call QuestSetTitle(Q_naji[13], "|cffFF0000najitest基本信息")
    	call QuestSetDescription(Q_naji[13], "|cffFFFF00脚本作者：|cffFF0000najizhimo|r|n|cffFFFF00当前使用者：|cffFF0000" + GetPlayerName(Ptest_naji) + "|r|n|cffFFFF00更新日期：|cffFF0000" + Sdummy_naji[1] + "|n|cffFFFF00可用代码数量：|cffFF0000" + I2S(i_naji) + "|r|n|cffFFFF00注册触发数量：|cffFF0000" + I2S(Itrigger_naji) + "|r|n|cffFFFF00创建任务数量：|cffFF0000" + I2S(Iquest_naji) + "|r|n|cffFFFF00脚本行数：|cffFF0000" + I2S(row_naji) + "|n|cffFFFF00对此系统有任何提议请到|cffFF80C0百度魔兽地图编辑器贴吧|cffFFFF00发贴|r|n|cffFFFF00任意玩家输入|cffFF0000'remove|cffFFFF00可清除该系统|r")
    	call FlashQuestDialogButton()
    	//=========================naji system开始==============================
    	    //'fengshu(najitest system)
    	set Dnaji_naji[0]=DialogCreate()
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[1], GetTriggerPlayer(), "'fengshu", true)
    	call TriggerAddCondition(Ttest_naji[1], Condition(function TestA2_naji))
    	call TriggerRegisterDialogEvent(Ttest_naji[3], Dnaji_naji[0])
    	call TriggerAddCondition(Ttest_naji[3], Condition(function TestA4_naji))
    	    //Display Ability
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerUnitEvent(Ttest_naji[2], Player(i_naji), EVENT_PLAYER_UNIT_SPELL_EFFECT, null)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[2], Condition(function TestA3_naji))
    	call DisableTrigger(Ttest_naji[2])
    	    //Display Order
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerUnitEvent(Ttest_naji[15], Player(i_naji), EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER, null)
    	    call TriggerRegisterPlayerUnitEvent(Ttest_naji[15], Player(i_naji), EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, null)
    	    call TriggerRegisterPlayerUnitEvent(Ttest_naji[15], Player(i_naji), EVENT_PLAYER_UNIT_ISSUED_ORDER, null)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[15], Condition(function TestA17_naji))
    	call DisableTrigger(Ttest_naji[15])
    	    //Display Life
    	call TriggerRegisterEnterRegion(Ttest_naji[17], Rworld_naji, null)
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerUnitEvent(Ttest_naji[17], Player(i_naji), EVENT_PLAYER_UNIT_DEATH, null)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[17], Condition(function TestA19_naji))
    	call DisableTrigger(Ttest_naji[17])
    	    //Display Damage
    	call TriggerRegisterEnterRegion(Ttest_naji[26], Rworld_naji, null)
    	call TriggerAddCondition(Ttest_naji[26], Condition(function TestA28_naji))
    	call DisableTrigger(Ttest_naji[26])
    	    //No cd mana Cost
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerUnitEvent(Ttest_naji[4], Player(i_naji), EVENT_PLAYER_UNIT_SPELL_EFFECT, null)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[4], Condition(function TestA5_naji))
    	call DisableTrigger(Ttest_naji[4])
    	set Gcd_naji[0]=CreateGroup()
    	set Gcd_naji[1]=null
    	//=========================以下部分1.24以下的版本需删除==============================
    	    //Display Handle
    	call TriggerRegisterTimerEvent(Ttest_naji[7], 0.1, true)
    	call TriggerAddCondition(Ttest_naji[7], Condition(function TestA9_naji))
    	call DisableTrigger(Ttest_naji[7])
    	//=========================以上部分1.24以下的版本需删除==============================
    	    //Observer
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerChatEvent(Ttest_naji[61], Player(i_naji), "", false)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call DisableTrigger(Ttest_naji[61])
    	call TriggerAddCondition(Ttest_naji[61], Condition(function TestA66_naji))
    	    //Multiple Spell
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerUnitEvent(Ttest_naji[71], Player(i_naji), EVENT_PLAYER_UNIT_SPELL_EFFECT, null)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[71], Condition(function TestA76_naji))
    	call DisableTrigger(Ttest_naji[71])
    	set Gms_naji=null
    	    //系统信息调整
    	set Dnaji_naji[1]=DialogCreate()
    	call TriggerRegisterDialogEvent(Ttest_naji[6], Dnaji_naji[1])
    	call TriggerAddCondition(Ttest_naji[6], Condition(function TestA8_naji))
    	        //whether display widget XY
    	set Bxy_naji=true
    	        //whether display widget ID
    	set Bid_naji=true
    	        //whether display Player Name
    	set Bpn_naji=false
    	        //whether display Int or Real
    	set Bir_naji=true
    	        //change Display Damage Mode
    	set Bddm_naji=false
    	//=========================naji system结束==============================
    	//’uh(Unit(s) Healing)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[5], GetTriggerPlayer(), "'uh", true)
    	call TriggerAddCondition(Ttest_naji[5], Condition(function TestA7_naji))
    	//’ag**/al**(Add Gold/Lumber)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[8], GetTriggerPlayer(), "'ag", false)
    	call TriggerAddCondition(Ttest_naji[8], Condition(function TestA10_naji))
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[9], GetTriggerPlayer(), "'al", false)
    	call TriggerAddCondition(Ttest_naji[9], Condition(function TestA11_naji))
    	//’hl*(set Hero(s) Level)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[10], GetTriggerPlayer(), "'hl", false)
    	call TriggerAddCondition(Ttest_naji[10], Condition(function TestA12_naji))
    	//’fog(Fog)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[11], GetTriggerPlayer(), "'fog", true)
    	call TriggerAddCondition(Ttest_naji[11], Condition(function TestA13_naji))
    	if IsMapFlagSet(MAP_FOG_ALWAYS_VISIBLE) then
    	    set Bfog_naji=false
    	else
    	    set Bfog_naji=true
    	endif
    	//’ua*(play Unit(s) Animation by index)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[12], GetTriggerPlayer(), "'ua", false)
    	call TriggerAddCondition(Ttest_naji[12], Condition(function TestA14_naji))
    	//’cd(Camera Distance)
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerChatEvent(Ttest_naji[13], Player(i_naji), "'cd", false)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[13], Condition(function TestA15_naji))
    	//'ur(Unit(s) Remove)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[14], GetTriggerPlayer(), "'ur", true)
    	call TriggerAddCondition(Ttest_naji[14], Condition(function TestA16_naji))
    	//'pn(Player Name)
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerChatEvent(Ttest_naji[16], Player(i_naji), "'pn", false)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[16], Condition(function TestA18_naji))
    	//'sc(Screen Clear)
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerChatEvent(Ttest_naji[18], Player(i_naji), "'sc", true)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[18], Condition(function TestA20_naji))
    	//'cr(Camera Reset)
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerChatEvent(Ttest_naji[19], Player(i_naji), "'cr", true)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[19], Condition(function TestA21_naji))
    	//’ui(Unit Information)
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerChatEvent(Ttest_naji[20], Player(i_naji), "'ui", true)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[20], Condition(function TestA22_naji))
    	//’pc**(Player Control)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[21], GetTriggerPlayer(), "'pc", false)
    	call TriggerAddCondition(Ttest_naji[21], Condition(function TestA23_naji))
    	//'uvc****(set Unit(s) Vertex Color)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[22], GetTriggerPlayer(), "'uvc", false)
    	call TriggerAddCondition(Ttest_naji[22], Condition(function TestA24_naji))
    	//’uts*(Unit(s) Time Scale)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[23], GetTriggerPlayer(), "'uts", false)
    	call TriggerAddCondition(Ttest_naji[23], Condition(function TestA25_naji))
    	//’pg(Pause Game)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[24], GetTriggerPlayer(), "'pg", true)
    	call TriggerAddCondition(Ttest_naji[24], Condition(function TestA26_naji))
    	set Bpause_naji=false
    	//'psl(Player Statistics List)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[25], GetTriggerPlayer(), "'psl", true)
    	call TriggerAddCondition(Ttest_naji[25], Condition(function TestA27_naji))
    	//'up(Unit(s) Pause)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[27], GetTriggerPlayer(), "'up", true)
    	call TriggerAddCondition(Ttest_naji[27], Condition(function TestA30_naji))
    	//'mv*(Music Volume)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[28], GetTriggerPlayer(), "'mv", false)
    	call TriggerAddCondition(Ttest_naji[28], Condition(function TestA31_naji))
    	//'rd(Roll Dice)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[29], GetTriggerPlayer(), "'rd", true)
    	call TriggerAddCondition(Ttest_naji[29], Condition(function TestA32_naji))
    	//'sv*(Sound Volume)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[30], GetTriggerPlayer(), "'sv", false)
    	call TriggerAddCondition(Ttest_naji[30], Condition(function TestA33_naji))
    	//'bm*(Backup Message)
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerChatEvent(Ttest_naji[31], Player(i_naji), "'bm", false)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[31], Condition(function TestA34_naji))
    	set Ibm_naji=0
    	//'cbm(Clear Backup Message)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[32], GetTriggerPlayer(), "'cbm", true)
    	call TriggerAddCondition(Ttest_naji[32], Condition(function TestA35_naji))
    	//'uic**(set Unit's Item Charge)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[33], GetTriggerPlayer(), "'uic", false)
    	call TriggerAddCondition(Ttest_naji[33], Condition(function TestA36_naji))
    	//'rs*(set Random Seed)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[34], GetTriggerPlayer(), "'rs", false)
    	call TriggerAddCondition(Ttest_naji[34], Condition(function TestA37_naji))
    	//'td*(set Time of Day)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[35], GetTriggerPlayer(), "'td", false)
    	call TriggerAddCondition(Ttest_naji[35], Condition(function TestA38_naji))
    	//'um*(set Unit(s) Move speed)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[36], GetTriggerPlayer(), "'um", false)
    	call TriggerAddCondition(Ttest_naji[36], Condition(function TestA39_naji))
    	//'uus*(set Unit(s) tUrn Speed)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[37], GetTriggerPlayer(), "'uus", false)
    	call TriggerAddCondition(Ttest_naji[37], Condition(function TestA40_naji))
    	//'uar*(set Unit(s) Acquire Range)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[38], GetTriggerPlayer(), "'uar", false)
    	call TriggerAddCondition(Ttest_naji[38], Condition(function TestA41_naji))
    	//'ufh*(set Unit(s) Fly Height)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[39], GetTriggerPlayer(), "'ufh", false)
    	call TriggerAddCondition(Ttest_naji[39], Condition(function TestA42_naji))
    	//'hp*(add Hero(s) skill Point)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[40], GetTriggerPlayer(), "'hp", false)
    	call TriggerAddCondition(Ttest_naji[40], Condition(function TestA43_naji))
    	//'hs*(set Hero(s) Str)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[41], GetTriggerPlayer(), "'hs", false)
    	call TriggerAddCondition(Ttest_naji[41], Condition(function TestA44_naji))
    	//'ha*(set Hero(s) Agi)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[42], GetTriggerPlayer(), "'ha", false)
    	call TriggerAddCondition(Ttest_naji[42], Condition(function TestA45_naji))
    	//'hi*(set Hero(s) Int)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[43], GetTriggerPlayer(), "'hi", false)
    	call TriggerAddCondition(Ttest_naji[43], Condition(function TestA46_naji))
    	//'ud*(set Unit(s) user Data)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[44], GetTriggerPlayer(), "'ud", false)
    	call TriggerAddCondition(Ttest_naji[44], Condition(function TestA47_naji))
    	//'ts*(set Time of day Scale)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[45], GetTriggerPlayer(), "'ts", false)
    	call TriggerAddCondition(Ttest_naji[45], Condition(function TestA48_naji))
    	//'ph**(set Player Handicap)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[46], GetTriggerPlayer(), "'ph", false)
    	call TriggerAddCondition(Ttest_naji[46], Condition(function TestA49_naji))
    	//'uk(Unit(s) killed)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[47], GetTriggerPlayer(), "'uk", true)
    	call TriggerAddCondition(Ttest_naji[47], Condition(function TestA50_naji))
    	//'remove(remove najitest)
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerChatEvent(Ttest_naji[48], Player(i_naji), "'remove", true)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[48], Condition(function TestA51_naji))
    	//’pa**(set Player Alliance)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[49], GetTriggerPlayer(), "'pa", false)
    	call TriggerAddCondition(Ttest_naji[49], Condition(function TestA52_naji))
    	//'uo*(set Unit(s) Owner)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[50], GetTriggerPlayer(), "'uo", false)
    	call TriggerAddCondition(Ttest_naji[50], Condition(function TestA53_naji))
    	//'cz*(set Camera farZ)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[51], GetTriggerPlayer(), "'cz", false)
    	call TriggerAddCondition(Ttest_naji[51], Condition(function TestA54_naji))
    	//'uw(Unit(s) Windwalk)
    	set Guw_naji=CreateGroup()
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[52], GetTriggerPlayer(), "'uw", true)
    	call TriggerAddCondition(Ttest_naji[52], Condition(function TestA55_naji))
    	//'co**(Create Object)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[53], GetTriggerPlayer(), "'co", false)
    	call TriggerAddCondition(Ttest_naji[53], Condition(function TestA56_naji))
    	//'pk*(Player Kicked)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[54], GetTriggerPlayer(), "'pk", false)
    	call TriggerAddCondition(Ttest_naji[54], Condition(function TestA57_naji))
    	//'ub(Unit(s) Buff clear)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[55], GetTriggerPlayer(), "'ub", true)
    	call TriggerAddCondition(Ttest_naji[55], Condition(function TestA59_naji))
    	//'ul(Unit camera Lock)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[56], GetTriggerPlayer(), "'ul", true)
    	call TriggerAddCondition(Ttest_naji[56], Condition(function TestA60_naji))
    	//'cm(Camera Mode)
    	set Tcamera_naji=null
    	set Bcamera_naji[0]=false
    	set Bcamera_naji[1]=false
    	set Bcamera_naji[2]=false
    	set Bcamera_naji[3]=false
    	set Bcamera_naji[4]=false
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[57], GetTriggerPlayer(), "'cm", true)
    	call TriggerAddCondition(Ttest_naji[57], Condition(function TestA61_naji))
    	call DisableTrigger(Ttest_naji[58])
    	call TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_UP_DOWN)
    	call TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_DOWN_DOWN)
    	call TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_LEFT_DOWN)
    	call TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_RIGHT_DOWN)
    	call TriggerAddCondition(Ttest_naji[58], Condition(function TestA62_naji))
    	call DisableTrigger(Ttest_naji[59])
    	call TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_UP_UP)
    	call TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_DOWN_UP)
    	call TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_LEFT_UP)
    	call TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_RIGHT_UP)
    	call TriggerAddCondition(Ttest_naji[59], Condition(function TestA63_naji))
    	//'ci(Camera Information)
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerChatEvent(Ttest_naji[60], Player(i_naji), "'ci", true)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[60], Condition(function TestA65_naji))
    	//'us*(Unit(s) Scale)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[62], GetTriggerPlayer(), "'us", false)
    	call TriggerAddCondition(Ttest_naji[62], Condition(function TestA67_naji))
    	//'gg(Good Game)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[63], GetTriggerPlayer(), "'gg", true)
    	call TriggerAddCondition(Ttest_naji[63], Condition(function TestA68_naji))
    	//'gs*(set Game Speed)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[64], GetTriggerPlayer(), "'gs", false)
    	call TriggerAddCondition(Ttest_naji[64], Condition(function TestA69_naji))
    	//'mf(set Map Flag)
    	set Dnaji_naji[2]=DialogCreate()
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[65], GetTriggerPlayer(), "'mf", true)
    	call TriggerAddCondition(Ttest_naji[65], Condition(function TestA70_naji))
    	call TriggerRegisterDialogEvent(Ttest_naji[66], Dnaji_naji[2])
    	call TriggerAddCondition(Ttest_naji[66], Condition(function TestA71_naji))
    	//Esc
    	call TriggerRegisterPlayerEvent(Ttest_naji[67], GetTriggerPlayer(), EVENT_PLAYER_END_CINEMATIC)
    	call TriggerAddCondition(Ttest_naji[67], Condition(function TestA72_naji))
    	//'we(Weather Effect)
    	set Iweather_naji=0
    	set Weather_naji[0]=null
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[68], GetTriggerPlayer(), "'we", false)
    	call TriggerAddCondition(Ttest_naji[68], Condition(function TestA73_naji))
    	//'pt***(set Player Tech)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[69], GetTriggerPlayer(), "'pt", false)
    	call TriggerAddCondition(Ttest_naji[69], Condition(function TestA74_naji))
    	//'re(Restart)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[70], GetTriggerPlayer(), "'re", true)
    	call TriggerAddCondition(Ttest_naji[70], Condition(function TestA75_naji))
    	//'gms(Group Multiple Spell)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[72], GetTriggerPlayer(), "'gms", true)
    	call TriggerAddCondition(Ttest_naji[72], Condition(function TestA77_naji))
    	//'gcd(Group Cool Down)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[73], GetTriggerPlayer(), "'gcd", true)
    	call TriggerAddCondition(Ttest_naji[73], Condition(function TestA78_naji))
    	//'uii*(Unit's Item Information)
    	set i_naji=0
    	loop
    	    call TriggerRegisterPlayerChatEvent(Ttest_naji[74], Player(i_naji), "'uii", false)
    	    set i_naji=i_naji + 1
    	    exitwhen i_naji >= 16
    	endloop
    	call TriggerAddCondition(Ttest_naji[74], Condition(function TestA79_naji))
    	//'uxy**(set Unit(s) XY)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[75], GetTriggerPlayer(), "'uxy", false)
    	call TriggerAddCondition(Ttest_naji[75], Condition(function TestA80_naji))
    	//'se*(System Exchange)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[76], GetTriggerPlayer(), "'se", false)
    	call TriggerAddCondition(Ttest_naji[76], Condition(function TestA81_naji))
    	//'ef*(Execute Function)
    	call TriggerRegisterPlayerChatEvent(Ttest_naji[77], GetTriggerPlayer(), "'ef", false)
    	call TriggerAddCondition(Ttest_naji[77], Condition(function TestA82_naji))
    	call DestroyTrigger(GetTriggeringTrigger())
	endif
endfunction
function najitest takes nothing returns nothing
    local trigger t_naji=CreateTrigger()
    local integer i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(t_naji, Player(i_naji), "'fengshu", true)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(t_naji, Condition(function TestA_naji))
    set t_naji=null
endfunction
//=====================================$初始化函数结束=====================================
//===============najitest===============
function keyInput takes nothing returns nothing
 local string s= GetEventPlayerChatString()
 local player p= GetTriggerPlayer()
 local integer i= GetPlayerId(p) + 1
    set p=null
endfunction
function keyInputSystem takes nothing returns nothing
 local trigger t= CreateTrigger()
 local integer i= 1
	loop
		exitwhen i > PLAYER_COUNT
		call TriggerRegisterPlayerChatEvent(t, Player(i - 1), "", true)
		set i=i + 1
	endloop
	call TriggerAddAction(t, function keyInput)
	set t=null
endfunction
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
	call onProtectTaskTargetDead(ut)
	
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
	// 接受护送类任务
	call acceptProtectTask(u , it)
	// 接受杀怪类任务
	call acceptKillTask(u , it)
	
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
		set isTestPlayer[i]=false
		set reputation[i]=0
		set hitRate[i]=100
		set weaponExtraDamage[i]=0
		set extraDamage[i]=0
		set critRate[i]=0.05
		set critMultiple[i]=2
		set i=i + 1
	endloop
	// 初始化声音
	set hintSound=CreateSound("Sound\\Interface\\Hint.wav", false, false, false, $A, $A, "DefaultEAXON")
	call SetSoundParamsFromLabel(hintSound, "Hint")
	call SetSoundDuration(hintSound, $7D6)
	set warningSound=CreateSound("Sound\\Interface\\Warning.wav", false, false, false, $A, $A, "DefaultEAXON")
	call SetSoundParamsFromLabel(warningSound, "Warning")
	call SetSoundDuration(warningSound, $770)
	set questCompletedSound=CreateSound("Sound\\Interface\\QuestCompleted.wav", false, false, false, $A, $A, "DefaultEAXON")
	call SetSoundParamsFromLabel(questCompletedSound, "QuestCompleted")
	call SetSoundDuration(questCompletedSound, 5155)
endfunction
// 入口函数
function mapInit takes nothing returns nothing
	call initSelfDefinedGlobals() // 初始化全局变量
call InitSpawn() // 初始化刷怪系统
call initHeroSelection() // 初始化英雄选择系统
call initDenomSelection() // 初始化门派选择

	call initTasks() // 初始化任务

	call najitest() // 纳吉的测试代码
call keyInputSystem() // 初始化键盘输入系统
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
// Trigger: 0.01秒
//===========================================================================
function Trig_0_01___uActions takes nothing returns nothing
    call FogEnableOff()
    call FogMaskEnableOff()
    call mapInit()
endfunction
//===========================================================================
function InitTrig_0_01___u takes nothing returns nothing
    set gg_trg_0_01___u=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_0_01___u, 0.01)
    call TriggerAddAction(gg_trg_0_01___u, function Trig_0_01___uActions)
endfunction
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
    call DzSetUnitPosition(gg_unit_O106_0339, 0, 0)
    call DzSetUnitPosition(gg_unit_O105_0333, 0, 0)
    call DzSetUnitPosition(gg_unit_O104_0334, 0, 0)
    call DzSetUnitPosition(gg_unit_O100_0335, 0, 0)
    call DzSetUnitPosition(gg_unit_O103_0336, 0, 0)
    call DzSetUnitPosition(gg_unit_O102_0337, 0, 0)
    call DzSetUnitPosition(gg_unit_O101_0338, 0, 0)
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
    call InitTrig_0_01___u()
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
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs94757906")
call ExecuteFunc("FrameLibrary___init")
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
    call DefineStartLocation(3, - 8064.0, 4608.0)
    call DefineStartLocation(4, - 11904.0, 14016.0)
    call DefineStartLocation(5, - 12608.0, - 3968.0)
    call DefineStartLocation(6, 7808.0, 14016.0)
    call DefineStartLocation(7, 4800.0, - 3712.0)
    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction
//===========================================================================  
//===========================================================================  
//�Զ����¼� 
//===========================================================================
//===========================================================================   
//===========================================================================
//ϵͳ-TimerSystem
//===========================================================================




//Struct method generated initializers/callers:
function sa__Frame_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            if s__Frame_id[this] != 0 then
                call DzDestroyFrame(s__Frame_id[this])
            endif
            set s__Frame_id[this]=0
   return true
endfunction

function jasshelper__initstructs94757906 takes nothing returns nothing
    set st__Frame_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Frame_onDestroy,Condition( function sa__Frame_onDestroy))


endfunction

