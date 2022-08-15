// 命中公式 实际命中率=自己命中率/（自己命中率+别人闪避率）*[自己等级*2/（自己等级+对方等级）]
function hitFormula takes unit source, unit target returns real
    local integer sourceLevel = GetUnitLevel(source)
    local integer targetLevel = GetUnitLevel(target)
    // 敌人闪避暂时设定为等于等级
    local integer targetEvasion = targetLevel
    local integer i = 1 + GetPlayerId(GetOwningPlayer(source))
    local real hit = 0
    if i <= 5 then
        set hit = 1.0 * hitRate[i] / (hitRate[i] + targetEvasion) * sourceLevel * 2 / (sourceLevel + targetLevel)
    else
        // 敌方的命中是等级的5倍
        set hit = 1.0 * sourceLevel * 5 / (sourceLevel * 5 + targetEvasion) * sourceLevel * 2 / (sourceLevel + targetLevel)
    endif
    // 命中率在0.1到0.95之间
    if hit < 0.1 then
        set hit = 0.1
    elseif hit > 0.95 then
        set hit = 0.95
    endif
    return hit
endfunction

function showDamageWithEffects takes integer i, unit u, real damage, boolean critical returns nothing
	local integer criticalInt = 2
	local location loc = GetUnitLoc(u)
	local string damageStr = ""
	local integer j = 1
	local effect eff = null
	if critical then
		set criticalInt = 1
	endif
	if IsUnitEnemy(u, Player(0)) then
		if Player(i - 1) == GetLocalPlayer() and showDamage[i] then
			// 显示伤害
			set damageStr = I2S(R2I(damage) + 1)
			loop
				exitwhen j > StringLength(damageStr)
				set eff = AddSpecialEffect("war3mapImported\\SHZT1" + I2S(criticalInt) + "-" + SubStringBJ(damageStr, j, j) + ".mdx", GetUnitX(u) + 32 / 1.38 * (j - 1), GetUnitY(u))
				call EXSetEffectZ(eff, GetLocationZ(loc) + 80)
				call DestroyEffect(eff)
				set j = j + 1
			endloop
			if critical then
				set eff = AddSpecialEffect("war3mapImported\\SHZT11-10.mdx", GetUnitX(u) - 37 / 1.38, GetUnitY(u))
				call EXSetEffectZ(eff, GetLocationZ(loc) + 80)
				call DestroyEffect(eff)
			endif
		endif
	endif
	call RemoveLocation(loc)
	set loc = null
	set eff = null
endfunction

// 伤害公式 
// 基本伤害= 100
// 伤害 = （基本伤害 * (1+武器ed数值/100) + 直接最小/最大伤害增加值）  *  （1 + 0.01 * 招式 + 非武器ed/100) * (1 + 0.01 * 内力 + 技能系数/100) * {暴击倍数} + {元素伤害}
function damageFormula takes unit source, real coefficient, integer skillId returns real
    local real damage = 0
    local real baseDamage = 100
    local integer i = 1 + GetPlayerId(GetOwningPlayer(source))

    set damage = baseDamage * ( 1 + weaponExtraDamage[i] / 100) * (1 + 0.01 * GetHeroStr(source, true) + extraDamage[i] / 100) * (1 + 0.01 * GetHeroInt(source, true) + coefficient * GetUnitAbilityLevel(source, skillId) / 100) 

    return damage
endfunction


function dealDamage takes unit source, unit target, real damage returns nothing
    local integer i = 1 + GetPlayerId(GetOwningPlayer(source))
    local boolean critical = false
    // 触发暴击
    if GetRandomReal(0, 1) < critRate[i] then
        set damage = damage * critMultiple[i]
        set critical = true
    endif

    // 触发闪避
    if GetRandomReal(0, 1) > hitFormula(source, target) then
        set damage = 0
    endif

    // 触发格档？

    // 实际伤害
    if damage > 0 then
        call UnitDamageTarget(source, target, damage, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
        call showDamageWithEffects(i, target, damage, critical)
    endif
endfunction
    