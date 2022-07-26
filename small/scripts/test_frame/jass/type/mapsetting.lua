---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/06 11:47
---

local mapsetting = {}

local mt = {}
mapsetting.__index = mt

mt.type = 'mapsetting'
mt.name = ''

function mapsetting.init()
	local mapsetting_names={}
	for i = 1, #mapsetting_names do
		local ma = {}
		ma.name = mapsetting_names[i]
		setmetatable(ma, mapsetting)
		table.insert(mapsetting, ma)
	end
end

return mapsetting