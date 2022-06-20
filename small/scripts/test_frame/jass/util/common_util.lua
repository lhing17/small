---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/1 11:43
---

local common = {}
local handle_id = {}

local math_random = math.random
-- 重写内置方法
--function math.random(m, n)
--    math.randomseed(tostring(os.time()):reverse():sub(1, 6))
--    if not m and not n then
--        return math_random()
--    end
--    return math_random(m, n)
--end


function common.generate_handle_id()
    local id = 0x100000001
    if #handle_id ~= 0 then
        id = handle_id[#handle_id] + 1
    end
    table.insert(handle_id, id)
    return id
end

function common.is_in_table(value, table)
    for _, v in ipairs(table) do
        if v == value then
            return true
        end
    end
    return false
end

return common