return {
    descriptions = {
        --Back={},
        --Blind={},
        --Edition={},
        --Enhanced={},
        Joker = {
            j_sarc_garlic_bread ={
                name = 'Garlic Bread',
                text = {
                    "If the first hand of the round is a {C:attention}High Card{}",
                    "convert scoring cards to {C:attention}Aces{}",
                    "{C:green}#1# in #2#{} chance this card is destroyed at end of round"
                }
            },
            j_sarc_artemis ={
                name = 'Artemis',
                text = {
                    "{C:attention}Debuffs{} all {C:hearts}Hearts{} cards,",
                    "Gives {X:mult,C:white}X#1#{} Mult per card debuffed",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)"
                }
            },
            j_sarc_cracked_egg ={
                name = 'Cracked Egg',
                text = {
                    "When sold, transform joker to the right",
                    "to a {C:green}#1#{} Joker",
                    "Rarity increases every {C:attention}Three{} rounds",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive}/6)"
                }
            },
            j_sarc_double_crescent= {
                name = 'Double Crescent',
                text = {
                    "If your hand contains a {C:attention}Pair{},",
                    "{C:green}#1# in #2#{} chance",
                    "to generate a {C:planet}Planet{} card",
                }
            },
            j_sarc_green_carnation ={
                name = 'Green Carnation',
                text = {
                    "Scored Kings give {C:chips}+#1#{} Chips for every",
                    "previously scored King"
                }
            },
            j_sarc_labrys ={
                name = 'Labrys',
                text = {
                    "Scored Queens give {C:mult}+#1#{} Mult for every",
                    "previously scored Queen"
                }
            },
            j_sarc_none_of_the_above ={
                name = 'None of the Above',
                text = {
                    "{C:attention}Wild Cards{} have a {C:green}#1# in #2#{} chance",
                    "to give: {C:mult}+#3#{} Mult, {C:chips}+#4#{} Chips,",
                    "{C:money}+#5#${} or {X:mult,C:white}X#6#{} Mult",
                    "{C:inactive}(Multiple effects may trigger)"
                }
            },
            j_sarc_pancake ={
                name = 'Pancake',
                text = {
                    "After playing the next {C:attention}#2#{} hands,",
                    "convert all cards played to {C:attention}Wild Cards{}",
                    "{C:inactive}(Currently {C:attention}#1#{C:inactive}/#2#)"
                }
            }
        },
        --Other={},
        --Planet={},
        --Spectral={},
        --Stake={},
        --Tag={},
        --Tarot={},
        Voucher = {
            v_sarc_advantage= {
                name = 'Advantage',
                text = {
                    "{C:attention}+1{} to all listed probabilities"
                },
            },
            v_sarc_nat_20= {
                name = 'Nat 20!',
                text = {
                    "{C:attention}+1{} to all listed probabilities"
                },
            }
        },
    },
    --misc = {
    --achievement_descriptions={},
    -- achievement_names={},
    --blind_states={},
    -- challenge_names={},
    -- collabs={},
    --dictionary={},
    --high_scores={},
    -- labels={},
    -- poker_hand_descriptions={},
    --  poker_hands={},
    --  quips={},
    --  ranks={},
    -- suits_plural={},
    -- suits_singular={},
    --  v_dictionary={},
    -- v_text={},
    --},
}
