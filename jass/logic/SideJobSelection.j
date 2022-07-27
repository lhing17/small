// 选择副职业

globals
    //--- 副职业物品---

    constant integer DOCTOR_ITEM = 'IXXX' // 选择医师的道具
    constant integer MERCHANT_ITEM = 'IXXX' // 选择商人的道具
    constant integer BLACKSMITH_ITEM = 'IXXX' // 选择铁匠的道具
    constant integer TREASURE_HUNTER_ITEM = 'IXXX' // 选择寻宝的道具

    constant integer SIDE_JOB_NUMBER = 4 // 副职业的数量
    integer array sideJobListItem
endglobals

function isSelectSideJob takes nothing returns boolean

endfunction


// 初始化选择副职
function initSideJobSelection takes nothing returns nothing
    set sideJobListItem[1] = DOCTOR_ITEM
    set sideJobListItem[2] = MERCHANT_ITEM
    set sideJobListItem[3] = BLACKSMITH_ITEM
    set sideJobListItem[4] = TREASURE_HUNTER_ITEM
endfunction

