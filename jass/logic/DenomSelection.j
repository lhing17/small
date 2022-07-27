globals
    constant integer KUI_HUA_ITEM = 'I000' // 选择葵花派的道具
    constant integer JU_JING_ITEM = 'I001' // 选择巨鲸帮的道具
    constant integer TIAN_YING_ITEM = 'I002' // 选择天鹰教的道具
    constant integer QING_LIANG_ITEM = 'I003' // 选择清凉寺的道具
    constant integer FEI_MA_ITEM = 'I004' // 选择飞马镖局的道具
    constant integer LU_JIA_ITEM = 'I005' // 选择陆家庄的道具
    constant integer JIN_DAO_ITEM = 'I006' // 选择金刀寨的道具
    constant integer TIAN_DI_ITEM = 'I007' // 选择天地会的道具

    constant integer DENOM_NUMBER = 8 // 门派数量
    integer array denomListItem
    integer array heroDenom // 英雄所在的门派
    string array denomName // 门派名称
    integer array denomFirst // 门派一技能
    integer array denomSecond // 门派二技能
    integer array denomThird // 门派三技能
    integer array denomFourth // 门派四技能
endglobals

function isJoinDenom takes unit u, item it returns boolean
    local integer i = 1
    loop
        exitwhen i > DENOM_NUMBER
        if GetItemTypeId(it) == denomListItem[i] then
            return true
        endif
        set i = i + 1
    endloop
    return false
endfunction

function joinDenom takes unit u, item it returns nothing
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)
    local integer j = 1
    loop
        exitwhen j > DENOM_NUMBER
        if GetItemTypeId(it) == denomListItem[j] then
            set heroDenom[i] = j
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
        set j = j + 1
    endloop
    set p = null
endfunction

// 初始化门派选择
function initDenomSelection takes nothing returns nothing

    local integer j = 1

    set denomListItem[1] = KUI_HUA_ITEM
    set denomListItem[2] = JU_JING_ITEM
    set denomListItem[3] = TIAN_YING_ITEM
    set denomListItem[4] = QING_LIANG_ITEM
    set denomListItem[5] = FEI_MA_ITEM
    set denomListItem[6] = LU_JIA_ITEM
    set denomListItem[7] = JIN_DAO_ITEM
    set denomListItem[8] = TIAN_DI_ITEM

    set denomName[1] = "葵花派"
    set denomFirst[1] = 'A000'
    set denomSecond[1] = 'A000'
    set denomThird[1] = 'A000'
    set denomFourth[1] = 'A000'
    set denomName[2] = "巨鲸帮"
    set denomFirst[2] = 'A001'
    set denomSecond[2] = 'A001'
    set denomThird[2] = 'A001'
    set denomFourth[2] = 'A001'
    set denomName[3] = "天鹰教"
    set denomFirst[3] = 'A002'
    set denomSecond[3] = 'A002'
    set denomThird[3] = 'A002'
    set denomFourth[3] = 'A002'
    set denomName[4] = "清凉寺"
    set denomFirst[4] = 'A003'
    set denomSecond[4] = 'A003'
    set denomThird[4] = 'A003'
    set denomFourth[4] = 'A003'
    set denomName[5] = "飞马镖局"
    set denomFirst[5] = 'A004'
    set denomSecond[5] = 'A004'
    set denomThird[5] = 'A004'
    set denomFourth[5] = 'A004'
    set denomName[6] = "陆家庄"
    set denomFirst[6] = 'A005'
    set denomSecond[6] = 'A005'
    set denomThird[6] = 'A005'
    set denomFourth[6] = 'A005'
    set denomName[7] = "金刀寨"
    set denomFirst[7] = 'A006'
    set denomSecond[7] = 'A006'
    set denomThird[7] = 'A006'
    set denomFourth[7] = 'A006'
    set denomName[8] = "天地会"
    set denomFirst[8] = 'A007'
    set denomSecond[8] = 'A007'
    set denomThird[8] = 'A007'
    set denomFourth[8] = 'A007'

    loop
        exitwhen j > PLAYER_COUNT
        set heroDenom[j] = 0
        call SaveStr(YDHT, GetHandleId(Player(j - 1)), GetHandleId(Player(j - 1)), GetPlayerName(Player(j - 1)))
        set j = j + 1
    endloop

endfunction

