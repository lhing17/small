// -- 引入其他依赖 --

// 扩展库
#include "library/BlizzardAPI.j"
#include "library/DzAPI.j"
#include "library/UI.j"

// 刷怪
#include "systems/Spawn.j"

// 选择英雄
#include "systems/HeroSelection.j"

// 选择门派
#include "logic/DenomSelection.j"

// 通用系统
#include "systems/GeneralDebuff.j"

// 系统放到最后
#include "systems/KeyInput.j"
#include "systems/EverySecond.j"
#include "systems/UnitAttack.j"
#include "systems/UseAbility.j"
#include "systems/UnitDamage.j"
#include "systems/UnitDeath.j"
#include "systems/ItemEvent.j"


globals
	constant integer PLAYER_COUNT = 5
	// 悟性，决定技能升重的速度
	integer array intellect
	// 根骨，决定伤害暴击倍数
	integer array strength
	// 福缘，决定掉落物品的概率
	integer array luck
	// 医术，决定英雄血和蓝的恢复能力
	integer array medical

	constant integer LING_BO_WEI_BU = 'A000'
endglobals


function initSelfDefinedGlobals takes nothing returns nothing
	local integer i = 1
	loop
		exitwhen i > PLAYER_COUNT
		set intellect[i] = 0
		set strength[i] = 0
		set luck[i] = 0
		set medical[i] = 0
		set i = i + 1
	endloop
endfunction


// 入口函数
function mapInit takes nothing returns nothing
	call initSelfDefinedGlobals() // 初始化全局变量
	call InitSpawn() // 初始化刷怪系统
	call initHeroSelection() // 初始化英雄选择系统
	call initDenomSelection() // 初始化门派选择

	call keyInputSystem() // 初始化键盘输入系统
	call everySecond() // 每秒钟调用一次
	call UnitAttack() // 注册单位攻击事件
	call UseAbility() // 注册使用技能事件
	call UnitDamage() // 注册任意单位伤害事件
	call UnitDeath() // 注册任意单位死亡事件
	call ItemEvent() // 注册物品相关事件
endfunction
