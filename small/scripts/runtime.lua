local runtime = require 'jass.runtime'
local console = require 'jass.console'

local tostring = tostring
local debug = debug

base = {}
--判断是否是发布版本
-- base.release = not pcall(require, 'lua.currentpath')
--base.release = false
base.profile = 'test'

--- 游戏版本
base.version = "1.0.0"

--打开控制台
if base.profile ~= 'release' then
    console.enable = true
end

--重载print,自动转换编码
-- print = console.write

runtime.handle_level = 2
runtime.sleep = true
runtime.error_handle = function(msg)
    console.write("---------------------------------------")
    console.write("              LUA ERROR!!              ")
    console.write("---------------------------------------")
    console.write(tostring(msg) .. "\n")
    console.write(debug.traceback())
    console.write("---------------------------------------")
end

runtime.debugger = 4279

--测试版本和发布版本的脚本路径
if base.profile == 'release' then
    package.path = package.path .. [[;Poi\]] .. base.version .. [[\?.lua;scripts\?.lua]]
else
    package.path = package.path .. ';D:/IdeaProjects/small/small/scripts\\?.lua'
end

