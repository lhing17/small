---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/2 9:44
---

local common_util = require 'jass.util.common_util'
local unit = require 'jass.type.unit'
local group = {}
group.all_groups = {}
group.filter_unit = nil
group.enum_unit = nil

local mt = {}
group.__index = mt

mt.type='group'

function mt:destroy()
    group.all_groups[self.handle_id] = nil
end

function mt:clear()
    for k, _ in pairs(self.units) do
        self.units[k] = nil
    end
end

function mt:add_unit(u)
    self.units[u.handle_id] = u
end

function mt:remove_unit(u)
    if u then
        self.units[u.handle_id] = nil
    end
end

function mt:contains_unit(u)
    return not not self.units[u.handle_id]
end

function mt:enum_units(base_condition, br, count_limit)
    local counter = 0
    for _, v in pairs(unit.all_units) do
        if base_condition(v) then
            group.filter_unit = v
            if not br or br.fun() then
                if count_limit and counter >= count_limit then
                    return
                end
                self:add_unit(v)
                counter = counter + 1
            end
        end
    end
end

function mt:foreach(callback)
    for _, v in pairs(self.units) do
        group.enum_unit = v
        callback()
    end
end

function mt:get_first()
    for _, v in pairs(self.units) do
        return v
    end
end

function group.create()
    local g = setmetatable({}, group)
    g.handle_id = common_util.generate_handle_id()
    g.units = {}
    group.all_groups[g.handle_id] = g
    return g
end

return group