return {
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
           sarc_collapse = 'Collapso!',
           sarc_crumbling = 'Despedaçando...',
           sarc_dash = 'Dash!',
        }


    },
    descriptions = {
        --Back={},
        --Blind={},
        --Edition={},
        --Enhanced={},
        Travel = {
            c_sarc_brittle_hollow = {
                name = 'Cartão Desgastado',
                text = {
                    "Aprimore o nível de uma",
                    "{C:attention}mão aleatória{}",
                    "Chance de{C:green}#1# em #2#{} de",
                    "{C:purple}Colapsar{} depois",
                    "de sair da loja"
                }
            },
            c_sarc_celeste = {
                name = 'Cartão Postal de Mt.Celeste',
                text = {
                    "Aprimora {C:attention}#1#{}",
                    "cartas selecionadas para",
                    "{C:red}Cartas de Morango{}"
                }
            },
            c_sarc_haven= {
                name = 'Pôster Enferrujado',
                text = {
                    "Aprimora {C:attention}#1#{}",
                    "cartas selecionadas para",
                    "{C:blue}Cartas de Fluxo{}"
                }
            },
            c_sarc_hollow_knight = {
                name = '"Vista de Caminho Verde"',
                text = {
                    "Transforma {C:attention}#1#{}",
                    "cartas selecionadas em",
                    "cartas do{C:attention} seu baralho{}"
                }
            },
            c_sarc_loop_hero = {
                name = 'Memória de uma Estrada',
                text = {
                    "Destrói até{C:attention}#1#{}",
                    "cartas aleatórias na mão.",
                    "Compre {C:attention}#1#{} cartas"
                }
            },
            c_sarc_plort = {
                name = 'Plort',
                text = {
                    "{C:money}+#1#${} ao usar"
                }
            },
            c_sarc_slay_the_spire = {
                name = '"Top Dicas para Conquistar o Pináculo!"',
                text = {
                    "Cria até {C:attention}#1#{} {V:1}Cartas de Viagem{}",
                    "{C:inactive}(Deve ter espaço){}"
                }
            },
            c_sarc_slime_rancher = {
                name = 'Brochura Colorida',
                text = {
                    "Aprimora {C:attention}#1#{}",
                    "cartas selecionadas para",
                    "{C:red}Cartas de Slime{}"
                }
            },
            
        },
        Enhanced={
            m_sarc_flow= {
                name = 'Carta de Fluxo',
                text = {
                    "{X:chips,C:white}X1.2{} Fichas, mais {X:chips,C:white}X0.1{} por ",
                    "{C:blue}Carta de Fluxo{} pontuada"
                }
            },
            m_sarc_slime= {
                name = 'Carta de Slime',
                text = {
                    "Crie um {C:attention}Plort{}",
                    "quando pontuada"
                }
            },
            m_sarc_strawberry = {
                name = 'Carta de Morango',
                text = {
                    "Reativa {C:attention}#1#{} vezes",
                    "Quando pontuada na {C:attention}mão{}",
                    "Precisa recarregar",
                    "depois de ser usada",
                }
            }
        },
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
                    "{C:green}+0.5{} à todas as chances listadas",
                    "Chance de {C:green}#1# em #2#{} de ganhar",
                    "{C:blue}+1{} mão quando jogando ou",
                    "descartando cartas com",
                    "a {C:attention}mesma classe{}"
                }
            },
            j_sarc_inventor_dice = {
                name = 'Dado Inventor',
                text = {
                    "{C:green}+0.5{} à todas as chances listadas",
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
                    "{C:green}+0.5{} à todas as chances listadas",
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
                    "{C:green}+0.5{} à todas as chances listadas",
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
                    "{C:green}+0.5{} à todas as chances listadas",
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
                    "{C:green}+0.5{} à todas as chances listadas",
                   "Chance de {C:green}#1# em #2#{} de adicionar",
                    "{C:attention}#3#{} vezes as {C:chips}Fichas{} de",
                    "cartas jogadas e descartadas",
                    "à este curinga",
                    "{C:inactive}(No momento {C:chips}#4#{} {C:inactive}Fichas{})"
                }
            },
        },
        Other = {

            p_sarc_travel_small = {
                name = "Pacote de Viagem",
                text = {
                  "Escolha {C:attention}#1#{} de {C:attention}#2#",
                  "{C:G.SP.C.travel_1}Cartas de Viagem{}",  
                },
            },
                p_sarc_travel_mega= {
                    name = "Pacote de Viagem Mega",
                    text = {
                      "Escolha {C:attention}#1#{} de {C:attention}#2#",
                      "{C:G.SP.C.travel_1}Cartas de Viagem{}",
                      
                    }
                }
            }
              },
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
    --},]]--

