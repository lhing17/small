--package.path = package.path .. ';scripts\\?.lua'



require 'utility'
require 'native'
require 'common'
require 'blizzard'
require 'war3map'
require 'runtime'

local console = require 'jass.console'

console.write(package.path)
console.write("hello juezhan3")

require 'util.log'
require 'util.common'
require 'util.api'
require 'util.id'
require 'util.order_id'

require 'entity.init'

require 'logic.common'
require 'logic.create_destructables'
require 'logic.create_units'
require 'logic.ydwe'
require 'logic.missile_system'
require 'logic.common_func'
require 'logic.mall'
require 'logic.miscellaneous'
require 'logic.ui'
require 'logic.elixir_system'
require 'logic.najitest'
require 'logic.equipment'
require 'logic.instances'

require 'logic.taohuadao'

require 'logic.zizhi'
require 'logic.zhenfa'
require 'logic.qiwu'
require 'logic.dzapi'
require 'logic.denom'
require 'logic.level_up'

require 'logic.smelt_weapon'

require 'logic.initial_save'
require 'logic.doNotChange'
require 'logic.experiences'
require 'logic.tasks'
require 'logic.challenge'
require 'logic.key_input'
require 'logic.enhancedDefense'
require 'logic.npcHint'
require 'logic.showHealthPoint'
require 'logic.talent'



main()


require 'util.general_bonus'
require 'util.general_buff'
require 'util.map'

local logic = require 'logic.init'


local kungfu = require 'kungfu.init'

local function init()
    logic.init()
    kungfu.init()
    for k, v in pairs(require 'jass.japi') do
        log.info(k)
    end
end

init()
