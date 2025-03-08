G.SP = {}
G.SP.C = {}
G.SP.FUNCS = {}
local sarcpot = SMODS.current_mod.path


SMODS.Atlas {
	key = "sarcpot_atlas",
	path = "sarcpot_atlas.png",
	px = 71,
	py = 95,
}

SMODS.Atlas {
	key = "vouchers",
	path = "vouchers.png",
	px = 71,
	py = 95,
}
G.SP.C.postcard_1 = HEX("DEB940")
G.SP.C.postcard_2 = HEX("dbac1f")

SMODS.ConsumableType({
    key = "Postcard",
    primary_colour = G.SP.C.postcard_1,
    secondary_colour = G.SP.C.postcard_2,
    loc_txt = {
        name = "Postcard",
        collection = "Postcards",
        undiscovered = {
            name = 'Unknown PostCard',
            text = {
                'Find this card in an unseeded',
                'run to find out what it does'
            }
        }
    },
    collection_rows = {4, 3},
    shop_rate = 2,
    default = 'c_sarc_brittle_hollow'
})


local path = SMODS.current_mod.path..'joker/'
for _,v in pairs(NFS.getDirectoryItems(path)) do
  assert(SMODS.load_file('joker/'..v))()
end

local path = SMODS.current_mod.path..'vouchers/'
for _,v in pairs(NFS.getDirectoryItems(path)) do
  assert(SMODS.load_file('vouchers/'..v))()
end


local path = SMODS.current_mod.path..'consumables/'
for _,v in pairs(NFS.getDirectoryItems(path)) do
  assert(SMODS.load_file('consumables/'..v))()
end

