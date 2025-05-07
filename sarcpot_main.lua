SARC = {}

SMODS.current_mod.optional_features = {
    cardareas = {
        discard = true,
        deck = true
    }
}

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
    py = 95
}

SMODS.Atlas {
    key = "vouchers",
    path = "vouchers.png",
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = "consumables",
    path = "consumables.png",
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = "enhancements",
    path = "enhancements.png",
    px = 71,
    py = 95
}
SMODS.Atlas {
    key = "boosters",
    path = "boosters.png",
    px = 71,
    py = 95
}
G.SP.C.travel_1 = HEX("DEB940")
G.SP.C.travel_2 = HEX("fab411")
G.SP.C.navy = HEX("484a85")
G.SP.C.light_navy = HEX("515796")
SMODS.ConsumableType({
    key = "Travel",
    primary_colour = G.SP.C.travel_1,
    secondary_colour = G.SP.C.travel_2,
    loc_txt = {
        name = "Travel Card",
        collection = "Travel Cards",
        undiscovered = {
            name = 'Unknown Travel Card',
            text = {'Find this card in an unseeded', 'run to find out what it does'}
        }
    },
    collection_rows = {4, 4, 4},
    shop_rate = 0,
    default = 'c_sarc_brittle_hollow'
})

local path = SMODS.current_mod.path .. 'joker/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('joker/' .. v))()
end

local path = SMODS.current_mod.path .. 'vouchers/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('vouchers/' .. v))()
end

local path = SMODS.current_mod.path .. 'consumables/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('consumables/' .. v))()
end

local path = SMODS.current_mod.path .. 'tags/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('tags/' .. v))()
end

local path = SMODS.current_mod.path .. 'enhancements/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('enhancements/' .. v))()
end

local path = SMODS.current_mod.path .. 'boosters/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('boosters/' .. v))()
end

local igo = Game.init_game_object
function Game:init_game_object()
	local ret = igo(self)
	ret.brittle_hollow_count = 0
	return ret
end

function SMODS.current_mod.reset_game_globals(run_start)
	
	G.GAME.brittle_hollow_count = 0
	
end


function SARC.level_up(card, hand,levels)
  levels = levels or 1
    update_hand_text({
        sound = 'button',
        volume = 0.7,
        pitch = 0.8,
        delay = 0.3
    }, {
        handname = hand,
        chips = G.GAME.hands[hand].chips,
        mult = G.GAME.hands[hand].mult,
        level = G.GAME.hands[hand].level
    })

    level_up_hand(nil, hand, true, levels)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            play_sound('tarot1')
            if card then
                card:juice_up(0.8, 0.5)
            end
            G.TAROT_INTERRUPT_PULSE = true
            return true
        end
    }))
    update_hand_text({
        delay = 0
    }, {
        mult = G.GAME.hands[hand].mult,
        StatusText = true
    })
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.9,
        func = function()
            play_sound('tarot1')
            if card then
                card:juice_up(0.8, 0.5)
            end
            return true
        end
    }))
    update_hand_text({
        delay = 0
    }, {
        chips = G.GAME.hands[hand].chips,
        StatusText = true
    })
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.9,
        func = function()
            play_sound('tarot1')
            if card then
                card:juice_up(0.8, 0.5)
            end
            G.TAROT_INTERRUPT_PULSE = nil
            return true
        end
    }))
    update_hand_text({
        sound = 'button',
        volume = 0.7,
        pitch = 0.9,
        delay = 0
    }, {
        level = G.GAME.hands[hand].level
    })
    delay(1.3)
    update_hand_text({
        sound = 'button',
        volume = 0.7,
        pitch = 1.1,
        delay = 0
    }, {
        mult = 0,
        chips = 0,
        handname = '',
        level = ''
    })
end
function SARC.get_rand_hand_index(amount, exclude)
    local available_indexes = {}
    local random_indexes = {}
    local exclude_set = {} 

    if exclude then
        for _, index in pairs(exclude) do
            exclude_set[index] = true
        end
    end

    for i = 1, #G.hand.cards do
        if not exclude_set[i] then
            table.insert(available_indexes, i)
        end
    end
    for i = 1, amount do
        if #available_indexes == 0 then
            break
        end
        local rand_index_in_available = math.random(1, #available_indexes)

        local selected_index = available_indexes[rand_index_in_available]
        table.insert(random_indexes, selected_index)

        table.remove(available_indexes, rand_index_in_available)
    end
    return random_indexes
end
function SARC.level_up_multiple(card, hand_list,custom_hand_text, levels)
  levels = levels or 1
  update_hand_text({
      sound = 'button',
      volume = 0.7,
      pitch = 0.8,
      delay = 0.3
  }, {
      handname = custom_hand_text,
      chips = "..." ,
      mult = "..." ,
      level = "...",
  })
for i = 1,#hand_list do
  level_up_hand(nil, hand_list[i], true, levels)
  
end
G.E_MANAGER:add_event(Event({
  trigger = 'after',
  delay = 0.2,
  func = function()
      play_sound('tarot1')
      if card then
          card:juice_up(0.8, 0.5)
      end
      G.TAROT_INTERRUPT_PULSE = true
      return true
  end
}))
  update_hand_text({
      delay = 0
  }, {
      mult = "+",
      StatusText = true
  })
  G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.9,
      func = function()
          play_sound('tarot1')
          if card then
              card:juice_up(0.8, 0.5)
          end
          return true
      end
  }))
  update_hand_text({
      delay = 0
  }, {
      chips = "+",
      StatusText = true
  })
  G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.9,
      func = function()
          play_sound('tarot1')
          if card then
              card:juice_up(0.8, 0.5)
          end
          G.TAROT_INTERRUPT_PULSE = nil
          return true
      end
  }))
  update_hand_text({
      sound = 'button',
      volume = 0.7,
      pitch = 0.9,
      delay = 0
  }, {
      level = "+"..levels
  })
  delay(1.3)
  update_hand_text({
      sound = 'button',
      volume = 0.7,
      pitch = 1.1,
      delay = 0
  }, {
      mult = 0,
      chips = 0,
      handname = '',
      level = ''
  })
end