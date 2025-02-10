--SP_UTIL = NFS.load(SMODS.current_mod.path .. "/sarcpot_utils.lua")()
local sarcpot = SMODS.current_mod.path


SMODS.Atlas {
	key = "sarcpot_atlas",
	path = "sarcpot_atlas.png",
	px = 71,
	py = 95,
}

local path = SMODS.current_mod.path..'joker/'
for _,v in pairs(NFS.getDirectoryItems(path)) do
  assert(SMODS.load_file('joker/'..v))()
end

local path = SMODS.current_mod.path..'vouchers/'
for _,v in pairs(NFS.getDirectoryItems(path)) do
  assert(SMODS.load_file('vouchers/'..v))()
end


