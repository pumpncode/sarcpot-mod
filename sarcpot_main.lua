SMODS.current_mod.optional_features = { cardareas = { discard = true, deck = true } }

G.SP = {}
G.SP.C = {}
G.SP.FUNCS = {}
local sarcpot = SMODS.current_mod.path
SMODS.Atlas {
  key = 'modicon',
  px = 32,
  py = 32,
  path = 'modicon.png'
}
SMODS.Atlas {
  key = 'tags',
  px = 32,
  py = 32,
  path = 'tags.png'
}
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
SMODS.Atlas {
	key = "consumables",
	path = "consumables.png",
	px = 71,
	py = 95,
}
SMODS.Atlas {
	key = "enhancements",
	path = "enhancements.png",
	px = 71,
	py = 95,
}
SMODS.Atlas {
	key = "boosters",
	path = "boosters.png",
	px = 71,
	py = 95,
}
G.SP.C.travel_1 = HEX("DEB940")
G.SP.C.travel_2 = HEX("fab411")
G.SP.C.navy = HEX("534c8a")
G.SP.C.light_navy = HEX("625aa3")
SMODS.ConsumableType({
    key = "Travel",
    primary_colour = G.SP.C.travel_1,
    secondary_colour = G.SP.C.travel_2,
    loc_txt = {
        name = "Travel Card",
        collection = "Travel Cards",
        undiscovered = {
            name = 'Unknown Travel Card',
            text = {
                'Find this card in an unseeded',
                'run to find out what it does'
            }
        }
    },
    collection_rows = {4, 4},
    shop_rate = 0,
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

local path = SMODS.current_mod.path..'tags/'
for _,v in pairs(NFS.getDirectoryItems(path)) do
  assert(SMODS.load_file('tags/'..v))()
end

local path = SMODS.current_mod.path..'enhancements/'
for _,v in pairs(NFS.getDirectoryItems(path)) do
  assert(SMODS.load_file('enhancements/'..v))()
end

local path = SMODS.current_mod.path..'boosters/'
for _,v in pairs(NFS.getDirectoryItems(path)) do
  assert(SMODS.load_file('boosters/'..v))()
end