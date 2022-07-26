// -- 引入其他依赖 --



// 系统放到最后
#include "systems/UnitAttack.j"
#include "systems/UseAbility.j"
#include "systems/UnitDamage.j"
#include "systems/UnitDeath.j"
#include "systems/ItemEvent.j"


globals

endglobals

// 入口函数
function mapInit takes nothing returns nothing

	call UnitAttack() // 注册单位攻击事件
	call UseAbility() // 注册使用技能事件
	call UnitDamage() // 注册任意单位伤害事件
	call UnitDeath() // 注册任意单位死亡事件
	call ItemEvent() // 注册物品相关事件
endfunction
