return {
    descriptions = {
        --Back={},
        --Blind={},
        --Edition={},
        --Enhanced={},
        Joker = {
            j_sarc_garlic_bread = {
                name = "Pão de Alho",
                text = {
                    "Se a primeira mão da rodada é uma {C:attention}Carta Alta{}",
                    "converta cartas pontuadas em {C:attention}Ases{}",
                    "Chance de {C:green}#1# em #2#{} desta carta ser destruída no",
                    "fim da rodada"
                }

            },
            j_sarc_artemis = {
                name = 'Ártemis',
                text = {
                    "Cartas de {C:hearts}Copas{} recebem {C:attention}desvantagem{},",
                    "Dá {X:mult,C:white}X#1#{} Multi por cada carta",
                    "com desvantagem",
                    "{C:inactive}(No momento {X:mult,C:white}X#2#{} {C:inactive}Mult)"
                }
            },
            j_sarc_cracked_egg = {
                name = 'Ovo Rachado',
                text = {
                    "Quando vendido, transforme o Curinga à direita",
                    "em um curinga {C:green}#1#{}",
                    "Raridade aumenta a cada {C:attention}Três{} rodadas",
                    "{C:inactive}(No momento {C:attention}#2#{C:inactive}/6)"
                }
            },
            j_sarc_double_crescent = {
                name = 'Luas Duplas',
                text = {
                    "Se sua mão contém um {C:attention}Par{},",
                    "chance de {C:green}#1# em #2#{}",
                    "de criar uma carta de {C:planet}Planeta{}",
                }
            },
            j_sarc_green_carnation = {
                name = 'Cravo Verde',
                text = {
                    "Reis pontuados dão",
                    "{C:chips}+#1#{} Fichas para cada",
                    "Rei previamente pontuado"
                }
            },
            j_sarc_jester_dice = {
                name = 'Dado Bufão',
                text = {
                    "Chance de {C:green}#1# em #2#{} de ganhar",
                    "{C:blue}+1{} mão quando jogando ou",
                    "descartando cartas com",
                    "a {C:attention}mesma classe{}"
                }
            },
            j_sarc_inventor_dice = {
                name = 'Dado Inventor',
                text = {
                    "Destrua Curinga à direita",
                    "após sair da loja para ganhar",
                    "{C:attention}+2{} consumíveis aleatórios",
                    "Chance de {C:green}#1# em#2#{} de lotar espaços de consumíveis",
                    "e dar mais +2 {C:attention}consumíveis{}",
                    "{C:inactive}(Deve ter espaço)"
                }
            },
            j_sarc_labrys = {
                name = 'Lábris',
                text = {
                    "Rainhas pontuadas dão",
                    "{C:mult}+#1#{} Multi para cada",
                    "Rainha previamente pontuada"
                }
            },
            j_sarc_none_of_the_above = {
                name = 'Nenhuma das Alternativas',
                text = {
                    "{C:attention}Cartas Naipe Curinga{}",
                    "tem uma chance de {C:green}#1# em #2#{}",
                    "de dar: {C:mult}+#3#{} Multi",
                    "{C:chips}+#4#{} Fichas, {C:money}+#5#${} ou {X:mult,C:white}X#6#{} Multi",
                    "{C:inactive}(Vários efeitos podem ativar)"
                }
            },
            j_sarc_pancake = {
                name = 'Panqueca',
                text = {
                    "Depois de jogar as próximas {C:attention}#2#{} mãos,",
                    "converta todas as cartas jogadas",
                    "em {C:attention}Cartas Naipe Curinga{}",
                    "{C:inactive}(No momento {C:attention}#1#{C:inactive}/#2#)"
                }
            },
            j_sarc_robot_dice = {
                name = 'Dado Robô',
                text = {
                    "Este Curinga ganha {C:mult}#5#{} Multi quando",
                    "o valor da {C:attention}mão jogada{} totaliza {C:attention}#3#{}",
                    "Chance de {C:green}#1# em #2#{} de aumentar multi",
                    "em {C:attention}6{} vezes mais",
                    "{C:inactive}(No momento {C:mult}#4#{} {C:inactive}Multi,",
                    "{C:inactive}Valor muda a cada mão)"
                }
            },
            j_sarc_thief_dice = {
                name = 'Dado Ladrão',
                text = {
                    "Chance de {C:green}#1# em #2#{} de ganhar um",
                    "Curinga {C:dark_edition}comum negativo perecível{}",
                    "ou um {C:attention}consumível{} aleatório",
                    "ao sair da loja",
                    "{C:inactive}(Vários efeitos podem ativar)"
                }
            },
            j_sarc_warrior_dice = {
                name = 'Dado Guerreiro',
                text = {
                    "Chance de {C:green}#1# em #2#{} de",
                    "ganhar uma {C:green}atualização grátis{}",
                    "quando {C:attention}descartando{}",
                    "Chance de {C:green}#1# em #2#{} de",
                    "ganhar um {C:attention}descarte temporário{}",
                    "quando {C:green}atualizando{} a loja"
                }
            },
            j_sarc_witch_dice = {
                name = 'Dado Bruxo',
                text = {
                   "Chance de {C:green}#1# em #2#{} de adicionar",
                    "{C:attention}#3#{} vezes as {C:chips}Fichas{} de",
                    "cartas jogadas e descartadas",
                    "à este curinga",
                    "{C:inactive}(No momento {C:chips}#4#{} {C:inactive}Fichas{})"
                }
            },
        },
        --Other={},
        --Planet={},
        --Spectral={},
        --Stake={},
        --Tag={},
        --Tarot={},
        Voucher = {
            v_sarc_advantage = {
                name = 'Vantagem',
                text = {
                    "{C:attention}+1{} à todas as probabilidades listadas"
                },
            },
            v_sarc_nat_20 = {
                name = '20 Natural!',
                text = {
                    "{C:attention}+1{} à todas as probabilidades listadas"
                },
            }
        },
    },
    misc = {
        dictionary = {
            sarc_combat_roll_ex = "Jogada de Batalha!",
            sarc_plus_one_discard = "+1 Descarte!",
            sarc_stolen = "Roubado!",
            sarc_yoink = "Peguei!",
            sarc_lucky6 = "6 da sorte!",
            sarc_focus = "Foco!",
            sarc_scrapped = "Reciclado!",
            sarc_throw = 'Arremesso!',
            sarc_snap = 'Estalo!',
            sarc_collapse = 'Collapso!'
        }


    }
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
