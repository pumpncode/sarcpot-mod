--SP_UTIL = NFS.load(SMODS.current_mod.path .. "/sarcpot_utils.lua")()
local sarcpot = SMODS.current_mod.path


SMODS.Atlas {
	key = "sarcpot_atlas",
	path = "sarcpot_atlas.png",
	px = 71,
	py = 95,
}

local ENABLED_JOKERS = {
	"garlic_bread",
	"green_carnation",
	"labrys"
}


local path = SMODS.current_mod.path..'joker/'
for _,v in pairs(NFS.getDirectoryItems(path)) do
  assert(SMODS.load_file('joker/'..v))()
end


--for i = 1, #ENABLED_JOKERS do
	--local status, err = pcall(function()
		--assert(SMODS.load_file(SMODS.current_mod.path .. "joker/" .. ENABLED_JOKERS[i] .. ".lua"))()
	--end)
	--if not status then
		--error(ENABLED_JOKERS[i] .. ": " .. err)
	--end
--end

