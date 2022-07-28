function everySecondAction takes nothing returns nothing
    local group g = CreateGroup()
    local unit u = null
    local real x = 0
    local real y = 0
    local real rand = 0
    call GroupEnumUnitsInRect(g, bj_mapInitialPlayableArea, null)

    loop
        set u = FirstOfGroup(g)
        exitwhen u == null
        if IsUnitAliveBJ(u) then
            if UnitHasBuffBJ(u, 'BEsh') then
                // 中毒 每秒扣0.1%生命值
                call percentDamage(u, 0.1, true)
            endif
            if UnitHasBuffBJ(u, 'B006') then
                // 深度中毒 每秒扣0.3%生命值
                call percentDamage(u, 0.3, true)
            endif
            if UnitHasBuffBJ(u, 'B001') then
                // 流血 每秒扣0.2%生命值
                call percentDamage(u, 0.2, true)
            endif
            if UnitHasBuffBJ(u, 'B004') then
                // 血流不止 每秒扣0.4%生命值
                call percentDamage(u, 0.4, true)
            endif
            if((UnitHasBuffBJ(u, 'Bcri')))then
                // 混乱 随机移动
                set rand = GetRandomReal(0, 360.)
                set x = GetUnitX(u) + 256 * CosBJ(rand)
                set y = GetUnitY(u) + 256 * SinBJ(rand)
                call IssuePointOrderById(u, $D0012, x, y)
            endif
        endif
        call GroupRemoveUnit(g, u)
    endloop

    call DestroyGroup(g)
    set g = null
    set u = null
endfunction



function everySecond takes nothing returns nothing
    call TimerStart(CreateTimer(), 1, true, function everySecondAction)
endfunction
