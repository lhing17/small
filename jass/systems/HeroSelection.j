globals
    unit array heroList // 供选择的英雄列表
    group heroGroup
    boolean array hasHero // 玩家是否已经选择英雄
    unit array hero
    unit array heroInSelection // 正在选择的英雄
    string array heroDescription // 英雄描述
    real array heroBornPoint // 英雄出生点
endglobals


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
    local player p = GetTriggerPlayer()
	local integer i = 1 + GetPlayerId(p)
	local unit u = GetTriggerUnit()
    local integer j = 1

    if heroInSelection[i] == null or GetUnitTypeId(heroInSelection[i]) != GetUnitTypeId(u) then
        // 单击查看英雄描述
        set heroInSelection[i] = u
        loop
            exitwhen j > 7
            if u == heroList[j] then
                call DisplayTimedTextToPlayer(p, 0, 0, 15., heroDescription[j])
			    call playAttackAnimation(u)
                return
            endif
            set j = j + 1
        endloop
    else
        // 双击选取英雄
        set hero[i] = CreateUnit(p, GetUnitTypeId(u), heroBornPoint[1], heroBornPoint[2], 270)
        call SelectUnitRemoveForPlayer(u, p)
        call SelectUnitAddForPlayer(hero[i], p)
        call DestroyEffect(AddSpecialEffectTargetUnitBJ("overhead", hero[i], "Abilities\\Spells\\Other\\Awaken\\Awaken.mdl"))
        set hasHero[i] = true

        // TODO 其他选择英雄时的处理
    endif

    set p = null
    set u = null
endfunction


// 初始化英雄选择
function initHeroSelection takes nothing returns nothing
    local trigger t = CreateTrigger()
    local integer j = 1
    set heroList[1] = null // gg_unit_hero_1
    set heroList[2] = null // gg_unit_hero_2
    set heroList[3] = null // gg_unit_hero_3
    set heroList[4] = null // gg_unit_hero_4
    set heroList[5] = null // gg_unit_hero_5
    set heroList[6] = null // gg_unit_hero_6
    set heroList[7] = null // gg_unit_hero_7

    set heroDescription[1] = "英雄1描述"
    set heroDescription[2] = "英雄2描述"
    set heroDescription[3] = "英雄3描述"
    set heroDescription[4] = "英雄4描述"
    set heroDescription[5] = "英雄5描述"
    set heroDescription[6] = "英雄6描述"
    set heroDescription[7] = "英雄7描述"

    set heroBornPoint[1] = 0.0
    set heroBornPoint[2] = 0.0

    set j = 1
    loop
        exitwhen j > PLAYER_COUNT
        set hasHero[j] = false
        set hero[j] = null
        set heroInSelection[j] = null
        set j = j + 1
    endloop

    set heroGroup = CreateGroup()
    loop
        exitwhen j > 7
        call GroupAddUnit(heroGroup, heroList[j])
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > PLAYER_COUNT
        call TriggerRegisterPlayerSelectionEventBJ(t, Player(j - 1), true)
        set j = j + 1
    endloop
	call TriggerAddCondition(t, Condition(function canSelectHero))
	call TriggerAddAction(t, function selectHero)
    set t = null
endfunction
