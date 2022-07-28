globals
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
trigger gg_trg_firstOccur= null
trigger gg_trg_firstOccur_2= null
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
native EXGetEventDamageData takes integer edd_type returns integer
native EXSetEventDamage takes real amount returns boolean
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
native EXSetAbilityAEmeDataA takes ability abil,integer unitid returns boolean
native EXGetItemDataString takes integer itemcode,integer data_type returns string
native EXSetItemDataString takes integer itemcode,integer data_type,string value returns boolean
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
    function FrameLibrary__init takes nothing returns nothing
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
//   Date: Thu Jul 28 22:12:35 2022
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

// japi



































	//library DzAPI ends
// japi






























//library DzAPI:
function GetPlayerServerValueSuccess takes player whichPlayer returns boolean
	if ( DzAPI_Map_GetServerValueErrorCode(whichPlayer) == 0 ) then
		return true
	else
		return false
	endif
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
 local string l__S
	if ( value == 0 ) then
		set l__S="0"
	else
		set l__S=I2S(value)
		call DzAPI_Map_Ladder_SetStat(whichPlayer, key, l__S)
	endif
	//call DzAPI_Map_Ladder_SetStat(whichPlayer,key,S)
	set l__S=null
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

call ExecuteFunc("jasshelper__initstructs184855093")
call ExecuteFunc("FrameLibrary__init")
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
function sa__Frame_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            if s__Frame_id[this] != 0 then
                call DzDestroyFrame(s__Frame_id[this])
            endif
            set s__Frame_id[this]=0
   return true
endfunction

function jasshelper__initstructs184855093 takes nothing returns nothing
    set st__Frame_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Frame_onDestroy,Condition( function sa__Frame_onDestroy))


endfunction

