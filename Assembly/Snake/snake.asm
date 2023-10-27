jmp inicio

;VARIAVEIS BEGIN
;=====================================
Posicao_da_cobra: var #500
Tamanho_da_cobra:	var #1
Direcao_da_cobra:	var #1 ; ;WASD

Comida_index:	var #1
Tem_comida:	var #1 ;boolean
Letra: var #1
Cobra : var #1200
instrucoes_basicas : var #1200
tela_final_fix : var #1200
in_game : var #1200

;VARIAVEIS END
;=====================================
      

;LOOP BEGIN
;=====================================             
inicio:

  call printCobraScreen
  call DigitaAlgo 
  call LimpaTela 

intrucoes:
  call printinstrucoes_basicasScreen
  call DigitaAlgo 
  call LimpaTela 
  
main:

    call Incializar_Cobra
    call printin_gameScreen

      loop_cobra_viva:
            
          call Desenha_Cobra_E_Comida
          call Morreu
          
          call Movimentacao_da_Cobra
          call Repor_Comida
              
          call Delay
            
          jmp loop_cobra_viva
      
      Reinicio_loop:
      
        call Reiniciar
        jmp Reinicio_loop
;LOOP END
;=====================================
    
; TELAS
; ================================================
Tela_jogo:
  static Cobra + #0, #3967
  static Cobra + #1, #3967
  static Cobra + #2, #3967
  static Cobra + #3, #3967
  static Cobra + #4, #3967
  static Cobra + #5, #3967
  static Cobra + #6, #3967
  static Cobra + #7, #3967
  static Cobra + #8, #3967
  static Cobra + #9, #3967
  static Cobra + #10, #3967
  static Cobra + #11, #3967
  static Cobra + #12, #3967
  static Cobra + #13, #3967
  static Cobra + #14, #3967
  static Cobra + #15, #3967
  static Cobra + #16, #3967
  static Cobra + #17, #3967
  static Cobra + #18, #3967
  static Cobra + #19, #3967
  static Cobra + #20, #3967
  static Cobra + #21, #3967
  static Cobra + #22, #3967
  static Cobra + #23, #3967
  static Cobra + #24, #3967
  static Cobra + #25, #3967
  static Cobra + #26, #3967
  static Cobra + #27, #3967
  static Cobra + #28, #3967
  static Cobra + #29, #3967
  static Cobra + #30, #3967
  static Cobra + #31, #3967
  static Cobra + #32, #3967
  static Cobra + #33, #3967
  static Cobra + #34, #3967
  static Cobra + #35, #3967
  static Cobra + #36, #3967
  static Cobra + #37, #3967
  static Cobra + #38, #3967
  static Cobra + #39, #3967

  ;Linha 1
  static Cobra + #40, #3967
  static Cobra + #41, #3967
  static Cobra + #42, #3967
  static Cobra + #43, #3967
  static Cobra + #44, #3967
  static Cobra + #45, #3967
  static Cobra + #46, #3967
  static Cobra + #47, #3967
  static Cobra + #48, #3967
  static Cobra + #49, #3967
  static Cobra + #50, #3967
  static Cobra + #51, #3967
  static Cobra + #52, #3967
  static Cobra + #53, #3967
  static Cobra + #54, #3967
  static Cobra + #55, #79
  static Cobra + #56, #82
  static Cobra + #57, #71
  static Cobra + #58, #45
  static Cobra + #59, #65
  static Cobra + #60, #82
  static Cobra + #61, #81
  static Cobra + #62, #3967
  static Cobra + #63, #50
  static Cobra + #64, #48
  static Cobra + #65, #50
  static Cobra + #66, #50
  static Cobra + #67, #3967
  static Cobra + #68, #3967
  static Cobra + #69, #3967
  static Cobra + #70, #3967
  static Cobra + #71, #3967
  static Cobra + #72, #3967
  static Cobra + #73, #3967
  static Cobra + #74, #3967
  static Cobra + #75, #3967
  static Cobra + #76, #3967
  static Cobra + #77, #3967
  static Cobra + #78, #3967
  static Cobra + #79, #3967

  ;Linha 2
  static Cobra + #80, #3967
  static Cobra + #81, #3967
  static Cobra + #82, #3967
  static Cobra + #83, #3967
  static Cobra + #84, #3967
  static Cobra + #85, #3967
  static Cobra + #86, #3967
  static Cobra + #87, #3967
  static Cobra + #88, #3967
  static Cobra + #89, #3967
  static Cobra + #90, #3967
  static Cobra + #91, #3967
  static Cobra + #92, #3967
  static Cobra + #93, #3967
  static Cobra + #94, #3967
  static Cobra + #95, #3967
  static Cobra + #96, #3967
  static Cobra + #97, #3967
  static Cobra + #98, #3967
  static Cobra + #99, #3967
  static Cobra + #100, #3967
  static Cobra + #101, #3967
  static Cobra + #102, #3967
  static Cobra + #103, #3967
  static Cobra + #104, #3967
  static Cobra + #105, #3967
  static Cobra + #106, #3967
  static Cobra + #107, #3967
  static Cobra + #108, #3967
  static Cobra + #109, #3967
  static Cobra + #110, #3967
  static Cobra + #111, #3967
  static Cobra + #112, #3967
  static Cobra + #113, #3967
  static Cobra + #114, #3967
  static Cobra + #115, #3967
  static Cobra + #116, #3967
  static Cobra + #117, #3967
  static Cobra + #118, #3967
  static Cobra + #119, #3967

  ;Linha 3
  static Cobra + #120, #3967
  static Cobra + #121, #3967
  static Cobra + #122, #95
  static Cobra + #123, #95
  static Cobra + #124, #95
  static Cobra + #125, #95
  static Cobra + #126, #3967
  static Cobra + #127, #606
  static Cobra + #128, #3967
  static Cobra + #129, #95
  static Cobra + #130, #95
  static Cobra + #131, #95
  static Cobra + #132, #95
  static Cobra + #133, #95
  static Cobra + #134, #95
  static Cobra + #135, #95
  static Cobra + #136, #95
  static Cobra + #137, #95
  static Cobra + #138, #95
  static Cobra + #139, #95
  static Cobra + #140, #95
  static Cobra + #141, #95
  static Cobra + #142, #95
  static Cobra + #143, #95
  static Cobra + #144, #95
  static Cobra + #145, #95
  static Cobra + #146, #95
  static Cobra + #147, #95
  static Cobra + #148, #95
  static Cobra + #149, #95
  static Cobra + #150, #95
  static Cobra + #151, #95
  static Cobra + #152, #95
  static Cobra + #153, #95
  static Cobra + #154, #95
  static Cobra + #155, #95
  static Cobra + #156, #95
  static Cobra + #157, #95
  static Cobra + #158, #3967
  static Cobra + #159, #3967

  ;Linha 4
  static Cobra + #160, #3967
  static Cobra + #161, #3967
  static Cobra + #162, #124
  static Cobra + #163, #3967
  static Cobra + #164, #3967
  static Cobra + #165, #3967
  static Cobra + #166, #3967
  static Cobra + #167, #3967
  static Cobra + #168, #3967
  static Cobra + #169, #3967
  static Cobra + #170, #3967
  static Cobra + #171, #3967
  static Cobra + #172, #3967
  static Cobra + #173, #3967
  static Cobra + #174, #3967
  static Cobra + #175, #3967
  static Cobra + #176, #3967
  static Cobra + #177, #3967
  static Cobra + #178, #3967
  static Cobra + #179, #3967
  static Cobra + #180, #3967
  static Cobra + #181, #3967
  static Cobra + #182, #3967
  static Cobra + #183, #3967
  static Cobra + #184, #3967
  static Cobra + #185, #3967
  static Cobra + #186, #3967
  static Cobra + #187, #3967
  static Cobra + #188, #3967
  static Cobra + #189, #3967
  static Cobra + #190, #3967
  static Cobra + #191, #3967
  static Cobra + #192, #3967
  static Cobra + #193, #3967
  static Cobra + #194, #3967
  static Cobra + #195, #3967
  static Cobra + #196, #3967
  static Cobra + #197, #124
  static Cobra + #198, #3967
  static Cobra + #199, #3967

  ;Linha 5
  static Cobra + #200, #3967
  static Cobra + #201, #3967
  static Cobra + #202, #124
  static Cobra + #203, #3967
  static Cobra + #204, #3967
  static Cobra + #205, #3967
  static Cobra + #206, #3967
  static Cobra + #207, #3967
  static Cobra + #208, #3967
  static Cobra + #209, #3967
  static Cobra + #210, #3967
  static Cobra + #211, #3967
  static Cobra + #212, #3967
  static Cobra + #213, #3967
  static Cobra + #214, #3967
  static Cobra + #215, #3967
  static Cobra + #216, #3967
  static Cobra + #217, #3967
  static Cobra + #218, #3967
  static Cobra + #219, #3967
  static Cobra + #220, #3967
  static Cobra + #221, #3967
  static Cobra + #222, #3967
  static Cobra + #223, #3967
  static Cobra + #224, #3967
  static Cobra + #225, #3967
  static Cobra + #226, #3967
  static Cobra + #227, #3967
  static Cobra + #228, #3967
  static Cobra + #229, #3967
  static Cobra + #230, #3967
  static Cobra + #231, #3967
  static Cobra + #232, #3967
  static Cobra + #233, #3967
  static Cobra + #234, #3967
  static Cobra + #235, #3967
  static Cobra + #236, #3967
  static Cobra + #237, #124
  static Cobra + #238, #3967
  static Cobra + #239, #3967

  ;Linha 6
  static Cobra + #240, #3967
  static Cobra + #241, #3967
  static Cobra + #242, #124
  static Cobra + #243, #3967
  static Cobra + #244, #3967
  static Cobra + #245, #3967
  static Cobra + #246, #3967
  static Cobra + #247, #3967
  static Cobra + #248, #3967
  static Cobra + #249, #3967
  static Cobra + #250, #3967
  static Cobra + #251, #3967
  static Cobra + #252, #3967
  static Cobra + #253, #3967
  static Cobra + #254, #3967
  static Cobra + #255, #3967
  static Cobra + #256, #3967
  static Cobra + #257, #3967
  static Cobra + #258, #3967
  static Cobra + #259, #3967
  static Cobra + #260, #3967
  static Cobra + #261, #3967
  static Cobra + #262, #3967
  static Cobra + #263, #3967
  static Cobra + #264, #3967
  static Cobra + #265, #3967
  static Cobra + #266, #3967
  static Cobra + #267, #3967
  static Cobra + #268, #3967
  static Cobra + #269, #3967
  static Cobra + #270, #3967
  static Cobra + #271, #3967
  static Cobra + #272, #3967
  static Cobra + #273, #3967
  static Cobra + #274, #3967
  static Cobra + #275, #3967
  static Cobra + #276, #3967
  static Cobra + #277, #124
  static Cobra + #278, #3967
  static Cobra + #279, #3967

  ;Linha 7
  static Cobra + #280, #3967
  static Cobra + #281, #3967
  static Cobra + #282, #124
  static Cobra + #283, #3967
  static Cobra + #284, #3967
  static Cobra + #285, #3967
  static Cobra + #286, #2880
  static Cobra + #287, #2880
  static Cobra + #288, #3967
  static Cobra + #289, #2880
  static Cobra + #290, #3967
  static Cobra + #291, #3967
  static Cobra + #292, #3967
  static Cobra + #293, #3967
  static Cobra + #294, #3967
  static Cobra + #295, #3967
  static Cobra + #296, #3967
  static Cobra + #297, #3967
  static Cobra + #298, #3967
  static Cobra + #299, #3967
  static Cobra + #300, #3967
  static Cobra + #301, #3967
  static Cobra + #302, #3967
  static Cobra + #303, #3967
  static Cobra + #304, #3967
  static Cobra + #305, #3967
  static Cobra + #306, #3967
  static Cobra + #307, #3967
  static Cobra + #308, #3967
  static Cobra + #309, #3967
  static Cobra + #310, #3967
  static Cobra + #311, #3967
  static Cobra + #312, #3967
  static Cobra + #313, #3967
  static Cobra + #314, #3967
  static Cobra + #315, #3967
  static Cobra + #316, #3967
  static Cobra + #317, #124
  static Cobra + #318, #3967
  static Cobra + #319, #3967

  ;Linha 8
  static Cobra + #320, #3967
  static Cobra + #321, #3967
  static Cobra + #322, #124
  static Cobra + #323, #3967
  static Cobra + #324, #3967
  static Cobra + #325, #2880
  static Cobra + #326, #3967
  static Cobra + #327, #3967
  static Cobra + #328, #2880
  static Cobra + #329, #2880
  static Cobra + #330, #3967
  static Cobra + #331, #3967
  static Cobra + #332, #3967
  static Cobra + #333, #3967
  static Cobra + #334, #3967
  static Cobra + #335, #3967
  static Cobra + #336, #3967
  static Cobra + #337, #3967
  static Cobra + #338, #3967
  static Cobra + #339, #3967
  static Cobra + #340, #3967
  static Cobra + #341, #3967
  static Cobra + #342, #3967
  static Cobra + #343, #3967
  static Cobra + #344, #3967
  static Cobra + #345, #3967
  static Cobra + #346, #3967
  static Cobra + #347, #3967
  static Cobra + #348, #3967
  static Cobra + #349, #3967
  static Cobra + #350, #3967
  static Cobra + #351, #3967
  static Cobra + #352, #3967
  static Cobra + #353, #3967
  static Cobra + #354, #3967
  static Cobra + #355, #3967
  static Cobra + #356, #3967
  static Cobra + #357, #124
  static Cobra + #358, #3967
  static Cobra + #359, #3967

  ;Linha 9
  static Cobra + #360, #3967
  static Cobra + #361, #3967
  static Cobra + #362, #124
  static Cobra + #363, #3967
  static Cobra + #364, #2880
  static Cobra + #365, #3967
  static Cobra + #366, #3967
  static Cobra + #367, #3967
  static Cobra + #368, #3967
  static Cobra + #369, #3967
  static Cobra + #370, #3967
  static Cobra + #371, #2880
  static Cobra + #372, #3967
  static Cobra + #373, #3967
  static Cobra + #374, #3967
  static Cobra + #375, #3967
  static Cobra + #376, #3967
  static Cobra + #377, #3967
  static Cobra + #378, #2880
  static Cobra + #379, #3967
  static Cobra + #380, #2880
  static Cobra + #381, #2880
  static Cobra + #382, #2880
  static Cobra + #383, #2880
  static Cobra + #384, #2880
  static Cobra + #385, #2880
  static Cobra + #386, #3967
  static Cobra + #387, #2880
  static Cobra + #388, #3967
  static Cobra + #389, #3967
  static Cobra + #390, #2880
  static Cobra + #391, #3967
  static Cobra + #392, #2880
  static Cobra + #393, #2880
  static Cobra + #394, #2880
  static Cobra + #395, #2880
  static Cobra + #396, #3967
  static Cobra + #397, #124
  static Cobra + #398, #3967
  static Cobra + #399, #3967

  ;Linha 10
  static Cobra + #400, #3967
  static Cobra + #401, #3967
  static Cobra + #402, #124
  static Cobra + #403, #3967
  static Cobra + #404, #2880
  static Cobra + #405, #3967
  static Cobra + #406, #3967
  static Cobra + #407, #3967
  static Cobra + #408, #3967
  static Cobra + #409, #3967
  static Cobra + #410, #3967
  static Cobra + #411, #2880
  static Cobra + #412, #2880
  static Cobra + #413, #3967
  static Cobra + #414, #3967
  static Cobra + #415, #3967
  static Cobra + #416, #3967
  static Cobra + #417, #3967
  static Cobra + #418, #2880
  static Cobra + #419, #3967
  static Cobra + #420, #2880
  static Cobra + #421, #3967
  static Cobra + #422, #3967
  static Cobra + #423, #3967
  static Cobra + #424, #3967
  static Cobra + #425, #2880
  static Cobra + #426, #3967
  static Cobra + #427, #2880
  static Cobra + #428, #3967
  static Cobra + #429, #3967
  static Cobra + #430, #2880
  static Cobra + #431, #3967
  static Cobra + #432, #2880
  static Cobra + #433, #3967
  static Cobra + #434, #3967
  static Cobra + #435, #3967
  static Cobra + #436, #3967
  static Cobra + #437, #124
  static Cobra + #438, #3967
  static Cobra + #439, #3967

  ;Linha 11
  static Cobra + #440, #3967
  static Cobra + #441, #3967
  static Cobra + #442, #124
  static Cobra + #443, #3967
  static Cobra + #444, #2880
  static Cobra + #445, #3967
  static Cobra + #446, #3967
  static Cobra + #447, #3967
  static Cobra + #448, #3967
  static Cobra + #449, #3967
  static Cobra + #450, #3967
  static Cobra + #451, #2880
  static Cobra + #452, #2880
  static Cobra + #453, #3967
  static Cobra + #454, #3967
  static Cobra + #455, #3967
  static Cobra + #456, #3967
  static Cobra + #457, #3967
  static Cobra + #458, #2880
  static Cobra + #459, #3967
  static Cobra + #460, #2880
  static Cobra + #461, #3967
  static Cobra + #462, #3967
  static Cobra + #463, #3967
  static Cobra + #464, #3967
  static Cobra + #465, #2880
  static Cobra + #466, #3967
  static Cobra + #467, #2880
  static Cobra + #468, #3967
  static Cobra + #469, #3967
  static Cobra + #470, #2880
  static Cobra + #471, #3967
  static Cobra + #472, #2880
  static Cobra + #473, #3967
  static Cobra + #474, #3967
  static Cobra + #475, #3967
  static Cobra + #476, #3967
  static Cobra + #477, #124
  static Cobra + #478, #3967
  static Cobra + #479, #3967

  ;Linha 12
  static Cobra + #480, #3967
  static Cobra + #481, #3967
  static Cobra + #482, #124
  static Cobra + #483, #3967
  static Cobra + #484, #3967
  static Cobra + #485, #2880
  static Cobra + #486, #3967
  static Cobra + #487, #3967
  static Cobra + #488, #3967
  static Cobra + #489, #3967
  static Cobra + #490, #3967
  static Cobra + #491, #2880
  static Cobra + #492, #3967
  static Cobra + #493, #2880
  static Cobra + #494, #3967
  static Cobra + #495, #3967
  static Cobra + #496, #3967
  static Cobra + #497, #3967
  static Cobra + #498, #2880
  static Cobra + #499, #3967
  static Cobra + #500, #2880
  static Cobra + #501, #3967
  static Cobra + #502, #3967
  static Cobra + #503, #3967
  static Cobra + #504, #3967
  static Cobra + #505, #2880
  static Cobra + #506, #3967
  static Cobra + #507, #2880
  static Cobra + #508, #3967
  static Cobra + #509, #3967
  static Cobra + #510, #2880
  static Cobra + #511, #3967
  static Cobra + #512, #2880
  static Cobra + #513, #3967
  static Cobra + #514, #3967
  static Cobra + #515, #3967
  static Cobra + #516, #3967
  static Cobra + #517, #124
  static Cobra + #518, #3967
  static Cobra + #519, #3967

  ;Linha 13
  static Cobra + #520, #3967
  static Cobra + #521, #3967
  static Cobra + #522, #124
  static Cobra + #523, #3967
  static Cobra + #524, #3967
  static Cobra + #525, #3967
  static Cobra + #526, #2880
  static Cobra + #527, #2880
  static Cobra + #528, #3967
  static Cobra + #529, #3967
  static Cobra + #530, #3967
  static Cobra + #531, #2880
  static Cobra + #532, #3967
  static Cobra + #533, #3967
  static Cobra + #534, #2880
  static Cobra + #535, #3967
  static Cobra + #536, #3967
  static Cobra + #537, #3967
  static Cobra + #538, #2880
  static Cobra + #539, #3967
  static Cobra + #540, #2880
  static Cobra + #541, #3967
  static Cobra + #542, #2880
  static Cobra + #543, #2880
  static Cobra + #544, #3967
  static Cobra + #545, #2880
  static Cobra + #546, #3967
  static Cobra + #547, #2880
  static Cobra + #548, #3967
  static Cobra + #549, #2880
  static Cobra + #550, #3967
  static Cobra + #551, #3967
  static Cobra + #552, #2880
  static Cobra + #553, #3967
  static Cobra + #554, #3967
  static Cobra + #555, #3967
  static Cobra + #556, #3967
  static Cobra + #557, #124
  static Cobra + #558, #3967
  static Cobra + #559, #3967

  ;Linha 14
  static Cobra + #560, #3967
  static Cobra + #561, #3967
  static Cobra + #562, #124
  static Cobra + #563, #3967
  static Cobra + #564, #3967
  static Cobra + #565, #3967
  static Cobra + #566, #3967
  static Cobra + #567, #3967
  static Cobra + #568, #2880
  static Cobra + #569, #3967
  static Cobra + #570, #3967
  static Cobra + #571, #2880
  static Cobra + #572, #3967
  static Cobra + #573, #3967
  static Cobra + #574, #3967
  static Cobra + #575, #2880
  static Cobra + #576, #3967
  static Cobra + #577, #3967
  static Cobra + #578, #2880
  static Cobra + #579, #3967
  static Cobra + #580, #2880
  static Cobra + #581, #2880
  static Cobra + #582, #3967
  static Cobra + #583, #3967
  static Cobra + #584, #2880
  static Cobra + #585, #2880
  static Cobra + #586, #3967
  static Cobra + #587, #2880
  static Cobra + #588, #2880
  static Cobra + #589, #3967
  static Cobra + #590, #3967
  static Cobra + #591, #3967
  static Cobra + #592, #2880
  static Cobra + #593, #2880
  static Cobra + #594, #2880
  static Cobra + #595, #2880
  static Cobra + #596, #3967
  static Cobra + #597, #124
  static Cobra + #598, #3967
  static Cobra + #599, #3967

  ;Linha 15
  static Cobra + #600, #3967
  static Cobra + #601, #3967
  static Cobra + #602, #124
  static Cobra + #603, #3967
  static Cobra + #604, #3967
  static Cobra + #605, #3967
  static Cobra + #606, #3967
  static Cobra + #607, #3967
  static Cobra + #608, #3967
  static Cobra + #609, #2880
  static Cobra + #610, #3967
  static Cobra + #611, #2880
  static Cobra + #612, #3967
  static Cobra + #613, #3967
  static Cobra + #614, #3967
  static Cobra + #615, #2880
  static Cobra + #616, #3967
  static Cobra + #617, #3967
  static Cobra + #618, #2880
  static Cobra + #619, #3967
  static Cobra + #620, #2880
  static Cobra + #621, #3967
  static Cobra + #622, #3967
  static Cobra + #623, #3967
  static Cobra + #624, #3967
  static Cobra + #625, #2880
  static Cobra + #626, #3967
  static Cobra + #627, #2880
  static Cobra + #628, #3967
  static Cobra + #629, #2880
  static Cobra + #630, #3967
  static Cobra + #631, #3967
  static Cobra + #632, #2880
  static Cobra + #633, #3967
  static Cobra + #634, #3967
  static Cobra + #635, #3967
  static Cobra + #636, #3967
  static Cobra + #637, #124
  static Cobra + #638, #3967
  static Cobra + #639, #3967

  ;Linha 16
  static Cobra + #640, #3967
  static Cobra + #641, #3967
  static Cobra + #642, #124
  static Cobra + #643, #3967
  static Cobra + #644, #3967
  static Cobra + #645, #3967
  static Cobra + #646, #3967
  static Cobra + #647, #3967
  static Cobra + #648, #3967
  static Cobra + #649, #2880
  static Cobra + #650, #3967
  static Cobra + #651, #2880
  static Cobra + #652, #3967
  static Cobra + #653, #3967
  static Cobra + #654, #3967
  static Cobra + #655, #3967
  static Cobra + #656, #2880
  static Cobra + #657, #3967
  static Cobra + #658, #2880
  static Cobra + #659, #3967
  static Cobra + #660, #2880
  static Cobra + #661, #3967
  static Cobra + #662, #3967
  static Cobra + #663, #3967
  static Cobra + #664, #3967
  static Cobra + #665, #2880
  static Cobra + #666, #3967
  static Cobra + #667, #2880
  static Cobra + #668, #3967
  static Cobra + #669, #3967
  static Cobra + #670, #2880
  static Cobra + #671, #3967
  static Cobra + #672, #2880
  static Cobra + #673, #3967
  static Cobra + #674, #3967
  static Cobra + #675, #3967
  static Cobra + #676, #3967
  static Cobra + #677, #124
  static Cobra + #678, #3967
  static Cobra + #679, #3967

  ;Linha 17
  static Cobra + #680, #3967
  static Cobra + #681, #3967
  static Cobra + #682, #124
  static Cobra + #683, #3967
  static Cobra + #684, #3967
  static Cobra + #685, #3967
  static Cobra + #686, #3967
  static Cobra + #687, #3967
  static Cobra + #688, #3967
  static Cobra + #689, #2880
  static Cobra + #690, #3967
  static Cobra + #691, #2880
  static Cobra + #692, #3967
  static Cobra + #693, #3967
  static Cobra + #694, #3967
  static Cobra + #695, #3967
  static Cobra + #696, #3967
  static Cobra + #697, #2880
  static Cobra + #698, #2880
  static Cobra + #699, #3967
  static Cobra + #700, #2880
  static Cobra + #701, #3967
  static Cobra + #702, #3967
  static Cobra + #703, #3967
  static Cobra + #704, #3967
  static Cobra + #705, #2880
  static Cobra + #706, #3967
  static Cobra + #707, #2880
  static Cobra + #708, #3967
  static Cobra + #709, #3967
  static Cobra + #710, #2880
  static Cobra + #711, #3967
  static Cobra + #712, #2880
  static Cobra + #713, #3967
  static Cobra + #714, #3967
  static Cobra + #715, #3967
  static Cobra + #716, #3967
  static Cobra + #717, #124
  static Cobra + #718, #3967
  static Cobra + #719, #3967

  ;Linha 18
  static Cobra + #720, #3967
  static Cobra + #721, #3967
  static Cobra + #722, #124
  static Cobra + #723, #3967
  static Cobra + #724, #2880
  static Cobra + #725, #3967
  static Cobra + #726, #3967
  static Cobra + #727, #3967
  static Cobra + #728, #2880
  static Cobra + #729, #3967
  static Cobra + #730, #3967
  static Cobra + #731, #2880
  static Cobra + #732, #3967
  static Cobra + #733, #3967
  static Cobra + #734, #3967
  static Cobra + #735, #3967
  static Cobra + #736, #3967
  static Cobra + #737, #2880
  static Cobra + #738, #2880
  static Cobra + #739, #3967
  static Cobra + #740, #2880
  static Cobra + #741, #3967
  static Cobra + #742, #3967
  static Cobra + #743, #3967
  static Cobra + #744, #3967
  static Cobra + #745, #2880
  static Cobra + #746, #3967
  static Cobra + #747, #2880
  static Cobra + #748, #3967
  static Cobra + #749, #3967
  static Cobra + #750, #2880
  static Cobra + #751, #3967
  static Cobra + #752, #2880
  static Cobra + #753, #3967
  static Cobra + #754, #3967
  static Cobra + #755, #3967
  static Cobra + #756, #3967
  static Cobra + #757, #124
  static Cobra + #758, #3967
  static Cobra + #759, #3967

  ;Linha 19
  static Cobra + #760, #3967
  static Cobra + #761, #3967
  static Cobra + #762, #124
  static Cobra + #763, #3967
  static Cobra + #764, #2880
  static Cobra + #765, #2880
  static Cobra + #766, #2880
  static Cobra + #767, #2880
  static Cobra + #768, #3967
  static Cobra + #769, #3967
  static Cobra + #770, #3967
  static Cobra + #771, #2880
  static Cobra + #772, #3967
  static Cobra + #773, #3967
  static Cobra + #774, #3967
  static Cobra + #775, #3967
  static Cobra + #776, #3967
  static Cobra + #777, #3967
  static Cobra + #778, #2880
  static Cobra + #779, #3967
  static Cobra + #780, #2880
  static Cobra + #781, #3967
  static Cobra + #782, #3967
  static Cobra + #783, #3967
  static Cobra + #784, #3967
  static Cobra + #785, #2880
  static Cobra + #786, #3967
  static Cobra + #787, #2880
  static Cobra + #788, #3967
  static Cobra + #789, #3967
  static Cobra + #790, #2880
  static Cobra + #791, #3967
  static Cobra + #792, #2880
  static Cobra + #793, #2880
  static Cobra + #794, #2880
  static Cobra + #795, #2880
  static Cobra + #796, #3967
  static Cobra + #797, #124
  static Cobra + #798, #3967
  static Cobra + #799, #3967

  ;Linha 20
  static Cobra + #800, #3967
  static Cobra + #801, #3967
  static Cobra + #802, #124
  static Cobra + #803, #3967
  static Cobra + #804, #3967
  static Cobra + #805, #3967
  static Cobra + #806, #3967
  static Cobra + #807, #3967
  static Cobra + #808, #3967
  static Cobra + #809, #3967
  static Cobra + #810, #3967
  static Cobra + #811, #3967
  static Cobra + #812, #3967
  static Cobra + #813, #3967
  static Cobra + #814, #3967
  static Cobra + #815, #3967
  static Cobra + #816, #3967
  static Cobra + #817, #3967
  static Cobra + #818, #3967
  static Cobra + #819, #3967
  static Cobra + #820, #3967
  static Cobra + #821, #3967
  static Cobra + #822, #3967
  static Cobra + #823, #3967
  static Cobra + #824, #3967
  static Cobra + #825, #3967
  static Cobra + #826, #3967
  static Cobra + #827, #3967
  static Cobra + #828, #3967
  static Cobra + #829, #3967
  static Cobra + #830, #3967
  static Cobra + #831, #3967
  static Cobra + #832, #3967
  static Cobra + #833, #3967
  static Cobra + #834, #3967
  static Cobra + #835, #3967
  static Cobra + #836, #3967
  static Cobra + #837, #124
  static Cobra + #838, #3967
  static Cobra + #839, #3967

  ;Linha 21
  static Cobra + #840, #3967
  static Cobra + #841, #3967
  static Cobra + #842, #124
  static Cobra + #843, #3967
  static Cobra + #844, #3967
  static Cobra + #845, #3967
  static Cobra + #846, #71
  static Cobra + #847, #65
  static Cobra + #848, #77
  static Cobra + #849, #69
  static Cobra + #850, #3967
  static Cobra + #851, #3967
  static Cobra + #852, #3967
  static Cobra + #853, #3967
  static Cobra + #854, #3967
  static Cobra + #855, #3967
  static Cobra + #856, #3967
  static Cobra + #857, #3967
  static Cobra + #858, #3967
  static Cobra + #859, #3967
  static Cobra + #860, #3967
  static Cobra + #861, #3967
  static Cobra + #862, #3967
  static Cobra + #863, #3967
  static Cobra + #864, #3967
  static Cobra + #865, #3967
  static Cobra + #866, #3967
  static Cobra + #867, #3967
  static Cobra + #868, #3967
  static Cobra + #869, #3967
  static Cobra + #870, #0
  static Cobra + #871, #3967
  static Cobra + #872, #3967
  static Cobra + #873, #3967
  static Cobra + #874, #3967
  static Cobra + #875, #3967
  static Cobra + #876, #3967
  static Cobra + #877, #124
  static Cobra + #878, #3967
  static Cobra + #879, #3967

  ;Linha 22
  static Cobra + #880, #3967
  static Cobra + #881, #3967
  static Cobra + #882, #124
  static Cobra + #883, #3967
  static Cobra + #884, #3967
  static Cobra + #885, #3967
  static Cobra + #886, #3967
  static Cobra + #887, #3967
  static Cobra + #888, #3967
  static Cobra + #889, #3967
  static Cobra + #890, #3967
  static Cobra + #891, #3967
  static Cobra + #892, #3967
  static Cobra + #893, #3967
  static Cobra + #894, #3967
  static Cobra + #895, #3967
  static Cobra + #896, #3967
  static Cobra + #897, #3967
  static Cobra + #898, #3967
  static Cobra + #899, #3967
  static Cobra + #900, #3967
  static Cobra + #901, #3967
  static Cobra + #902, #3967
  static Cobra + #903, #3967
  static Cobra + #904, #3967
  static Cobra + #905, #3967
  static Cobra + #906, #3967
  static Cobra + #907, #3967
  static Cobra + #908, #3967
  static Cobra + #909, #3967
  static Cobra + #910, #3967
  static Cobra + #911, #3967
  static Cobra + #912, #3967
  static Cobra + #913, #3967
  static Cobra + #914, #3967
  static Cobra + #915, #3967
  static Cobra + #916, #3967
  static Cobra + #917, #124
  static Cobra + #918, #3967
  static Cobra + #919, #3967

  ;Linha 23
  static Cobra + #920, #3967
  static Cobra + #921, #3967
  static Cobra + #922, #124
  static Cobra + #923, #3967
  static Cobra + #924, #3967
  static Cobra + #925, #3967
  static Cobra + #926, #3967
  static Cobra + #927, #3967
  static Cobra + #928, #3967
  static Cobra + #929, #3967
  static Cobra + #930, #3967
  static Cobra + #931, #3967
  static Cobra + #932, #3967
  static Cobra + #933, #3967
  static Cobra + #934, #3967
  static Cobra + #935, #3967
  static Cobra + #936, #3967
  static Cobra + #937, #3967
  static Cobra + #938, #3967
  static Cobra + #939, #3967
  static Cobra + #940, #3967
  static Cobra + #941, #3967
  static Cobra + #942, #3967
  static Cobra + #943, #3967
  static Cobra + #944, #3967
  static Cobra + #945, #3967
  static Cobra + #946, #3967
  static Cobra + #947, #3967
  static Cobra + #948, #3967
  static Cobra + #949, #3967
  static Cobra + #950, #3967
  static Cobra + #951, #3967
  static Cobra + #952, #3967
  static Cobra + #953, #3967
  static Cobra + #954, #3967
  static Cobra + #955, #3967
  static Cobra + #956, #3967
  static Cobra + #957, #124
  static Cobra + #958, #3967
  static Cobra + #959, #3967

  ;Linha 24
  static Cobra + #960, #3967
  static Cobra + #961, #3967
  static Cobra + #962, #124
  static Cobra + #963, #3967
  static Cobra + #964, #3967
  static Cobra + #965, #3967
  static Cobra + #966, #3967
  static Cobra + #967, #3967
  static Cobra + #968, #65
  static Cobra + #969, #80
  static Cobra + #970, #69
  static Cobra + #971, #82
  static Cobra + #972, #84
  static Cobra + #973, #69
  static Cobra + #974, #3967
  static Cobra + #975, #83
  static Cobra + #976, #80
  static Cobra + #977, #65
  static Cobra + #978, #67
  static Cobra + #979, #69
  static Cobra + #980, #3967
  static Cobra + #981, #80
  static Cobra + #982, #65
  static Cobra + #983, #82
  static Cobra + #984, #65
  static Cobra + #985, #3967
  static Cobra + #986, #67
  static Cobra + #987, #79
  static Cobra + #988, #77
  static Cobra + #989, #69
  static Cobra + #990, #67
  static Cobra + #991, #65
  static Cobra + #992, #82
  static Cobra + #993, #3967
  static Cobra + #994, #3967
  static Cobra + #995, #3967
  static Cobra + #996, #3967
  static Cobra + #997, #124
  static Cobra + #998, #3967
  static Cobra + #999, #3967

  ;Linha 25
  static Cobra + #1000, #3967
  static Cobra + #1001, #3967
  static Cobra + #1002, #124
  static Cobra + #1003, #3967
  static Cobra + #1004, #3967
  static Cobra + #1005, #3967
  static Cobra + #1006, #3967
  static Cobra + #1007, #3967
  static Cobra + #1008, #3967
  static Cobra + #1009, #3967
  static Cobra + #1010, #3967
  static Cobra + #1011, #3967
  static Cobra + #1012, #3967
  static Cobra + #1013, #3967
  static Cobra + #1014, #3967
  static Cobra + #1015, #3967
  static Cobra + #1016, #3967
  static Cobra + #1017, #3967
  static Cobra + #1018, #3967
  static Cobra + #1019, #3967
  static Cobra + #1020, #3967
  static Cobra + #1021, #3967
  static Cobra + #1022, #3967
  static Cobra + #1023, #3967
  static Cobra + #1024, #3967
  static Cobra + #1025, #3967
  static Cobra + #1026, #3967
  static Cobra + #1027, #3967
  static Cobra + #1028, #3967
  static Cobra + #1029, #3967
  static Cobra + #1030, #3967
  static Cobra + #1031, #3967
  static Cobra + #1032, #3967
  static Cobra + #1033, #3967
  static Cobra + #1034, #3967
  static Cobra + #1035, #3967
  static Cobra + #1036, #3967
  static Cobra + #1037, #124
  static Cobra + #1038, #3967
  static Cobra + #1039, #3967

  ;Linha 26
  static Cobra + #1040, #3967
  static Cobra + #1041, #3967
  static Cobra + #1042, #124
  static Cobra + #1043, #95
  static Cobra + #1044, #95
  static Cobra + #1045, #95
  static Cobra + #1046, #95
  static Cobra + #1047, #95
  static Cobra + #1048, #95
  static Cobra + #1049, #95
  static Cobra + #1050, #95
  static Cobra + #1051, #95
  static Cobra + #1052, #95
  static Cobra + #1053, #95
  static Cobra + #1054, #95
  static Cobra + #1055, #95
  static Cobra + #1056, #95
  static Cobra + #1057, #95
  static Cobra + #1058, #95
  static Cobra + #1059, #95
  static Cobra + #1060, #95
  static Cobra + #1061, #95
  static Cobra + #1062, #95
  static Cobra + #1063, #95
  static Cobra + #1064, #95
  static Cobra + #1065, #95
  static Cobra + #1066, #95
  static Cobra + #1067, #95
  static Cobra + #1068, #95
  static Cobra + #1069, #95
  static Cobra + #1070, #95
  static Cobra + #1071, #95
  static Cobra + #1072, #95
  static Cobra + #1073, #95
  static Cobra + #1074, #95
  static Cobra + #1075, #95
  static Cobra + #1076, #95
  static Cobra + #1077, #124
  static Cobra + #1078, #3967
  static Cobra + #1079, #3967

  ;Linha 27
  static Cobra + #1080, #3967
  static Cobra + #1081, #3967
  static Cobra + #1082, #3967
  static Cobra + #1083, #3967
  static Cobra + #1084, #3967
  static Cobra + #1085, #3967
  static Cobra + #1086, #3967
  static Cobra + #1087, #3967
  static Cobra + #1088, #3967
  static Cobra + #1089, #3967
  static Cobra + #1090, #3967
  static Cobra + #1091, #3967
  static Cobra + #1092, #3967
  static Cobra + #1093, #3967
  static Cobra + #1094, #3967
  static Cobra + #1095, #3967
  static Cobra + #1096, #3967
  static Cobra + #1097, #3967
  static Cobra + #1098, #3967
  static Cobra + #1099, #3967
  static Cobra + #1100, #3967
  static Cobra + #1101, #3967
  static Cobra + #1102, #3967
  static Cobra + #1103, #3967
  static Cobra + #1104, #3967
  static Cobra + #1105, #3967
  static Cobra + #1106, #3967
  static Cobra + #1107, #3967
  static Cobra + #1108, #3967
  static Cobra + #1109, #3967
  static Cobra + #1110, #3967
  static Cobra + #1111, #3967
  static Cobra + #1112, #3967
  static Cobra + #1113, #3967
  static Cobra + #1114, #3967
  static Cobra + #1115, #3967
  static Cobra + #1116, #3967
  static Cobra + #1117, #3967
  static Cobra + #1118, #3967
  static Cobra + #1119, #3967

  ;Linha 28
  static Cobra + #1120, #3967
  static Cobra + #1121, #3967
  static Cobra + #1122, #3967
  static Cobra + #1123, #3967
  static Cobra + #1124, #3967
  static Cobra + #1125, #3967
  static Cobra + #1126, #3967
  static Cobra + #1127, #3967
  static Cobra + #1128, #3967
  static Cobra + #1129, #3967
  static Cobra + #1130, #3967
  static Cobra + #1131, #3967
  static Cobra + #1132, #3967
  static Cobra + #1133, #3967
  static Cobra + #1134, #3967
  static Cobra + #1135, #3967
  static Cobra + #1136, #3967
  static Cobra + #1137, #3967
  static Cobra + #1138, #3967
  static Cobra + #1139, #3967
  static Cobra + #1140, #3967
  static Cobra + #1141, #3967
  static Cobra + #1142, #3967
  static Cobra + #1143, #3967
  static Cobra + #1144, #3967
  static Cobra + #1145, #3967
  static Cobra + #1146, #3967
  static Cobra + #1147, #3967
  static Cobra + #1148, #3967
  static Cobra + #1149, #3967
  static Cobra + #1150, #3967
  static Cobra + #1151, #3967
  static Cobra + #1152, #3967
  static Cobra + #1153, #3967
  static Cobra + #1154, #3967
  static Cobra + #1155, #3967
  static Cobra + #1156, #3967
  static Cobra + #1157, #3967
  static Cobra + #1158, #3967
  static Cobra + #1159, #3967

  ;Linha 29
  static Cobra + #1160, #3967
  static Cobra + #1161, #3967
  static Cobra + #1162, #3967
  static Cobra + #1163, #3967
  static Cobra + #1164, #3967
  static Cobra + #1165, #3967
  static Cobra + #1166, #3967
  static Cobra + #1167, #3967
  static Cobra + #1168, #3967
  static Cobra + #1169, #3967
  static Cobra + #1170, #3967
  static Cobra + #1171, #3967
  static Cobra + #1172, #3967
  static Cobra + #1173, #3967
  static Cobra + #1174, #3967
  static Cobra + #1175, #3967
  static Cobra + #1176, #3967
  static Cobra + #1177, #3967
  static Cobra + #1178, #3967
  static Cobra + #1179, #3967
  static Cobra + #1180, #3967
  static Cobra + #1181, #3967
  static Cobra + #1182, #3967
  static Cobra + #1183, #3967
  static Cobra + #1184, #3967
  static Cobra + #1185, #3967
  static Cobra + #1186, #3967
  static Cobra + #1187, #3967
  static Cobra + #1188, #3967
  static Cobra + #1189, #3967
  static Cobra + #1190, #3967
  static Cobra + #1191, #3967
  static Cobra + #1192, #3967
  static Cobra + #1193, #3967
  static Cobra + #1194, #3967
  static Cobra + #1195, #3967
  static Cobra + #1196, #3967
  static Cobra + #1197, #3967
  static Cobra + #1198, #3967
  static Cobra + #1199, #3967
  
tela_instrucoes:
  static instrucoes_basicas + #0, #2880
  static instrucoes_basicas + #1, #2880
  static instrucoes_basicas + #2, #2880
  static instrucoes_basicas + #3, #2880
  static instrucoes_basicas + #4, #2880
  static instrucoes_basicas + #5, #2880
  static instrucoes_basicas + #6, #2880
  static instrucoes_basicas + #7, #2880
  static instrucoes_basicas + #8, #2880
  static instrucoes_basicas + #9, #2880
  static instrucoes_basicas + #10, #2880
  static instrucoes_basicas + #11, #2880
  static instrucoes_basicas + #12, #2880
  static instrucoes_basicas + #13, #2880
  static instrucoes_basicas + #14, #2880
  static instrucoes_basicas + #15, #2880
  static instrucoes_basicas + #16, #2880
  static instrucoes_basicas + #17, #2880
  static instrucoes_basicas + #18, #2880
  static instrucoes_basicas + #19, #2880
  static instrucoes_basicas + #20, #2880
  static instrucoes_basicas + #21, #2880
  static instrucoes_basicas + #22, #2880
  static instrucoes_basicas + #23, #2880
  static instrucoes_basicas + #24, #2880
  static instrucoes_basicas + #25, #2880
  static instrucoes_basicas + #26, #2880
  static instrucoes_basicas + #27, #2880
  static instrucoes_basicas + #28, #2880
  static instrucoes_basicas + #29, #2880
  static instrucoes_basicas + #30, #2880
  static instrucoes_basicas + #31, #2880
  static instrucoes_basicas + #32, #2880
  static instrucoes_basicas + #33, #2880
  static instrucoes_basicas + #34, #2880
  static instrucoes_basicas + #35, #2880
  static instrucoes_basicas + #36, #2880
  static instrucoes_basicas + #37, #2880
  static instrucoes_basicas + #38, #2880
  static instrucoes_basicas + #39, #2880

  ;Linha 1
  static instrucoes_basicas + #40, #2880
  static instrucoes_basicas + #41, #127
  static instrucoes_basicas + #42, #127
  static instrucoes_basicas + #43, #127
  static instrucoes_basicas + #44, #127
  static instrucoes_basicas + #45, #127
  static instrucoes_basicas + #46, #127
  static instrucoes_basicas + #47, #127
  static instrucoes_basicas + #48, #127
  static instrucoes_basicas + #49, #127
  static instrucoes_basicas + #50, #127
  static instrucoes_basicas + #51, #127
  static instrucoes_basicas + #52, #127
  static instrucoes_basicas + #53, #127
  static instrucoes_basicas + #54, #3967
  static instrucoes_basicas + #55, #3967
  static instrucoes_basicas + #56, #3967
  static instrucoes_basicas + #57, #3967
  static instrucoes_basicas + #58, #127
  static instrucoes_basicas + #59, #127
  static instrucoes_basicas + #60, #127
  static instrucoes_basicas + #61, #127
  static instrucoes_basicas + #62, #127
  static instrucoes_basicas + #63, #127
  static instrucoes_basicas + #64, #127
  static instrucoes_basicas + #65, #127
  static instrucoes_basicas + #66, #127
  static instrucoes_basicas + #67, #127
  static instrucoes_basicas + #68, #127
  static instrucoes_basicas + #69, #127
  static instrucoes_basicas + #70, #3967
  static instrucoes_basicas + #71, #3967
  static instrucoes_basicas + #72, #3967
  static instrucoes_basicas + #73, #127
  static instrucoes_basicas + #74, #127
  static instrucoes_basicas + #75, #127
  static instrucoes_basicas + #76, #127
  static instrucoes_basicas + #77, #127
  static instrucoes_basicas + #78, #3967
  static instrucoes_basicas + #79, #2880

  ;Linha 2
  static instrucoes_basicas + #80, #2880
  static instrucoes_basicas + #81, #127
  static instrucoes_basicas + #82, #127
  static instrucoes_basicas + #83, #127
  static instrucoes_basicas + #84, #127
  static instrucoes_basicas + #85, #127
  static instrucoes_basicas + #86, #3967
  static instrucoes_basicas + #87, #68
  static instrucoes_basicas + #88, #73
  static instrucoes_basicas + #89, #83
  static instrucoes_basicas + #90, #67
  static instrucoes_basicas + #91, #73
  static instrucoes_basicas + #92, #80
  static instrucoes_basicas + #93, #76
  static instrucoes_basicas + #94, #73
  static instrucoes_basicas + #95, #78
  static instrucoes_basicas + #96, #65
  static instrucoes_basicas + #97, #3967
  static instrucoes_basicas + #98, #79
  static instrucoes_basicas + #99, #82
  static instrucoes_basicas + #100, #71
  static instrucoes_basicas + #101, #45
  static instrucoes_basicas + #102, #65
  static instrucoes_basicas + #103, #82
  static instrucoes_basicas + #104, #81
  static instrucoes_basicas + #105, #3967
  static instrucoes_basicas + #106, #50
  static instrucoes_basicas + #107, #48
  static instrucoes_basicas + #108, #50
  static instrucoes_basicas + #109, #50
  static instrucoes_basicas + #110, #47
  static instrucoes_basicas + #111, #50
  static instrucoes_basicas + #112, #127
  static instrucoes_basicas + #113, #127
  static instrucoes_basicas + #114, #127
  static instrucoes_basicas + #115, #127
  static instrucoes_basicas + #116, #127
  static instrucoes_basicas + #117, #127
  static instrucoes_basicas + #118, #3967
  static instrucoes_basicas + #119, #2880

  ;Linha 3
  static instrucoes_basicas + #120, #2880
  static instrucoes_basicas + #121, #127
  static instrucoes_basicas + #122, #127
  static instrucoes_basicas + #123, #127
  static instrucoes_basicas + #124, #127
  static instrucoes_basicas + #125, #127
  static instrucoes_basicas + #126, #127
  static instrucoes_basicas + #127, #127
  static instrucoes_basicas + #128, #127
  static instrucoes_basicas + #129, #127
  static instrucoes_basicas + #130, #127
  static instrucoes_basicas + #131, #127
  static instrucoes_basicas + #132, #127
  static instrucoes_basicas + #133, #127
  static instrucoes_basicas + #134, #127
  static instrucoes_basicas + #135, #127
  static instrucoes_basicas + #136, #127
  static instrucoes_basicas + #137, #127
  static instrucoes_basicas + #138, #127
  static instrucoes_basicas + #139, #127
  static instrucoes_basicas + #140, #127
  static instrucoes_basicas + #141, #127
  static instrucoes_basicas + #142, #127
  static instrucoes_basicas + #143, #127
  static instrucoes_basicas + #144, #127
  static instrucoes_basicas + #145, #127
  static instrucoes_basicas + #146, #127
  static instrucoes_basicas + #147, #127
  static instrucoes_basicas + #148, #127
  static instrucoes_basicas + #149, #127
  static instrucoes_basicas + #150, #127
  static instrucoes_basicas + #151, #127
  static instrucoes_basicas + #152, #127
  static instrucoes_basicas + #153, #127
  static instrucoes_basicas + #154, #127
  static instrucoes_basicas + #155, #127
  static instrucoes_basicas + #156, #127
  static instrucoes_basicas + #157, #127
  static instrucoes_basicas + #158, #3967
  static instrucoes_basicas + #159, #2880

  ;Linha 4
  static instrucoes_basicas + #160, #2880
  static instrucoes_basicas + #161, #3967
  static instrucoes_basicas + #162, #127
  static instrucoes_basicas + #163, #127
  static instrucoes_basicas + #164, #127
  static instrucoes_basicas + #165, #127
  static instrucoes_basicas + #166, #127
  static instrucoes_basicas + #167, #127
  static instrucoes_basicas + #168, #127
  static instrucoes_basicas + #169, #127
  static instrucoes_basicas + #170, #127
  static instrucoes_basicas + #171, #127
  static instrucoes_basicas + #172, #127
  static instrucoes_basicas + #173, #127
  static instrucoes_basicas + #174, #127
  static instrucoes_basicas + #175, #127
  static instrucoes_basicas + #176, #127
  static instrucoes_basicas + #177, #127
  static instrucoes_basicas + #178, #3967
  static instrucoes_basicas + #179, #127
  static instrucoes_basicas + #180, #127
  static instrucoes_basicas + #181, #127
  static instrucoes_basicas + #182, #127
  static instrucoes_basicas + #183, #127
  static instrucoes_basicas + #184, #127
  static instrucoes_basicas + #185, #127
  static instrucoes_basicas + #186, #127
  static instrucoes_basicas + #187, #127
  static instrucoes_basicas + #188, #127
  static instrucoes_basicas + #189, #127
  static instrucoes_basicas + #190, #127
  static instrucoes_basicas + #191, #127
  static instrucoes_basicas + #192, #127
  static instrucoes_basicas + #193, #127
  static instrucoes_basicas + #194, #127
  static instrucoes_basicas + #195, #127
  static instrucoes_basicas + #196, #127
  static instrucoes_basicas + #197, #127
  static instrucoes_basicas + #198, #3967
  static instrucoes_basicas + #199, #2880

  ;Linha 5
  static instrucoes_basicas + #200, #2880
  static instrucoes_basicas + #201, #3967
  static instrucoes_basicas + #202, #127
  static instrucoes_basicas + #203, #69
  static instrucoes_basicas + #204, #83
  static instrucoes_basicas + #205, #83
  static instrucoes_basicas + #206, #69
  static instrucoes_basicas + #207, #3967
  static instrucoes_basicas + #208, #74
  static instrucoes_basicas + #209, #79
  static instrucoes_basicas + #210, #71
  static instrucoes_basicas + #211, #79
  static instrucoes_basicas + #212, #3967
  static instrucoes_basicas + #213, #70
  static instrucoes_basicas + #214, #79
  static instrucoes_basicas + #215, #73
  static instrucoes_basicas + #216, #3967
  static instrucoes_basicas + #217, #66
  static instrucoes_basicas + #218, #65
  static instrucoes_basicas + #219, #83
  static instrucoes_basicas + #220, #69
  static instrucoes_basicas + #221, #65
  static instrucoes_basicas + #222, #68
  static instrucoes_basicas + #223, #79
  static instrucoes_basicas + #224, #3967
  static instrucoes_basicas + #225, #78
  static instrucoes_basicas + #226, #79
  static instrucoes_basicas + #227, #3967
  static instrucoes_basicas + #228, #67
  static instrucoes_basicas + #229, #76
  static instrucoes_basicas + #230, #65
  static instrucoes_basicas + #231, #83
  static instrucoes_basicas + #232, #83
  static instrucoes_basicas + #233, #73
  static instrucoes_basicas + #234, #67
  static instrucoes_basicas + #235, #79
  static instrucoes_basicas + #236, #3967
  static instrucoes_basicas + #237, #127
  static instrucoes_basicas + #238, #3967
  static instrucoes_basicas + #239, #2880

  ;Linha 6
  static instrucoes_basicas + #240, #2880
  static instrucoes_basicas + #241, #3967
  static instrucoes_basicas + #242, #127
  static instrucoes_basicas + #243, #127
  static instrucoes_basicas + #244, #127
  static instrucoes_basicas + #245, #127
  static instrucoes_basicas + #246, #127
  static instrucoes_basicas + #247, #127
  static instrucoes_basicas + #248, #127
  static instrucoes_basicas + #249, #127
  static instrucoes_basicas + #250, #3967
  static instrucoes_basicas + #251, #3967
  static instrucoes_basicas + #252, #3967
  static instrucoes_basicas + #253, #3967
  static instrucoes_basicas + #254, #3967
  static instrucoes_basicas + #255, #3967
  static instrucoes_basicas + #256, #3967
  static instrucoes_basicas + #257, #3967
  static instrucoes_basicas + #258, #3967
  static instrucoes_basicas + #259, #127
  static instrucoes_basicas + #260, #127
  static instrucoes_basicas + #261, #127
  static instrucoes_basicas + #262, #127
  static instrucoes_basicas + #263, #127
  static instrucoes_basicas + #264, #127
  static instrucoes_basicas + #265, #127
  static instrucoes_basicas + #266, #127
  static instrucoes_basicas + #267, #127
  static instrucoes_basicas + #268, #127
  static instrucoes_basicas + #269, #127
  static instrucoes_basicas + #270, #127
  static instrucoes_basicas + #271, #127
  static instrucoes_basicas + #272, #127
  static instrucoes_basicas + #273, #127
  static instrucoes_basicas + #274, #127
  static instrucoes_basicas + #275, #127
  static instrucoes_basicas + #276, #127
  static instrucoes_basicas + #277, #127
  static instrucoes_basicas + #278, #3967
  static instrucoes_basicas + #279, #2880

  ;Linha 7
  static instrucoes_basicas + #280, #2880
  static instrucoes_basicas + #281, #3967
  static instrucoes_basicas + #282, #127
  static instrucoes_basicas + #283, #3967
  static instrucoes_basicas + #284, #3967
  static instrucoes_basicas + #285, #3967
  static instrucoes_basicas + #286, #3967
  static instrucoes_basicas + #287, #3967
  static instrucoes_basicas + #288, #3967
  static instrucoes_basicas + #289, #3967
  static instrucoes_basicas + #290, #3967
  static instrucoes_basicas + #291, #3967
  static instrucoes_basicas + #292, #3967
  static instrucoes_basicas + #293, #3967
  static instrucoes_basicas + #294, #3967
  static instrucoes_basicas + #295, #3967
  static instrucoes_basicas + #296, #3967
  static instrucoes_basicas + #297, #3967
  static instrucoes_basicas + #298, #83
  static instrucoes_basicas + #299, #78
  static instrucoes_basicas + #300, #65
  static instrucoes_basicas + #301, #75
  static instrucoes_basicas + #302, #69
  static instrucoes_basicas + #303, #127
  static instrucoes_basicas + #304, #127
  static instrucoes_basicas + #305, #127
  static instrucoes_basicas + #306, #127
  static instrucoes_basicas + #307, #127
  static instrucoes_basicas + #308, #127
  static instrucoes_basicas + #309, #127
  static instrucoes_basicas + #310, #127
  static instrucoes_basicas + #311, #127
  static instrucoes_basicas + #312, #127
  static instrucoes_basicas + #313, #127
  static instrucoes_basicas + #314, #127
  static instrucoes_basicas + #315, #127
  static instrucoes_basicas + #316, #127
  static instrucoes_basicas + #317, #127
  static instrucoes_basicas + #318, #3967
  static instrucoes_basicas + #319, #2880

  ;Linha 8
  static instrucoes_basicas + #320, #2880
  static instrucoes_basicas + #321, #3967
  static instrucoes_basicas + #322, #127
  static instrucoes_basicas + #323, #127
  static instrucoes_basicas + #324, #3967
  static instrucoes_basicas + #325, #3967
  static instrucoes_basicas + #326, #3967
  static instrucoes_basicas + #327, #127
  static instrucoes_basicas + #328, #3967
  static instrucoes_basicas + #329, #127
  static instrucoes_basicas + #330, #127
  static instrucoes_basicas + #331, #3967
  static instrucoes_basicas + #332, #3967
  static instrucoes_basicas + #333, #3967
  static instrucoes_basicas + #334, #127
  static instrucoes_basicas + #335, #127
  static instrucoes_basicas + #336, #127
  static instrucoes_basicas + #337, #127
  static instrucoes_basicas + #338, #127
  static instrucoes_basicas + #339, #127
  static instrucoes_basicas + #340, #127
  static instrucoes_basicas + #341, #127
  static instrucoes_basicas + #342, #127
  static instrucoes_basicas + #343, #127
  static instrucoes_basicas + #344, #127
  static instrucoes_basicas + #345, #127
  static instrucoes_basicas + #346, #127
  static instrucoes_basicas + #347, #127
  static instrucoes_basicas + #348, #127
  static instrucoes_basicas + #349, #127
  static instrucoes_basicas + #350, #127
  static instrucoes_basicas + #351, #127
  static instrucoes_basicas + #352, #127
  static instrucoes_basicas + #353, #127
  static instrucoes_basicas + #354, #127
  static instrucoes_basicas + #355, #127
  static instrucoes_basicas + #356, #127
  static instrucoes_basicas + #357, #127
  static instrucoes_basicas + #358, #127
  static instrucoes_basicas + #359, #2880

  ;Linha 9
  static instrucoes_basicas + #360, #2880
  static instrucoes_basicas + #361, #3967
  static instrucoes_basicas + #362, #127
  static instrucoes_basicas + #363, #127
  static instrucoes_basicas + #364, #127
  static instrucoes_basicas + #365, #127
  static instrucoes_basicas + #366, #127
  static instrucoes_basicas + #367, #127
  static instrucoes_basicas + #368, #127
  static instrucoes_basicas + #369, #3967
  static instrucoes_basicas + #370, #3967
  static instrucoes_basicas + #371, #127
  static instrucoes_basicas + #372, #3967
  static instrucoes_basicas + #373, #127
  static instrucoes_basicas + #374, #127
  static instrucoes_basicas + #375, #127
  static instrucoes_basicas + #376, #127
  static instrucoes_basicas + #377, #127
  static instrucoes_basicas + #378, #127
  static instrucoes_basicas + #379, #127
  static instrucoes_basicas + #380, #127
  static instrucoes_basicas + #381, #127
  static instrucoes_basicas + #382, #127
  static instrucoes_basicas + #383, #127
  static instrucoes_basicas + #384, #3967
  static instrucoes_basicas + #385, #127
  static instrucoes_basicas + #386, #127
  static instrucoes_basicas + #387, #127
  static instrucoes_basicas + #388, #127
  static instrucoes_basicas + #389, #127
  static instrucoes_basicas + #390, #3967
  static instrucoes_basicas + #391, #127
  static instrucoes_basicas + #392, #127
  static instrucoes_basicas + #393, #127
  static instrucoes_basicas + #394, #127
  static instrucoes_basicas + #395, #127
  static instrucoes_basicas + #396, #127
  static instrucoes_basicas + #397, #127
  static instrucoes_basicas + #398, #127
  static instrucoes_basicas + #399, #2880

  ;Linha 10
  static instrucoes_basicas + #400, #2880
  static instrucoes_basicas + #401, #3967
  static instrucoes_basicas + #402, #3967
  static instrucoes_basicas + #403, #127
  static instrucoes_basicas + #404, #127
  static instrucoes_basicas + #405, #127
  static instrucoes_basicas + #406, #127
  static instrucoes_basicas + #407, #127
  static instrucoes_basicas + #408, #3967
  static instrucoes_basicas + #409, #79
  static instrucoes_basicas + #410, #83
  static instrucoes_basicas + #411, #3967
  static instrucoes_basicas + #412, #67
  static instrucoes_basicas + #413, #79
  static instrucoes_basicas + #414, #77
  static instrucoes_basicas + #415, #65
  static instrucoes_basicas + #416, #78
  static instrucoes_basicas + #417, #68
  static instrucoes_basicas + #418, #79
  static instrucoes_basicas + #419, #83
  static instrucoes_basicas + #420, #127
  static instrucoes_basicas + #421, #66
  static instrucoes_basicas + #422, #65
  static instrucoes_basicas + #423, #83
  static instrucoes_basicas + #424, #73
  static instrucoes_basicas + #425, #67
  static instrucoes_basicas + #426, #79
  static instrucoes_basicas + #427, #83
  static instrucoes_basicas + #428, #127
  static instrucoes_basicas + #429, #83
  static instrucoes_basicas + #430, #65
  static instrucoes_basicas + #431, #79
  static instrucoes_basicas + #432, #127
  static instrucoes_basicas + #433, #127
  static instrucoes_basicas + #434, #127
  static instrucoes_basicas + #435, #127
  static instrucoes_basicas + #436, #127
  static instrucoes_basicas + #437, #3967
  static instrucoes_basicas + #438, #127
  static instrucoes_basicas + #439, #2880

  ;Linha 11
  static instrucoes_basicas + #440, #2880
  static instrucoes_basicas + #441, #3967
  static instrucoes_basicas + #442, #3967
  static instrucoes_basicas + #443, #127
  static instrucoes_basicas + #444, #127
  static instrucoes_basicas + #445, #127
  static instrucoes_basicas + #446, #127
  static instrucoes_basicas + #447, #3967
  static instrucoes_basicas + #448, #3967
  static instrucoes_basicas + #449, #3967
  static instrucoes_basicas + #450, #3967
  static instrucoes_basicas + #451, #3967
  static instrucoes_basicas + #452, #3967
  static instrucoes_basicas + #453, #3967
  static instrucoes_basicas + #454, #3967
  static instrucoes_basicas + #455, #3967
  static instrucoes_basicas + #456, #3967
  static instrucoes_basicas + #457, #3967
  static instrucoes_basicas + #458, #3967
  static instrucoes_basicas + #459, #3967
  static instrucoes_basicas + #460, #3967
  static instrucoes_basicas + #461, #3967
  static instrucoes_basicas + #462, #3967
  static instrucoes_basicas + #463, #3967
  static instrucoes_basicas + #464, #3967
  static instrucoes_basicas + #465, #3967
  static instrucoes_basicas + #466, #3967
  static instrucoes_basicas + #467, #3967
  static instrucoes_basicas + #468, #3967
  static instrucoes_basicas + #469, #3967
  static instrucoes_basicas + #470, #3967
  static instrucoes_basicas + #471, #3967
  static instrucoes_basicas + #472, #127
  static instrucoes_basicas + #473, #127
  static instrucoes_basicas + #474, #127
  static instrucoes_basicas + #475, #127
  static instrucoes_basicas + #476, #127
  static instrucoes_basicas + #477, #3967
  static instrucoes_basicas + #478, #3967
  static instrucoes_basicas + #479, #2880

  ;Linha 12
  static instrucoes_basicas + #480, #2880
  static instrucoes_basicas + #481, #3967
  static instrucoes_basicas + #482, #3967
  static instrucoes_basicas + #483, #127
  static instrucoes_basicas + #484, #127
  static instrucoes_basicas + #485, #127
  static instrucoes_basicas + #486, #127
  static instrucoes_basicas + #487, #64
  static instrucoes_basicas + #488, #64
  static instrucoes_basicas + #489, #64
  static instrucoes_basicas + #490, #64
  static instrucoes_basicas + #491, #64
  static instrucoes_basicas + #492, #64
  static instrucoes_basicas + #493, #64
  static instrucoes_basicas + #494, #64
  static instrucoes_basicas + #495, #64
  static instrucoes_basicas + #496, #64
  static instrucoes_basicas + #497, #64
  static instrucoes_basicas + #498, #64
  static instrucoes_basicas + #499, #64
  static instrucoes_basicas + #500, #64
  static instrucoes_basicas + #501, #64
  static instrucoes_basicas + #502, #64
  static instrucoes_basicas + #503, #64
  static instrucoes_basicas + #504, #64
  static instrucoes_basicas + #505, #64
  static instrucoes_basicas + #506, #64
  static instrucoes_basicas + #507, #64
  static instrucoes_basicas + #508, #64
  static instrucoes_basicas + #509, #64
  static instrucoes_basicas + #510, #64
  static instrucoes_basicas + #511, #64
  static instrucoes_basicas + #512, #64
  static instrucoes_basicas + #513, #64
  static instrucoes_basicas + #514, #127
  static instrucoes_basicas + #515, #127
  static instrucoes_basicas + #516, #127
  static instrucoes_basicas + #517, #3967
  static instrucoes_basicas + #518, #3967
  static instrucoes_basicas + #519, #2880

  ;Linha 13
  static instrucoes_basicas + #520, #2880
  static instrucoes_basicas + #521, #3967
  static instrucoes_basicas + #522, #127
  static instrucoes_basicas + #523, #127
  static instrucoes_basicas + #524, #127
  static instrucoes_basicas + #525, #127
  static instrucoes_basicas + #526, #127
  static instrucoes_basicas + #527, #64
  static instrucoes_basicas + #528, #3967
  static instrucoes_basicas + #529, #3967
  static instrucoes_basicas + #530, #3967
  static instrucoes_basicas + #531, #3967
  static instrucoes_basicas + #532, #3967
  static instrucoes_basicas + #533, #3967
  static instrucoes_basicas + #534, #3967
  static instrucoes_basicas + #535, #3967
  static instrucoes_basicas + #536, #3967
  static instrucoes_basicas + #537, #3967
  static instrucoes_basicas + #538, #3967
  static instrucoes_basicas + #539, #3967
  static instrucoes_basicas + #540, #3967
  static instrucoes_basicas + #541, #3967
  static instrucoes_basicas + #542, #3967
  static instrucoes_basicas + #543, #3967
  static instrucoes_basicas + #544, #3967
  static instrucoes_basicas + #545, #3967
  static instrucoes_basicas + #546, #3967
  static instrucoes_basicas + #547, #3967
  static instrucoes_basicas + #548, #3967
  static instrucoes_basicas + #549, #3967
  static instrucoes_basicas + #550, #3967
  static instrucoes_basicas + #551, #3967
  static instrucoes_basicas + #552, #3967
  static instrucoes_basicas + #553, #64
  static instrucoes_basicas + #554, #3967
  static instrucoes_basicas + #555, #127
  static instrucoes_basicas + #556, #127
  static instrucoes_basicas + #557, #127
  static instrucoes_basicas + #558, #3967
  static instrucoes_basicas + #559, #2880

  ;Linha 14
  static instrucoes_basicas + #560, #2880
  static instrucoes_basicas + #561, #3967
  static instrucoes_basicas + #562, #127
  static instrucoes_basicas + #563, #127
  static instrucoes_basicas + #564, #127
  static instrucoes_basicas + #565, #127
  static instrucoes_basicas + #566, #127
  static instrucoes_basicas + #567, #64
  static instrucoes_basicas + #568, #127
  static instrucoes_basicas + #569, #127
  static instrucoes_basicas + #570, #127
  static instrucoes_basicas + #571, #127
  static instrucoes_basicas + #572, #127
  static instrucoes_basicas + #573, #127
  static instrucoes_basicas + #574, #127
  static instrucoes_basicas + #575, #127
  static instrucoes_basicas + #576, #127
  static instrucoes_basicas + #577, #127
  static instrucoes_basicas + #578, #127
  static instrucoes_basicas + #579, #127
  static instrucoes_basicas + #580, #127
  static instrucoes_basicas + #581, #127
  static instrucoes_basicas + #582, #127
  static instrucoes_basicas + #583, #127
  static instrucoes_basicas + #584, #3967
  static instrucoes_basicas + #585, #127
  static instrucoes_basicas + #586, #127
  static instrucoes_basicas + #587, #127
  static instrucoes_basicas + #588, #127
  static instrucoes_basicas + #589, #127
  static instrucoes_basicas + #590, #127
  static instrucoes_basicas + #591, #3967
  static instrucoes_basicas + #592, #3967
  static instrucoes_basicas + #593, #64
  static instrucoes_basicas + #594, #127
  static instrucoes_basicas + #595, #127
  static instrucoes_basicas + #596, #127
  static instrucoes_basicas + #597, #127
  static instrucoes_basicas + #598, #3967
  static instrucoes_basicas + #599, #2880

  ;Linha 15
  static instrucoes_basicas + #600, #2880
  static instrucoes_basicas + #601, #3967
  static instrucoes_basicas + #602, #127
  static instrucoes_basicas + #603, #127
  static instrucoes_basicas + #604, #127
  static instrucoes_basicas + #605, #127
  static instrucoes_basicas + #606, #127
  static instrucoes_basicas + #607, #64
  static instrucoes_basicas + #608, #127
  static instrucoes_basicas + #609, #127
  static instrucoes_basicas + #610, #87
  static instrucoes_basicas + #611, #45
  static instrucoes_basicas + #612, #65
  static instrucoes_basicas + #613, #78
  static instrucoes_basicas + #614, #68
  static instrucoes_basicas + #615, #65
  static instrucoes_basicas + #616, #82
  static instrucoes_basicas + #617, #127
  static instrucoes_basicas + #618, #80
  static instrucoes_basicas + #619, #65
  static instrucoes_basicas + #620, #82
  static instrucoes_basicas + #621, #65
  static instrucoes_basicas + #622, #127
  static instrucoes_basicas + #623, #67
  static instrucoes_basicas + #624, #73
  static instrucoes_basicas + #625, #77
  static instrucoes_basicas + #626, #65
  static instrucoes_basicas + #627, #3967
  static instrucoes_basicas + #628, #3967
  static instrucoes_basicas + #629, #3967
  static instrucoes_basicas + #630, #127
  static instrucoes_basicas + #631, #3967
  static instrucoes_basicas + #632, #3967
  static instrucoes_basicas + #633, #64
  static instrucoes_basicas + #634, #127
  static instrucoes_basicas + #635, #127
  static instrucoes_basicas + #636, #127
  static instrucoes_basicas + #637, #127
  static instrucoes_basicas + #638, #3967
  static instrucoes_basicas + #639, #2880

  ;Linha 16
  static instrucoes_basicas + #640, #2880
  static instrucoes_basicas + #641, #3967
  static instrucoes_basicas + #642, #127
  static instrucoes_basicas + #643, #127
  static instrucoes_basicas + #644, #127
  static instrucoes_basicas + #645, #127
  static instrucoes_basicas + #646, #127
  static instrucoes_basicas + #647, #64
  static instrucoes_basicas + #648, #127
  static instrucoes_basicas + #649, #127
  static instrucoes_basicas + #650, #127
  static instrucoes_basicas + #651, #127
  static instrucoes_basicas + #652, #3967
  static instrucoes_basicas + #653, #127
  static instrucoes_basicas + #654, #127
  static instrucoes_basicas + #655, #127
  static instrucoes_basicas + #656, #127
  static instrucoes_basicas + #657, #127
  static instrucoes_basicas + #658, #127
  static instrucoes_basicas + #659, #127
  static instrucoes_basicas + #660, #127
  static instrucoes_basicas + #661, #127
  static instrucoes_basicas + #662, #127
  static instrucoes_basicas + #663, #127
  static instrucoes_basicas + #664, #127
  static instrucoes_basicas + #665, #127
  static instrucoes_basicas + #666, #127
  static instrucoes_basicas + #667, #127
  static instrucoes_basicas + #668, #127
  static instrucoes_basicas + #669, #127
  static instrucoes_basicas + #670, #127
  static instrucoes_basicas + #671, #127
  static instrucoes_basicas + #672, #3967
  static instrucoes_basicas + #673, #64
  static instrucoes_basicas + #674, #127
  static instrucoes_basicas + #675, #127
  static instrucoes_basicas + #676, #127
  static instrucoes_basicas + #677, #127
  static instrucoes_basicas + #678, #3967
  static instrucoes_basicas + #679, #2880

  ;Linha 17
  static instrucoes_basicas + #680, #2880
  static instrucoes_basicas + #681, #3967
  static instrucoes_basicas + #682, #127
  static instrucoes_basicas + #683, #127
  static instrucoes_basicas + #684, #127
  static instrucoes_basicas + #685, #127
  static instrucoes_basicas + #686, #127
  static instrucoes_basicas + #687, #64
  static instrucoes_basicas + #688, #127
  static instrucoes_basicas + #689, #127
  static instrucoes_basicas + #690, #65
  static instrucoes_basicas + #691, #45
  static instrucoes_basicas + #692, #65
  static instrucoes_basicas + #693, #78
  static instrucoes_basicas + #694, #68
  static instrucoes_basicas + #695, #65
  static instrucoes_basicas + #696, #82
  static instrucoes_basicas + #697, #127
  static instrucoes_basicas + #698, #80
  static instrucoes_basicas + #699, #65
  static instrucoes_basicas + #700, #82
  static instrucoes_basicas + #701, #65
  static instrucoes_basicas + #702, #127
  static instrucoes_basicas + #703, #69
  static instrucoes_basicas + #704, #83
  static instrucoes_basicas + #705, #81
  static instrucoes_basicas + #706, #85
  static instrucoes_basicas + #707, #69
  static instrucoes_basicas + #708, #82
  static instrucoes_basicas + #709, #68
  static instrucoes_basicas + #710, #65
  static instrucoes_basicas + #711, #127
  static instrucoes_basicas + #712, #127
  static instrucoes_basicas + #713, #64
  static instrucoes_basicas + #714, #127
  static instrucoes_basicas + #715, #127
  static instrucoes_basicas + #716, #127
  static instrucoes_basicas + #717, #127
  static instrucoes_basicas + #718, #3967
  static instrucoes_basicas + #719, #2880

  ;Linha 18
  static instrucoes_basicas + #720, #2880
  static instrucoes_basicas + #721, #127
  static instrucoes_basicas + #722, #127
  static instrucoes_basicas + #723, #127
  static instrucoes_basicas + #724, #127
  static instrucoes_basicas + #725, #127
  static instrucoes_basicas + #726, #127
  static instrucoes_basicas + #727, #64
  static instrucoes_basicas + #728, #127
  static instrucoes_basicas + #729, #127
  static instrucoes_basicas + #730, #127
  static instrucoes_basicas + #731, #127
  static instrucoes_basicas + #732, #127
  static instrucoes_basicas + #733, #127
  static instrucoes_basicas + #734, #127
  static instrucoes_basicas + #735, #127
  static instrucoes_basicas + #736, #127
  static instrucoes_basicas + #737, #127
  static instrucoes_basicas + #738, #127
  static instrucoes_basicas + #739, #127
  static instrucoes_basicas + #740, #127
  static instrucoes_basicas + #741, #127
  static instrucoes_basicas + #742, #127
  static instrucoes_basicas + #743, #127
  static instrucoes_basicas + #744, #127
  static instrucoes_basicas + #745, #127
  static instrucoes_basicas + #746, #127
  static instrucoes_basicas + #747, #127
  static instrucoes_basicas + #748, #127
  static instrucoes_basicas + #749, #127
  static instrucoes_basicas + #750, #127
  static instrucoes_basicas + #751, #127
  static instrucoes_basicas + #752, #127
  static instrucoes_basicas + #753, #64
  static instrucoes_basicas + #754, #127
  static instrucoes_basicas + #755, #127
  static instrucoes_basicas + #756, #127
  static instrucoes_basicas + #757, #127
  static instrucoes_basicas + #758, #3967
  static instrucoes_basicas + #759, #2880

  ;Linha 19
  static instrucoes_basicas + #760, #2880
  static instrucoes_basicas + #761, #127
  static instrucoes_basicas + #762, #127
  static instrucoes_basicas + #763, #127
  static instrucoes_basicas + #764, #127
  static instrucoes_basicas + #765, #127
  static instrucoes_basicas + #766, #127
  static instrucoes_basicas + #767, #64
  static instrucoes_basicas + #768, #127
  static instrucoes_basicas + #769, #127
  static instrucoes_basicas + #770, #83
  static instrucoes_basicas + #771, #45
  static instrucoes_basicas + #772, #65
  static instrucoes_basicas + #773, #78
  static instrucoes_basicas + #774, #68
  static instrucoes_basicas + #775, #65
  static instrucoes_basicas + #776, #82
  static instrucoes_basicas + #777, #127
  static instrucoes_basicas + #778, #80
  static instrucoes_basicas + #779, #65
  static instrucoes_basicas + #780, #82
  static instrucoes_basicas + #781, #65
  static instrucoes_basicas + #782, #127
  static instrucoes_basicas + #783, #66
  static instrucoes_basicas + #784, #65
  static instrucoes_basicas + #785, #73
  static instrucoes_basicas + #786, #88
  static instrucoes_basicas + #787, #79
  static instrucoes_basicas + #788, #127
  static instrucoes_basicas + #789, #127
  static instrucoes_basicas + #790, #127
  static instrucoes_basicas + #791, #127
  static instrucoes_basicas + #792, #127
  static instrucoes_basicas + #793, #64
  static instrucoes_basicas + #794, #127
  static instrucoes_basicas + #795, #127
  static instrucoes_basicas + #796, #127
  static instrucoes_basicas + #797, #127
  static instrucoes_basicas + #798, #3967
  static instrucoes_basicas + #799, #2880

  ;Linha 20
  static instrucoes_basicas + #800, #2880
  static instrucoes_basicas + #801, #127
  static instrucoes_basicas + #802, #127
  static instrucoes_basicas + #803, #127
  static instrucoes_basicas + #804, #127
  static instrucoes_basicas + #805, #127
  static instrucoes_basicas + #806, #127
  static instrucoes_basicas + #807, #64
  static instrucoes_basicas + #808, #127
  static instrucoes_basicas + #809, #127
  static instrucoes_basicas + #810, #3967
  static instrucoes_basicas + #811, #127
  static instrucoes_basicas + #812, #127
  static instrucoes_basicas + #813, #127
  static instrucoes_basicas + #814, #127
  static instrucoes_basicas + #815, #127
  static instrucoes_basicas + #816, #127
  static instrucoes_basicas + #817, #127
  static instrucoes_basicas + #818, #127
  static instrucoes_basicas + #819, #127
  static instrucoes_basicas + #820, #127
  static instrucoes_basicas + #821, #127
  static instrucoes_basicas + #822, #127
  static instrucoes_basicas + #823, #127
  static instrucoes_basicas + #824, #3967
  static instrucoes_basicas + #825, #127
  static instrucoes_basicas + #826, #127
  static instrucoes_basicas + #827, #127
  static instrucoes_basicas + #828, #127
  static instrucoes_basicas + #829, #127
  static instrucoes_basicas + #830, #3967
  static instrucoes_basicas + #831, #127
  static instrucoes_basicas + #832, #127
  static instrucoes_basicas + #833, #64
  static instrucoes_basicas + #834, #127
  static instrucoes_basicas + #835, #127
  static instrucoes_basicas + #836, #127
  static instrucoes_basicas + #837, #127
  static instrucoes_basicas + #838, #127
  static instrucoes_basicas + #839, #2880

  ;Linha 21
  static instrucoes_basicas + #840, #2880
  static instrucoes_basicas + #841, #127
  static instrucoes_basicas + #842, #127
  static instrucoes_basicas + #843, #127
  static instrucoes_basicas + #844, #127
  static instrucoes_basicas + #845, #127
  static instrucoes_basicas + #846, #127
  static instrucoes_basicas + #847, #64
  static instrucoes_basicas + #848, #127
  static instrucoes_basicas + #849, #127
  static instrucoes_basicas + #850, #68
  static instrucoes_basicas + #851, #45
  static instrucoes_basicas + #852, #65
  static instrucoes_basicas + #853, #78
  static instrucoes_basicas + #854, #68
  static instrucoes_basicas + #855, #65
  static instrucoes_basicas + #856, #82
  static instrucoes_basicas + #857, #127
  static instrucoes_basicas + #858, #80
  static instrucoes_basicas + #859, #65
  static instrucoes_basicas + #860, #82
  static instrucoes_basicas + #861, #65
  static instrucoes_basicas + #862, #127
  static instrucoes_basicas + #863, #68
  static instrucoes_basicas + #864, #73
  static instrucoes_basicas + #865, #82
  static instrucoes_basicas + #866, #69
  static instrucoes_basicas + #867, #73
  static instrucoes_basicas + #868, #84
  static instrucoes_basicas + #869, #65
  static instrucoes_basicas + #870, #3967
  static instrucoes_basicas + #871, #3967
  static instrucoes_basicas + #872, #127
  static instrucoes_basicas + #873, #64
  static instrucoes_basicas + #874, #127
  static instrucoes_basicas + #875, #127
  static instrucoes_basicas + #876, #127
  static instrucoes_basicas + #877, #127
  static instrucoes_basicas + #878, #127
  static instrucoes_basicas + #879, #2880

  ;Linha 22
  static instrucoes_basicas + #880, #2880
  static instrucoes_basicas + #881, #127
  static instrucoes_basicas + #882, #127
  static instrucoes_basicas + #883, #127
  static instrucoes_basicas + #884, #127
  static instrucoes_basicas + #885, #127
  static instrucoes_basicas + #886, #127
  static instrucoes_basicas + #887, #64
  static instrucoes_basicas + #888, #127
  static instrucoes_basicas + #889, #127
  static instrucoes_basicas + #890, #127
  static instrucoes_basicas + #891, #127
  static instrucoes_basicas + #892, #127
  static instrucoes_basicas + #893, #127
  static instrucoes_basicas + #894, #127
  static instrucoes_basicas + #895, #127
  static instrucoes_basicas + #896, #127
  static instrucoes_basicas + #897, #127
  static instrucoes_basicas + #898, #127
  static instrucoes_basicas + #899, #127
  static instrucoes_basicas + #900, #127
  static instrucoes_basicas + #901, #127
  static instrucoes_basicas + #902, #127
  static instrucoes_basicas + #903, #127
  static instrucoes_basicas + #904, #127
  static instrucoes_basicas + #905, #127
  static instrucoes_basicas + #906, #127
  static instrucoes_basicas + #907, #127
  static instrucoes_basicas + #908, #127
  static instrucoes_basicas + #909, #127
  static instrucoes_basicas + #910, #127
  static instrucoes_basicas + #911, #127
  static instrucoes_basicas + #912, #127
  static instrucoes_basicas + #913, #64
  static instrucoes_basicas + #914, #127
  static instrucoes_basicas + #915, #127
  static instrucoes_basicas + #916, #127
  static instrucoes_basicas + #917, #127
  static instrucoes_basicas + #918, #127
  static instrucoes_basicas + #919, #2880

  ;Linha 23
  static instrucoes_basicas + #920, #2880
  static instrucoes_basicas + #921, #127
  static instrucoes_basicas + #922, #127
  static instrucoes_basicas + #923, #127
  static instrucoes_basicas + #924, #127
  static instrucoes_basicas + #925, #127
  static instrucoes_basicas + #926, #127
  static instrucoes_basicas + #927, #64
  static instrucoes_basicas + #928, #3967
  static instrucoes_basicas + #929, #3967
  static instrucoes_basicas + #930, #3967
  static instrucoes_basicas + #931, #3967
  static instrucoes_basicas + #932, #3967
  static instrucoes_basicas + #933, #3967
  static instrucoes_basicas + #934, #3967
  static instrucoes_basicas + #935, #3967
  static instrucoes_basicas + #936, #3967
  static instrucoes_basicas + #937, #127
  static instrucoes_basicas + #938, #127
  static instrucoes_basicas + #939, #127
  static instrucoes_basicas + #940, #127
  static instrucoes_basicas + #941, #127
  static instrucoes_basicas + #942, #127
  static instrucoes_basicas + #943, #127
  static instrucoes_basicas + #944, #127
  static instrucoes_basicas + #945, #127
  static instrucoes_basicas + #946, #127
  static instrucoes_basicas + #947, #127
  static instrucoes_basicas + #948, #127
  static instrucoes_basicas + #949, #127
  static instrucoes_basicas + #950, #127
  static instrucoes_basicas + #951, #127
  static instrucoes_basicas + #952, #127
  static instrucoes_basicas + #953, #64
  static instrucoes_basicas + #954, #127
  static instrucoes_basicas + #955, #127
  static instrucoes_basicas + #956, #127
  static instrucoes_basicas + #957, #127
  static instrucoes_basicas + #958, #127
  static instrucoes_basicas + #959, #2880

  ;Linha 24
  static instrucoes_basicas + #960, #2880
  static instrucoes_basicas + #961, #127
  static instrucoes_basicas + #962, #127
  static instrucoes_basicas + #963, #127
  static instrucoes_basicas + #964, #127
  static instrucoes_basicas + #965, #127
  static instrucoes_basicas + #966, #127
  static instrucoes_basicas + #967, #64
  static instrucoes_basicas + #968, #64
  static instrucoes_basicas + #969, #64
  static instrucoes_basicas + #970, #64
  static instrucoes_basicas + #971, #64
  static instrucoes_basicas + #972, #64
  static instrucoes_basicas + #973, #64
  static instrucoes_basicas + #974, #64
  static instrucoes_basicas + #975, #64
  static instrucoes_basicas + #976, #64
  static instrucoes_basicas + #977, #64
  static instrucoes_basicas + #978, #64
  static instrucoes_basicas + #979, #64
  static instrucoes_basicas + #980, #64
  static instrucoes_basicas + #981, #64
  static instrucoes_basicas + #982, #64
  static instrucoes_basicas + #983, #64
  static instrucoes_basicas + #984, #64
  static instrucoes_basicas + #985, #64
  static instrucoes_basicas + #986, #64
  static instrucoes_basicas + #987, #64
  static instrucoes_basicas + #988, #64
  static instrucoes_basicas + #989, #64
  static instrucoes_basicas + #990, #64
  static instrucoes_basicas + #991, #64
  static instrucoes_basicas + #992, #64
  static instrucoes_basicas + #993, #64
  static instrucoes_basicas + #994, #127
  static instrucoes_basicas + #995, #127
  static instrucoes_basicas + #996, #127
  static instrucoes_basicas + #997, #127
  static instrucoes_basicas + #998, #127
  static instrucoes_basicas + #999, #2880

  ;Linha 25
  static instrucoes_basicas + #1000, #2880
  static instrucoes_basicas + #1001, #127
  static instrucoes_basicas + #1002, #127
  static instrucoes_basicas + #1003, #127
  static instrucoes_basicas + #1004, #127
  static instrucoes_basicas + #1005, #127
  static instrucoes_basicas + #1006, #127
  static instrucoes_basicas + #1007, #127
  static instrucoes_basicas + #1008, #127
  static instrucoes_basicas + #1009, #127
  static instrucoes_basicas + #1010, #127
  static instrucoes_basicas + #1011, #127
  static instrucoes_basicas + #1012, #127
  static instrucoes_basicas + #1013, #127
  static instrucoes_basicas + #1014, #127
  static instrucoes_basicas + #1015, #127
  static instrucoes_basicas + #1016, #127
  static instrucoes_basicas + #1017, #127
  static instrucoes_basicas + #1018, #127
  static instrucoes_basicas + #1019, #127
  static instrucoes_basicas + #1020, #127
  static instrucoes_basicas + #1021, #127
  static instrucoes_basicas + #1022, #127
  static instrucoes_basicas + #1023, #127
  static instrucoes_basicas + #1024, #127
  static instrucoes_basicas + #1025, #3967
  static instrucoes_basicas + #1026, #3967
  static instrucoes_basicas + #1027, #3967
  static instrucoes_basicas + #1028, #3967
  static instrucoes_basicas + #1029, #127
  static instrucoes_basicas + #1030, #127
  static instrucoes_basicas + #1031, #127
  static instrucoes_basicas + #1032, #127
  static instrucoes_basicas + #1033, #127
  static instrucoes_basicas + #1034, #127
  static instrucoes_basicas + #1035, #127
  static instrucoes_basicas + #1036, #127
  static instrucoes_basicas + #1037, #127
  static instrucoes_basicas + #1038, #127
  static instrucoes_basicas + #1039, #2880

  ;Linha 26
  static instrucoes_basicas + #1040, #2880
  static instrucoes_basicas + #1041, #127
  static instrucoes_basicas + #1042, #127
  static instrucoes_basicas + #1043, #127
  static instrucoes_basicas + #1044, #127
  static instrucoes_basicas + #1045, #127
  static instrucoes_basicas + #1046, #127
  static instrucoes_basicas + #1047, #127
  static instrucoes_basicas + #1048, #127
  static instrucoes_basicas + #1049, #127
  static instrucoes_basicas + #1050, #127
  static instrucoes_basicas + #1051, #127
  static instrucoes_basicas + #1052, #127
  static instrucoes_basicas + #1053, #127
  static instrucoes_basicas + #1054, #127
  static instrucoes_basicas + #1055, #127
  static instrucoes_basicas + #1056, #3967
  static instrucoes_basicas + #1057, #3967
  static instrucoes_basicas + #1058, #3967
  static instrucoes_basicas + #1059, #3967
  static instrucoes_basicas + #1060, #3967
  static instrucoes_basicas + #1061, #3967
  static instrucoes_basicas + #1062, #3967
  static instrucoes_basicas + #1063, #3967
  static instrucoes_basicas + #1064, #3967
  static instrucoes_basicas + #1065, #127
  static instrucoes_basicas + #1066, #127
  static instrucoes_basicas + #1067, #127
  static instrucoes_basicas + #1068, #127
  static instrucoes_basicas + #1069, #127
  static instrucoes_basicas + #1070, #127
  static instrucoes_basicas + #1071, #127
  static instrucoes_basicas + #1072, #127
  static instrucoes_basicas + #1073, #127
  static instrucoes_basicas + #1074, #127
  static instrucoes_basicas + #1075, #127
  static instrucoes_basicas + #1076, #127
  static instrucoes_basicas + #1077, #127
  static instrucoes_basicas + #1078, #127
  static instrucoes_basicas + #1079, #2880

  ;Linha 27
  static instrucoes_basicas + #1080, #2880
  static instrucoes_basicas + #1081, #127
  static instrucoes_basicas + #1082, #127
  static instrucoes_basicas + #1083, #3967
  static instrucoes_basicas + #1084, #3967
  static instrucoes_basicas + #1085, #3967
  static instrucoes_basicas + #1086, #3967
  static instrucoes_basicas + #1087, #3967
  static instrucoes_basicas + #1088, #66
  static instrucoes_basicas + #1089, #69
  static instrucoes_basicas + #1090, #66
  static instrucoes_basicas + #1091, #65
  static instrucoes_basicas + #1092, #77
  static instrucoes_basicas + #1093, #3967
  static instrucoes_basicas + #1094, #65
  static instrucoes_basicas + #1095, #71
  static instrucoes_basicas + #1096, #85
  static instrucoes_basicas + #1097, #65
  static instrucoes_basicas + #1098, #3967
  static instrucoes_basicas + #1099, #69
  static instrucoes_basicas + #1100, #3967
  static instrucoes_basicas + #1101, #67
  static instrucoes_basicas + #1102, #79
  static instrucoes_basicas + #1103, #77
  static instrucoes_basicas + #1104, #65
  static instrucoes_basicas + #1105, #77
  static instrucoes_basicas + #1106, #3967
  static instrucoes_basicas + #1107, #70
  static instrucoes_basicas + #1108, #82
  static instrucoes_basicas + #1109, #85
  static instrucoes_basicas + #1110, #84
  static instrucoes_basicas + #1111, #65
  static instrucoes_basicas + #1112, #83
  static instrucoes_basicas + #1113, #127
  static instrucoes_basicas + #1114, #127
  static instrucoes_basicas + #1115, #127
  static instrucoes_basicas + #1116, #127
  static instrucoes_basicas + #1117, #127
  static instrucoes_basicas + #1118, #127
  static instrucoes_basicas + #1119, #2880

  ;Linha 28
  static instrucoes_basicas + #1120, #2880
  static instrucoes_basicas + #1121, #127
  static instrucoes_basicas + #1122, #127
  static instrucoes_basicas + #1123, #127
  static instrucoes_basicas + #1124, #127
  static instrucoes_basicas + #1125, #127
  static instrucoes_basicas + #1126, #127
  static instrucoes_basicas + #1127, #127
  static instrucoes_basicas + #1128, #127
  static instrucoes_basicas + #1129, #127
  static instrucoes_basicas + #1130, #127
  static instrucoes_basicas + #1131, #127
  static instrucoes_basicas + #1132, #127
  static instrucoes_basicas + #1133, #127
  static instrucoes_basicas + #1134, #127
  static instrucoes_basicas + #1135, #3967
  static instrucoes_basicas + #1136, #127
  static instrucoes_basicas + #1137, #127
  static instrucoes_basicas + #1138, #127
  static instrucoes_basicas + #1139, #127
  static instrucoes_basicas + #1140, #127
  static instrucoes_basicas + #1141, #127
  static instrucoes_basicas + #1142, #127
  static instrucoes_basicas + #1143, #127
  static instrucoes_basicas + #1144, #127
  static instrucoes_basicas + #1145, #127
  static instrucoes_basicas + #1146, #127
  static instrucoes_basicas + #1147, #127
  static instrucoes_basicas + #1148, #127
  static instrucoes_basicas + #1149, #127
  static instrucoes_basicas + #1150, #127
  static instrucoes_basicas + #1151, #127
  static instrucoes_basicas + #1152, #127
  static instrucoes_basicas + #1153, #127
  static instrucoes_basicas + #1154, #127
  static instrucoes_basicas + #1155, #127
  static instrucoes_basicas + #1156, #127
  static instrucoes_basicas + #1157, #127
  static instrucoes_basicas + #1158, #127
  static instrucoes_basicas + #1159, #2880

  ;Linha 29
  static instrucoes_basicas + #1160, #2880
  static instrucoes_basicas + #1161, #2880
  static instrucoes_basicas + #1162, #2880
  static instrucoes_basicas + #1163, #2880
  static instrucoes_basicas + #1164, #2880
  static instrucoes_basicas + #1165, #2880
  static instrucoes_basicas + #1166, #2880
  static instrucoes_basicas + #1167, #2880
  static instrucoes_basicas + #1168, #2880
  static instrucoes_basicas + #1169, #2880
  static instrucoes_basicas + #1170, #2880
  static instrucoes_basicas + #1171, #2880
  static instrucoes_basicas + #1172, #2880
  static instrucoes_basicas + #1173, #2880
  static instrucoes_basicas + #1174, #2880
  static instrucoes_basicas + #1175, #2880
  static instrucoes_basicas + #1176, #2880
  static instrucoes_basicas + #1177, #2880
  static instrucoes_basicas + #1178, #2880
  static instrucoes_basicas + #1179, #2880
  static instrucoes_basicas + #1180, #2880
  static instrucoes_basicas + #1181, #2880
  static instrucoes_basicas + #1182, #2880
  static instrucoes_basicas + #1183, #2880
  static instrucoes_basicas + #1184, #2880
  static instrucoes_basicas + #1185, #2880
  static instrucoes_basicas + #1186, #2880
  static instrucoes_basicas + #1187, #2880
  static instrucoes_basicas + #1188, #2880
  static instrucoes_basicas + #1189, #2880
  static instrucoes_basicas + #1190, #2880
  static instrucoes_basicas + #1191, #2880
  static instrucoes_basicas + #1192, #2880
  static instrucoes_basicas + #1193, #2880
  static instrucoes_basicas + #1194, #2880
  static instrucoes_basicas + #1195, #2880
  static instrucoes_basicas + #1196, #2880
  static instrucoes_basicas + #1197, #2880
  static instrucoes_basicas + #1198, #2880
  static instrucoes_basicas + #1199, #2880

printinstrucoes_basicasScreen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #instrucoes_basicas
  loadn R1, #0
  loadn R2, #1200

printinstrucoes_basicasScreenLoop:

  add R3,R0,R1
  loadi R3, R3
  outchar R3, R1
  inc R1
  cmp R1, R2

  jne printinstrucoes_basicasScreenLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts
  
in_game:
  static in_game + #0, #2880
  static in_game + #1, #2880
  static in_game + #2, #2880
  static in_game + #3, #2880
  static in_game + #4, #2880
  static in_game + #5, #2880
  static in_game + #6, #2880
  static in_game + #7, #2880
  static in_game + #8, #2880
  static in_game + #9, #2880
  static in_game + #10, #2880
  static in_game + #11, #2880
  static in_game + #12, #2880
  static in_game + #13, #2880
  static in_game + #14, #2880
  static in_game + #15, #2880
  static in_game + #16, #2880
  static in_game + #17, #2880
  static in_game + #18, #2880
  static in_game + #19, #2880
  static in_game + #20, #2880
  static in_game + #21, #2880
  static in_game + #22, #2880
  static in_game + #23, #2880
  static in_game + #24, #2880
  static in_game + #25, #2880
  static in_game + #26, #2880
  static in_game + #27, #2880
  static in_game + #28, #2880
  static in_game + #29, #2880
  static in_game + #30, #2880
  static in_game + #31, #2880
  static in_game + #32, #2880
  static in_game + #33, #2880
  static in_game + #34, #2880
  static in_game + #35, #2880
  static in_game + #36, #2880
  static in_game + #37, #2880
  static in_game + #38, #2880
  static in_game + #39, #2880

  ;Linha 1
  static in_game + #40, #2880
  static in_game + #41, #3967
  static in_game + #42, #3967
  static in_game + #43, #3967
  static in_game + #44, #3967
  static in_game + #45, #3967
  static in_game + #46, #3967
  static in_game + #47, #3967
  static in_game + #48, #3967
  static in_game + #49, #3967
  static in_game + #50, #3967
  static in_game + #51, #3967
  static in_game + #52, #3967
  static in_game + #53, #3967
  static in_game + #54, #3967
  static in_game + #55, #3967
  static in_game + #56, #3967
  static in_game + #57, #3967
  static in_game + #58, #3967
  static in_game + #59, #3967
  static in_game + #60, #3967
  static in_game + #61, #3967
  static in_game + #62, #3967
  static in_game + #63, #3967
  static in_game + #64, #3967
  static in_game + #65, #3967
  static in_game + #66, #3967
  static in_game + #67, #3967
  static in_game + #68, #3967
  static in_game + #69, #3967
  static in_game + #70, #3967
  static in_game + #71, #3967
  static in_game + #72, #3967
  static in_game + #73, #3967
  static in_game + #74, #3967
  static in_game + #75, #3967
  static in_game + #76, #3967
  static in_game + #77, #3967
  static in_game + #78, #3967
  static in_game + #79, #2880

  ;Linha 2
  static in_game + #80, #2880
  static in_game + #81, #3967
  static in_game + #82, #3967
  static in_game + #83, #3967
  static in_game + #84, #3967
  static in_game + #85, #3967
  static in_game + #86, #3967
  static in_game + #87, #3967
  static in_game + #88, #3967
  static in_game + #89, #3967
  static in_game + #90, #3967
  static in_game + #91, #3967
  static in_game + #92, #3967
  static in_game + #93, #3967
  static in_game + #94, #3967
  static in_game + #95, #3967
  static in_game + #96, #3967
  static in_game + #97, #3967
  static in_game + #98, #3967
  static in_game + #99, #3967
  static in_game + #100, #3967
  static in_game + #101, #3967
  static in_game + #102, #3967
  static in_game + #103, #3967
  static in_game + #104, #3967
  static in_game + #105, #3967
  static in_game + #106, #3967
  static in_game + #107, #3967
  static in_game + #108, #3967
  static in_game + #109, #3967
  static in_game + #110, #3967
  static in_game + #111, #3967
  static in_game + #112, #3967
  static in_game + #113, #3967
  static in_game + #114, #3967
  static in_game + #115, #3967
  static in_game + #116, #3967
  static in_game + #117, #3967
  static in_game + #118, #3967
  static in_game + #119, #2880

  ;Linha 3
  static in_game + #120, #2880
  static in_game + #121, #3967
  static in_game + #122, #3967
  static in_game + #123, #3967
  static in_game + #124, #3967
  static in_game + #125, #3967
  static in_game + #126, #3967
  static in_game + #127, #3967
  static in_game + #128, #3967
  static in_game + #129, #3967
  static in_game + #130, #3967
  static in_game + #131, #3967
  static in_game + #132, #3967
  static in_game + #133, #3967
  static in_game + #134, #3967
  static in_game + #135, #3967
  static in_game + #136, #3967
  static in_game + #137, #3967
  static in_game + #138, #3967
  static in_game + #139, #3967
  static in_game + #140, #3967
  static in_game + #141, #3967
  static in_game + #142, #3967
  static in_game + #143, #3967
  static in_game + #144, #3967
  static in_game + #145, #3967
  static in_game + #146, #3967
  static in_game + #147, #3967
  static in_game + #148, #3967
  static in_game + #149, #3967
  static in_game + #150, #3967
  static in_game + #151, #3967
  static in_game + #152, #3967
  static in_game + #153, #3967
  static in_game + #154, #3967
  static in_game + #155, #3967
  static in_game + #156, #3967
  static in_game + #157, #3967
  static in_game + #158, #3967
  static in_game + #159, #2880

  ;Linha 4
  static in_game + #160, #2880
  static in_game + #161, #3967
  static in_game + #162, #3967
  static in_game + #163, #3967
  static in_game + #164, #3967
  static in_game + #165, #3967
  static in_game + #166, #3967
  static in_game + #167, #3967
  static in_game + #168, #3967
  static in_game + #169, #3967
  static in_game + #170, #3967
  static in_game + #171, #3967
  static in_game + #172, #3967
  static in_game + #173, #3967
  static in_game + #174, #3967
  static in_game + #175, #3967
  static in_game + #176, #3967
  static in_game + #177, #3967
  static in_game + #178, #3967
  static in_game + #179, #3967
  static in_game + #180, #3967
  static in_game + #181, #3967
  static in_game + #182, #3967
  static in_game + #183, #3967
  static in_game + #184, #3967
  static in_game + #185, #3967
  static in_game + #186, #3967
  static in_game + #187, #3967
  static in_game + #188, #3967
  static in_game + #189, #3967
  static in_game + #190, #3967
  static in_game + #191, #3967
  static in_game + #192, #3967
  static in_game + #193, #3967
  static in_game + #194, #3967
  static in_game + #195, #3967
  static in_game + #196, #3967
  static in_game + #197, #3967
  static in_game + #198, #3967
  static in_game + #199, #2880

  ;Linha 5
  static in_game + #200, #2880
  static in_game + #201, #3967
  static in_game + #202, #3967
  static in_game + #203, #3967
  static in_game + #204, #3967
  static in_game + #205, #3967
  static in_game + #206, #3967
  static in_game + #207, #3967
  static in_game + #208, #3967
  static in_game + #209, #3967
  static in_game + #210, #3967
  static in_game + #211, #3967
  static in_game + #212, #3967
  static in_game + #213, #3967
  static in_game + #214, #3967
  static in_game + #215, #3967
  static in_game + #216, #3967
  static in_game + #217, #3967
  static in_game + #218, #3967
  static in_game + #219, #3967
  static in_game + #220, #3967
  static in_game + #221, #3967
  static in_game + #222, #3967
  static in_game + #223, #3967
  static in_game + #224, #3967
  static in_game + #225, #3967
  static in_game + #226, #3967
  static in_game + #227, #3967
  static in_game + #228, #3967
  static in_game + #229, #3967
  static in_game + #230, #3967
  static in_game + #231, #3967
  static in_game + #232, #3967
  static in_game + #233, #3967
  static in_game + #234, #3967
  static in_game + #235, #3967
  static in_game + #236, #3967
  static in_game + #237, #3967
  static in_game + #238, #3967
  static in_game + #239, #2880

  ;Linha 6
  static in_game + #240, #2880
  static in_game + #241, #3967
  static in_game + #242, #3967
  static in_game + #243, #3967
  static in_game + #244, #3967
  static in_game + #245, #3967
  static in_game + #246, #3967
  static in_game + #247, #3967
  static in_game + #248, #3967
  static in_game + #249, #3967
  static in_game + #250, #3967
  static in_game + #251, #3967
  static in_game + #252, #3967
  static in_game + #253, #3967
  static in_game + #254, #3967
  static in_game + #255, #3967
  static in_game + #256, #3967
  static in_game + #257, #3967
  static in_game + #258, #3967
  static in_game + #259, #3967
  static in_game + #260, #3967
  static in_game + #261, #3967
  static in_game + #262, #3967
  static in_game + #263, #3967
  static in_game + #264, #3967
  static in_game + #265, #3967
  static in_game + #266, #3967
  static in_game + #267, #3967
  static in_game + #268, #3967
  static in_game + #269, #3967
  static in_game + #270, #3967
  static in_game + #271, #3967
  static in_game + #272, #3967
  static in_game + #273, #3967
  static in_game + #274, #3967
  static in_game + #275, #3967
  static in_game + #276, #3967
  static in_game + #277, #3967
  static in_game + #278, #3967
  static in_game + #279, #2880

  ;Linha 7
  static in_game + #280, #2880
  static in_game + #281, #3967
  static in_game + #282, #3967
  static in_game + #283, #3967
  static in_game + #284, #3967
  static in_game + #285, #3967
  static in_game + #286, #3967
  static in_game + #287, #3967
  static in_game + #288, #3967
  static in_game + #289, #3967
  static in_game + #290, #3967
  static in_game + #291, #3967
  static in_game + #292, #3967
  static in_game + #293, #3967
  static in_game + #294, #3967
  static in_game + #295, #3967
  static in_game + #296, #3967
  static in_game + #297, #3967
  static in_game + #298, #3967
  static in_game + #299, #3967
  static in_game + #300, #3967
  static in_game + #301, #3967
  static in_game + #302, #3967
  static in_game + #303, #3967
  static in_game + #304, #3967
  static in_game + #305, #3967
  static in_game + #306, #3967
  static in_game + #307, #3967
  static in_game + #308, #3967
  static in_game + #309, #3967
  static in_game + #310, #3967
  static in_game + #311, #3967
  static in_game + #312, #3967
  static in_game + #313, #3967
  static in_game + #314, #3967
  static in_game + #315, #3967
  static in_game + #316, #3967
  static in_game + #317, #3967
  static in_game + #318, #3967
  static in_game + #319, #2880

  ;Linha 8
  static in_game + #320, #2880
  static in_game + #321, #3967
  static in_game + #322, #3967
  static in_game + #323, #3967
  static in_game + #324, #3967
  static in_game + #325, #3967
  static in_game + #326, #3967
  static in_game + #327, #3967
  static in_game + #328, #3967
  static in_game + #329, #3967
  static in_game + #330, #3967
  static in_game + #331, #3967
  static in_game + #332, #3967
  static in_game + #333, #3967
  static in_game + #334, #3967
  static in_game + #335, #3967
  static in_game + #336, #3967
  static in_game + #337, #3967
  static in_game + #338, #3967
  static in_game + #339, #3967
  static in_game + #340, #3967
  static in_game + #341, #3967
  static in_game + #342, #3967
  static in_game + #343, #3967
  static in_game + #344, #3967
  static in_game + #345, #3967
  static in_game + #346, #3967
  static in_game + #347, #3967
  static in_game + #348, #3967
  static in_game + #349, #3967
  static in_game + #350, #3967
  static in_game + #351, #3967
  static in_game + #352, #3967
  static in_game + #353, #3967
  static in_game + #354, #3967
  static in_game + #355, #3967
  static in_game + #356, #3967
  static in_game + #357, #3967
  static in_game + #358, #3967
  static in_game + #359, #2880

  ;Linha 9
  static in_game + #360, #2880
  static in_game + #361, #3967
  static in_game + #362, #3967
  static in_game + #363, #3967
  static in_game + #364, #3967
  static in_game + #365, #3967
  static in_game + #366, #3967
  static in_game + #367, #3967
  static in_game + #368, #3967
  static in_game + #369, #3967
  static in_game + #370, #3967
  static in_game + #371, #3967
  static in_game + #372, #3967
  static in_game + #373, #3967
  static in_game + #374, #3967
  static in_game + #375, #3967
  static in_game + #376, #3967
  static in_game + #377, #3967
  static in_game + #378, #3967
  static in_game + #379, #3967
  static in_game + #380, #3967
  static in_game + #381, #3967
  static in_game + #382, #3967
  static in_game + #383, #3967
  static in_game + #384, #3967
  static in_game + #385, #3967
  static in_game + #386, #3967
  static in_game + #387, #3967
  static in_game + #388, #3967
  static in_game + #389, #3967
  static in_game + #390, #3967
  static in_game + #391, #3967
  static in_game + #392, #3967
  static in_game + #393, #3967
  static in_game + #394, #3967
  static in_game + #395, #3967
  static in_game + #396, #3967
  static in_game + #397, #3967
  static in_game + #398, #3967
  static in_game + #399, #2880

  ;Linha 10
  static in_game + #400, #2880
  static in_game + #401, #3967
  static in_game + #402, #3967
  static in_game + #403, #3967
  static in_game + #404, #3967
  static in_game + #405, #3967
  static in_game + #406, #3967
  static in_game + #407, #3967
  static in_game + #408, #3967
  static in_game + #409, #3967
  static in_game + #410, #3967
  static in_game + #411, #3967
  static in_game + #412, #3967
  static in_game + #413, #3967
  static in_game + #414, #3967
  static in_game + #415, #3967
  static in_game + #416, #3967
  static in_game + #417, #3967
  static in_game + #418, #3967
  static in_game + #419, #3967
  static in_game + #420, #3967
  static in_game + #421, #3967
  static in_game + #422, #3967
  static in_game + #423, #3967
  static in_game + #424, #3967
  static in_game + #425, #3967
  static in_game + #426, #3967
  static in_game + #427, #3967
  static in_game + #428, #3967
  static in_game + #429, #3967
  static in_game + #430, #3967
  static in_game + #431, #3967
  static in_game + #432, #3967
  static in_game + #433, #3967
  static in_game + #434, #3967
  static in_game + #435, #3967
  static in_game + #436, #3967
  static in_game + #437, #3967
  static in_game + #438, #3967
  static in_game + #439, #2880

  ;Linha 11
  static in_game + #440, #2880
  static in_game + #441, #3967
  static in_game + #442, #3967
  static in_game + #443, #3967
  static in_game + #444, #3967
  static in_game + #445, #3967
  static in_game + #446, #3967
  static in_game + #447, #3967
  static in_game + #448, #3967
  static in_game + #449, #3967
  static in_game + #450, #3967
  static in_game + #451, #3967
  static in_game + #452, #3967
  static in_game + #453, #3967
  static in_game + #454, #3967
  static in_game + #455, #3967
  static in_game + #456, #3967
  static in_game + #457, #3967
  static in_game + #458, #3967
  static in_game + #459, #3967
  static in_game + #460, #3967
  static in_game + #461, #3967
  static in_game + #462, #3967
  static in_game + #463, #3967
  static in_game + #464, #3967
  static in_game + #465, #3967
  static in_game + #466, #3967
  static in_game + #467, #3967
  static in_game + #468, #3967
  static in_game + #469, #3967
  static in_game + #470, #3967
  static in_game + #471, #3967
  static in_game + #472, #3967
  static in_game + #473, #3967
  static in_game + #474, #3967
  static in_game + #475, #3967
  static in_game + #476, #3967
  static in_game + #477, #3967
  static in_game + #478, #3967
  static in_game + #479, #2880

  ;Linha 12
  static in_game + #480, #2880
  static in_game + #481, #3967
  static in_game + #482, #3967
  static in_game + #483, #3967
  static in_game + #484, #3967
  static in_game + #485, #3967
  static in_game + #486, #3967
  static in_game + #487, #3967
  static in_game + #488, #3967
  static in_game + #489, #3967
  static in_game + #490, #3967
  static in_game + #491, #3967
  static in_game + #492, #3967
  static in_game + #493, #3967
  static in_game + #494, #3967
  static in_game + #495, #3967
  static in_game + #496, #3967
  static in_game + #497, #3967
  static in_game + #498, #3967
  static in_game + #499, #3967
  static in_game + #500, #3967
  static in_game + #501, #3967
  static in_game + #502, #3967
  static in_game + #503, #3967
  static in_game + #504, #3967
  static in_game + #505, #3967
  static in_game + #506, #3967
  static in_game + #507, #3967
  static in_game + #508, #3967
  static in_game + #509, #3967
  static in_game + #510, #3967
  static in_game + #511, #3967
  static in_game + #512, #3967
  static in_game + #513, #3967
  static in_game + #514, #3967
  static in_game + #515, #3967
  static in_game + #516, #3967
  static in_game + #517, #3967
  static in_game + #518, #3967
  static in_game + #519, #2880

  ;Linha 13
  static in_game + #520, #2880
  static in_game + #521, #3967
  static in_game + #522, #3967
  static in_game + #523, #3967
  static in_game + #524, #3967
  static in_game + #525, #3967
  static in_game + #526, #3967
  static in_game + #527, #3967
  static in_game + #528, #3967
  static in_game + #529, #3967
  static in_game + #530, #3967
  static in_game + #531, #3967
  static in_game + #532, #3967
  static in_game + #533, #3967
  static in_game + #534, #3967
  static in_game + #535, #3967
  static in_game + #536, #3967
  static in_game + #537, #3967
  static in_game + #538, #3967
  static in_game + #539, #3967
  static in_game + #540, #3967
  static in_game + #541, #3967
  static in_game + #542, #3967
  static in_game + #543, #3967
  static in_game + #544, #3967
  static in_game + #545, #3967
  static in_game + #546, #3967
  static in_game + #547, #3967
  static in_game + #548, #3967
  static in_game + #549, #3967
  static in_game + #550, #3967
  static in_game + #551, #3967
  static in_game + #552, #3967
  static in_game + #553, #3967
  static in_game + #554, #3967
  static in_game + #555, #3967
  static in_game + #556, #3967
  static in_game + #557, #3967
  static in_game + #558, #3967
  static in_game + #559, #2880

  ;Linha 14
  static in_game + #560, #2880
  static in_game + #561, #3967
  static in_game + #562, #3967
  static in_game + #563, #3967
  static in_game + #564, #3967
  static in_game + #565, #3967
  static in_game + #566, #3967
  static in_game + #567, #3967
  static in_game + #568, #3967
  static in_game + #569, #3967
  static in_game + #570, #3967
  static in_game + #571, #3967
  static in_game + #572, #3967
  static in_game + #573, #3967
  static in_game + #574, #3967
  static in_game + #575, #3967
  static in_game + #576, #3967
  static in_game + #577, #3967
  static in_game + #578, #3967
  static in_game + #579, #3967
  static in_game + #580, #3967
  static in_game + #581, #3967
  static in_game + #582, #3967
  static in_game + #583, #3967
  static in_game + #584, #3967
  static in_game + #585, #3967
  static in_game + #586, #3967
  static in_game + #587, #3967
  static in_game + #588, #3967
  static in_game + #589, #3967
  static in_game + #590, #3967
  static in_game + #591, #3967
  static in_game + #592, #3967
  static in_game + #593, #3967
  static in_game + #594, #3967
  static in_game + #595, #3967
  static in_game + #596, #3967
  static in_game + #597, #3967
  static in_game + #598, #3967
  static in_game + #599, #2880

  ;Linha 15
  static in_game + #600, #2880
  static in_game + #601, #3967
  static in_game + #602, #3967
  static in_game + #603, #3967
  static in_game + #604, #3967
  static in_game + #605, #3967
  static in_game + #606, #3967
  static in_game + #607, #3967
  static in_game + #608, #3967
  static in_game + #609, #3967
  static in_game + #610, #3967
  static in_game + #611, #3967
  static in_game + #612, #3967
  static in_game + #613, #3967
  static in_game + #614, #3967
  static in_game + #615, #3967
  static in_game + #616, #3967
  static in_game + #617, #3967
  static in_game + #618, #3967
  static in_game + #619, #3967
  static in_game + #620, #3967
  static in_game + #621, #3967
  static in_game + #622, #3967
  static in_game + #623, #3967
  static in_game + #624, #3967
  static in_game + #625, #3967
  static in_game + #626, #3967
  static in_game + #627, #3967
  static in_game + #628, #3967
  static in_game + #629, #3967
  static in_game + #630, #3967
  static in_game + #631, #3967
  static in_game + #632, #3967
  static in_game + #633, #3967
  static in_game + #634, #3967
  static in_game + #635, #3967
  static in_game + #636, #3967
  static in_game + #637, #3967
  static in_game + #638, #3967
  static in_game + #639, #2880

  ;Linha 16
  static in_game + #640, #2880
  static in_game + #641, #3967
  static in_game + #642, #3967
  static in_game + #643, #3967
  static in_game + #644, #3967
  static in_game + #645, #3967
  static in_game + #646, #3967
  static in_game + #647, #3967
  static in_game + #648, #3967
  static in_game + #649, #3967
  static in_game + #650, #3967
  static in_game + #651, #3967
  static in_game + #652, #3967
  static in_game + #653, #3967
  static in_game + #654, #3967
  static in_game + #655, #3967
  static in_game + #656, #3967
  static in_game + #657, #3967
  static in_game + #658, #3967
  static in_game + #659, #3967
  static in_game + #660, #3967
  static in_game + #661, #3967
  static in_game + #662, #3967
  static in_game + #663, #3967
  static in_game + #664, #3967
  static in_game + #665, #3967
  static in_game + #666, #3967
  static in_game + #667, #3967
  static in_game + #668, #3967
  static in_game + #669, #3967
  static in_game + #670, #3967
  static in_game + #671, #3967
  static in_game + #672, #3967
  static in_game + #673, #3967
  static in_game + #674, #3967
  static in_game + #675, #3967
  static in_game + #676, #3967
  static in_game + #677, #3967
  static in_game + #678, #3967
  static in_game + #679, #2880

  ;Linha 17
  static in_game + #680, #2880
  static in_game + #681, #3967
  static in_game + #682, #3967
  static in_game + #683, #3967
  static in_game + #684, #3967
  static in_game + #685, #3967
  static in_game + #686, #3967
  static in_game + #687, #3967
  static in_game + #688, #3967
  static in_game + #689, #3967
  static in_game + #690, #3967
  static in_game + #691, #3967
  static in_game + #692, #3967
  static in_game + #693, #3967
  static in_game + #694, #3967
  static in_game + #695, #3967
  static in_game + #696, #3967
  static in_game + #697, #3967
  static in_game + #698, #3967
  static in_game + #699, #3967
  static in_game + #700, #3967
  static in_game + #701, #3967
  static in_game + #702, #3967
  static in_game + #703, #3967
  static in_game + #704, #3967
  static in_game + #705, #3967
  static in_game + #706, #3967
  static in_game + #707, #3967
  static in_game + #708, #3967
  static in_game + #709, #3967
  static in_game + #710, #3967
  static in_game + #711, #3967
  static in_game + #712, #3967
  static in_game + #713, #3967
  static in_game + #714, #3967
  static in_game + #715, #3967
  static in_game + #716, #3967
  static in_game + #717, #3967
  static in_game + #718, #3967
  static in_game + #719, #2880

  ;Linha 18
  static in_game + #720, #2880
  static in_game + #721, #3967
  static in_game + #722, #3967
  static in_game + #723, #3967
  static in_game + #724, #3967
  static in_game + #725, #3967
  static in_game + #726, #3967
  static in_game + #727, #3967
  static in_game + #728, #3967
  static in_game + #729, #3967
  static in_game + #730, #3967
  static in_game + #731, #3967
  static in_game + #732, #3967
  static in_game + #733, #3967
  static in_game + #734, #3967
  static in_game + #735, #3967
  static in_game + #736, #3967
  static in_game + #737, #3967
  static in_game + #738, #3967
  static in_game + #739, #3967
  static in_game + #740, #3967
  static in_game + #741, #3967
  static in_game + #742, #3967
  static in_game + #743, #3967
  static in_game + #744, #3967
  static in_game + #745, #3967
  static in_game + #746, #3967
  static in_game + #747, #3967
  static in_game + #748, #3967
  static in_game + #749, #3967
  static in_game + #750, #3967
  static in_game + #751, #3967
  static in_game + #752, #3967
  static in_game + #753, #3967
  static in_game + #754, #3967
  static in_game + #755, #3967
  static in_game + #756, #3967
  static in_game + #757, #3967
  static in_game + #758, #3967
  static in_game + #759, #2880

  ;Linha 19
  static in_game + #760, #2880
  static in_game + #761, #3967
  static in_game + #762, #3967
  static in_game + #763, #3967
  static in_game + #764, #3967
  static in_game + #765, #3967
  static in_game + #766, #3967
  static in_game + #767, #3967
  static in_game + #768, #3967
  static in_game + #769, #3967
  static in_game + #770, #3967
  static in_game + #771, #3967
  static in_game + #772, #3967
  static in_game + #773, #3967
  static in_game + #774, #3967
  static in_game + #775, #3967
  static in_game + #776, #3967
  static in_game + #777, #3967
  static in_game + #778, #3967
  static in_game + #779, #3967
  static in_game + #780, #3967
  static in_game + #781, #3967
  static in_game + #782, #3967
  static in_game + #783, #3967
  static in_game + #784, #3967
  static in_game + #785, #3967
  static in_game + #786, #3967
  static in_game + #787, #3967
  static in_game + #788, #3967
  static in_game + #789, #3967
  static in_game + #790, #3967
  static in_game + #791, #3967
  static in_game + #792, #3967
  static in_game + #793, #3967
  static in_game + #794, #3967
  static in_game + #795, #3967
  static in_game + #796, #3967
  static in_game + #797, #3967
  static in_game + #798, #3967
  static in_game + #799, #2880

  ;Linha 20
  static in_game + #800, #2880
  static in_game + #801, #3967
  static in_game + #802, #3967
  static in_game + #803, #3967
  static in_game + #804, #3967
  static in_game + #805, #3967
  static in_game + #806, #3967
  static in_game + #807, #3967
  static in_game + #808, #3967
  static in_game + #809, #3967
  static in_game + #810, #3967
  static in_game + #811, #3967
  static in_game + #812, #3967
  static in_game + #813, #3967
  static in_game + #814, #3967
  static in_game + #815, #3967
  static in_game + #816, #3967
  static in_game + #817, #3967
  static in_game + #818, #3967
  static in_game + #819, #3967
  static in_game + #820, #3967
  static in_game + #821, #3967
  static in_game + #822, #3967
  static in_game + #823, #3967
  static in_game + #824, #3967
  static in_game + #825, #3967
  static in_game + #826, #3967
  static in_game + #827, #3967
  static in_game + #828, #3967
  static in_game + #829, #3967
  static in_game + #830, #3967
  static in_game + #831, #3967
  static in_game + #832, #3967
  static in_game + #833, #3967
  static in_game + #834, #3967
  static in_game + #835, #3967
  static in_game + #836, #3967
  static in_game + #837, #3967
  static in_game + #838, #3967
  static in_game + #839, #2880

  ;Linha 21
  static in_game + #840, #2880
  static in_game + #841, #3967
  static in_game + #842, #3967
  static in_game + #843, #3967
  static in_game + #844, #3967
  static in_game + #845, #3967
  static in_game + #846, #3967
  static in_game + #847, #3967
  static in_game + #848, #3967
  static in_game + #849, #3967
  static in_game + #850, #3967
  static in_game + #851, #3967
  static in_game + #852, #3967
  static in_game + #853, #3967
  static in_game + #854, #3967
  static in_game + #855, #3967
  static in_game + #856, #3967
  static in_game + #857, #3967
  static in_game + #858, #3967
  static in_game + #859, #3967
  static in_game + #860, #3967
  static in_game + #861, #3967
  static in_game + #862, #3967
  static in_game + #863, #3967
  static in_game + #864, #3967
  static in_game + #865, #3967
  static in_game + #866, #3967
  static in_game + #867, #3967
  static in_game + #868, #3967
  static in_game + #869, #3967
  static in_game + #870, #3967
  static in_game + #871, #3967
  static in_game + #872, #3967
  static in_game + #873, #3967
  static in_game + #874, #3967
  static in_game + #875, #3967
  static in_game + #876, #3967
  static in_game + #877, #3967
  static in_game + #878, #3967
  static in_game + #879, #2880

  ;Linha 22
  static in_game + #880, #2880
  static in_game + #881, #3967
  static in_game + #882, #3967
  static in_game + #883, #3967
  static in_game + #884, #3967
  static in_game + #885, #3967
  static in_game + #886, #3967
  static in_game + #887, #3967
  static in_game + #888, #3967
  static in_game + #889, #3967
  static in_game + #890, #3967
  static in_game + #891, #3967
  static in_game + #892, #3967
  static in_game + #893, #3967
  static in_game + #894, #3967
  static in_game + #895, #3967
  static in_game + #896, #3967
  static in_game + #897, #3967
  static in_game + #898, #3967
  static in_game + #899, #3967
  static in_game + #900, #3967
  static in_game + #901, #3967
  static in_game + #902, #3967
  static in_game + #903, #3967
  static in_game + #904, #3967
  static in_game + #905, #3967
  static in_game + #906, #3967
  static in_game + #907, #3967
  static in_game + #908, #3967
  static in_game + #909, #3967
  static in_game + #910, #3967
  static in_game + #911, #3967
  static in_game + #912, #3967
  static in_game + #913, #3967
  static in_game + #914, #3967
  static in_game + #915, #3967
  static in_game + #916, #3967
  static in_game + #917, #3967
  static in_game + #918, #3967
  static in_game + #919, #2880

  ;Linha 23
  static in_game + #920, #2880
  static in_game + #921, #3967
  static in_game + #922, #3967
  static in_game + #923, #3967
  static in_game + #924, #3967
  static in_game + #925, #3967
  static in_game + #926, #3967
  static in_game + #927, #3967
  static in_game + #928, #3967
  static in_game + #929, #3967
  static in_game + #930, #3967
  static in_game + #931, #3967
  static in_game + #932, #3967
  static in_game + #933, #3967
  static in_game + #934, #3967
  static in_game + #935, #3967
  static in_game + #936, #3967
  static in_game + #937, #3967
  static in_game + #938, #3967
  static in_game + #939, #3967
  static in_game + #940, #3967
  static in_game + #941, #3967
  static in_game + #942, #3967
  static in_game + #943, #3967
  static in_game + #944, #3967
  static in_game + #945, #3967
  static in_game + #946, #3967
  static in_game + #947, #3967
  static in_game + #948, #3967
  static in_game + #949, #3967
  static in_game + #950, #3967
  static in_game + #951, #3967
  static in_game + #952, #3967
  static in_game + #953, #3967
  static in_game + #954, #3967
  static in_game + #955, #3967
  static in_game + #956, #3967
  static in_game + #957, #3967
  static in_game + #958, #3967
  static in_game + #959, #2880

  ;Linha 24
  static in_game + #960, #2880
  static in_game + #961, #3967
  static in_game + #962, #3967
  static in_game + #963, #3967
  static in_game + #964, #3967
  static in_game + #965, #3967
  static in_game + #966, #3967
  static in_game + #967, #3967
  static in_game + #968, #3967
  static in_game + #969, #3967
  static in_game + #970, #3967
  static in_game + #971, #3967
  static in_game + #972, #3967
  static in_game + #973, #3967
  static in_game + #974, #3967
  static in_game + #975, #3967
  static in_game + #976, #3967
  static in_game + #977, #3967
  static in_game + #978, #3967
  static in_game + #979, #3967
  static in_game + #980, #3967
  static in_game + #981, #3967
  static in_game + #982, #3967
  static in_game + #983, #3967
  static in_game + #984, #3967
  static in_game + #985, #3967
  static in_game + #986, #3967
  static in_game + #987, #3967
  static in_game + #988, #3967
  static in_game + #989, #3967
  static in_game + #990, #3967
  static in_game + #991, #3967
  static in_game + #992, #3967
  static in_game + #993, #3967
  static in_game + #994, #3967
  static in_game + #995, #3967
  static in_game + #996, #3967
  static in_game + #997, #3967
  static in_game + #998, #3967
  static in_game + #999, #2880

  ;Linha 25
  static in_game + #1000, #2880
  static in_game + #1001, #3967
  static in_game + #1002, #3967
  static in_game + #1003, #3967
  static in_game + #1004, #3967
  static in_game + #1005, #3967
  static in_game + #1006, #3967
  static in_game + #1007, #3967
  static in_game + #1008, #3967
  static in_game + #1009, #3967
  static in_game + #1010, #3967
  static in_game + #1011, #3967
  static in_game + #1012, #3967
  static in_game + #1013, #3967
  static in_game + #1014, #3967
  static in_game + #1015, #3967
  static in_game + #1016, #3967
  static in_game + #1017, #3967
  static in_game + #1018, #3967
  static in_game + #1019, #3967
  static in_game + #1020, #3967
  static in_game + #1021, #3967
  static in_game + #1022, #3967
  static in_game + #1023, #3967
  static in_game + #1024, #3967
  static in_game + #1025, #3967
  static in_game + #1026, #3967
  static in_game + #1027, #3967
  static in_game + #1028, #3967
  static in_game + #1029, #3967
  static in_game + #1030, #3967
  static in_game + #1031, #3967
  static in_game + #1032, #3967
  static in_game + #1033, #3967
  static in_game + #1034, #3967
  static in_game + #1035, #3967
  static in_game + #1036, #3967
  static in_game + #1037, #3967
  static in_game + #1038, #3967
  static in_game + #1039, #2880

  ;Linha 26
  static in_game + #1040, #2880
  static in_game + #1041, #3967
  static in_game + #1042, #3967
  static in_game + #1043, #3967
  static in_game + #1044, #3967
  static in_game + #1045, #3967
  static in_game + #1046, #3967
  static in_game + #1047, #3967
  static in_game + #1048, #3967
  static in_game + #1049, #3967
  static in_game + #1050, #3967
  static in_game + #1051, #3967
  static in_game + #1052, #3967
  static in_game + #1053, #3967
  static in_game + #1054, #3967
  static in_game + #1055, #3967
  static in_game + #1056, #3967
  static in_game + #1057, #3967
  static in_game + #1058, #3967
  static in_game + #1059, #3967
  static in_game + #1060, #3967
  static in_game + #1061, #3967
  static in_game + #1062, #3967
  static in_game + #1063, #3967
  static in_game + #1064, #3967
  static in_game + #1065, #3967
  static in_game + #1066, #3967
  static in_game + #1067, #3967
  static in_game + #1068, #3967
  static in_game + #1069, #3967
  static in_game + #1070, #3967
  static in_game + #1071, #3967
  static in_game + #1072, #3967
  static in_game + #1073, #3967
  static in_game + #1074, #3967
  static in_game + #1075, #3967
  static in_game + #1076, #3967
  static in_game + #1077, #3967
  static in_game + #1078, #3967
  static in_game + #1079, #2880

  ;Linha 27
  static in_game + #1080, #2880
  static in_game + #1081, #3967
  static in_game + #1082, #3967
  static in_game + #1083, #3967
  static in_game + #1084, #3967
  static in_game + #1085, #3967
  static in_game + #1086, #3967
  static in_game + #1087, #3967
  static in_game + #1088, #3967
  static in_game + #1089, #3967
  static in_game + #1090, #3967
  static in_game + #1091, #3967
  static in_game + #1092, #3967
  static in_game + #1093, #3967
  static in_game + #1094, #3967
  static in_game + #1095, #3967
  static in_game + #1096, #3967
  static in_game + #1097, #3967
  static in_game + #1098, #3967
  static in_game + #1099, #3967
  static in_game + #1100, #3967
  static in_game + #1101, #3967
  static in_game + #1102, #3967
  static in_game + #1103, #3967
  static in_game + #1104, #3967
  static in_game + #1105, #3967
  static in_game + #1106, #3967
  static in_game + #1107, #3967
  static in_game + #1108, #3967
  static in_game + #1109, #3967
  static in_game + #1110, #3967
  static in_game + #1111, #3967
  static in_game + #1112, #3967
  static in_game + #1113, #3967
  static in_game + #1114, #3967
  static in_game + #1115, #3967
  static in_game + #1116, #3967
  static in_game + #1117, #3967
  static in_game + #1118, #3967
  static in_game + #1119, #2880

  ;Linha 28
  static in_game + #1120, #2880
  static in_game + #1121, #3967
  static in_game + #1122, #3967
  static in_game + #1123, #3967
  static in_game + #1124, #3967
  static in_game + #1125, #3967
  static in_game + #1126, #3967
  static in_game + #1127, #3967
  static in_game + #1128, #3967
  static in_game + #1129, #3967
  static in_game + #1130, #3967
  static in_game + #1131, #3967
  static in_game + #1132, #3967
  static in_game + #1133, #3967
  static in_game + #1134, #3967
  static in_game + #1135, #3967
  static in_game + #1136, #3967
  static in_game + #1137, #3967
  static in_game + #1138, #3967
  static in_game + #1139, #3967
  static in_game + #1140, #3967
  static in_game + #1141, #3967
  static in_game + #1142, #3967
  static in_game + #1143, #3967
  static in_game + #1144, #3967
  static in_game + #1145, #3967
  static in_game + #1146, #3967
  static in_game + #1147, #3967
  static in_game + #1148, #3967
  static in_game + #1149, #3967
  static in_game + #1150, #3967
  static in_game + #1151, #3967
  static in_game + #1152, #3967
  static in_game + #1153, #3967
  static in_game + #1154, #3967
  static in_game + #1155, #3967
  static in_game + #1156, #3967
  static in_game + #1157, #3967
  static in_game + #1158, #3967
  static in_game + #1159, #2880

  ;Linha 29
  static in_game + #1160, #2880
  static in_game + #1161, #2880
  static in_game + #1162, #2880
  static in_game + #1163, #2880
  static in_game + #1164, #2880
  static in_game + #1165, #2880
  static in_game + #1166, #2880
  static in_game + #1167, #2880
  static in_game + #1168, #2880
  static in_game + #1169, #2880
  static in_game + #1170, #2880
  static in_game + #1171, #2880
  static in_game + #1172, #2880
  static in_game + #1173, #2880
  static in_game + #1174, #2880
  static in_game + #1175, #2880
  static in_game + #1176, #2880
  static in_game + #1177, #2880
  static in_game + #1178, #2880
  static in_game + #1179, #2880
  static in_game + #1180, #2880
  static in_game + #1181, #2880
  static in_game + #1182, #2880
  static in_game + #1183, #2880
  static in_game + #1184, #2880
  static in_game + #1185, #2880
  static in_game + #1186, #2880
  static in_game + #1187, #2880
  static in_game + #1188, #2880
  static in_game + #1189, #2880
  static in_game + #1190, #2880
  static in_game + #1191, #2880
  static in_game + #1192, #2880
  static in_game + #1193, #2880
  static in_game + #1194, #2880
  static in_game + #1195, #2880
  static in_game + #1196, #2880
  static in_game + #1197, #2880
  static in_game + #1198, #2880
  static in_game + #1199, #2880

printin_gameScreen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #in_game
  loadn R1, #0
  loadn R2, #1200

  printin_gameScreenLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne printin_gameScreenLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts

printCobraScreen:

  push r0
  push r1
  push r2
  push r3

  loadn r0, #Cobra
  loadn r1, #0
  loadn r2, #1200

  printCobraScreenLoop:

    add r3, r0, r1
    loadi r3, r3
    outchar r3, r1
    inc r1
    cmp r1, r2

    jne printCobraScreenLoop

  pop r3
  pop r2
  pop r1
  pop r0
  rts
 
tela_final_fix:
  static tela_final_fix + #0, #2880
  static tela_final_fix + #1, #2880
  static tela_final_fix + #2, #2880
  static tela_final_fix + #3, #2880
  static tela_final_fix + #4, #2880
  static tela_final_fix + #5, #2880
  static tela_final_fix + #6, #2880
  static tela_final_fix + #7, #2880
  static tela_final_fix + #8, #2880
  static tela_final_fix + #9, #2880
  static tela_final_fix + #10, #2880
  static tela_final_fix + #11, #2880
  static tela_final_fix + #12, #2880
  static tela_final_fix + #13, #2880
  static tela_final_fix + #14, #2880
  static tela_final_fix + #15, #2880
  static tela_final_fix + #16, #2880
  static tela_final_fix + #17, #2880
  static tela_final_fix + #18, #2880
  static tela_final_fix + #19, #2880
  static tela_final_fix + #20, #2880
  static tela_final_fix + #21, #2880
  static tela_final_fix + #22, #2880
  static tela_final_fix + #23, #2880
  static tela_final_fix + #24, #2880
  static tela_final_fix + #25, #2880
  static tela_final_fix + #26, #2880
  static tela_final_fix + #27, #2880
  static tela_final_fix + #28, #2880
  static tela_final_fix + #29, #2880
  static tela_final_fix + #30, #2880
  static tela_final_fix + #31, #2880
  static tela_final_fix + #32, #2880
  static tela_final_fix + #33, #2880
  static tela_final_fix + #34, #2880
  static tela_final_fix + #35, #2880
  static tela_final_fix + #36, #2880
  static tela_final_fix + #37, #2880
  static tela_final_fix + #38, #2880
  static tela_final_fix + #39, #2880

  ;Linha 1
  static tela_final_fix + #40, #2880
  static tela_final_fix + #41, #3967
  static tela_final_fix + #42, #3967
  static tela_final_fix + #43, #3967
  static tela_final_fix + #44, #3967
  static tela_final_fix + #45, #3967
  static tela_final_fix + #46, #3967
  static tela_final_fix + #47, #3967
  static tela_final_fix + #48, #3967
  static tela_final_fix + #49, #3967
  static tela_final_fix + #50, #3967
  static tela_final_fix + #51, #3967
  static tela_final_fix + #52, #3967
  static tela_final_fix + #53, #3967
  static tela_final_fix + #54, #3967
  static tela_final_fix + #55, #3967
  static tela_final_fix + #56, #3967
  static tela_final_fix + #57, #3967
  static tela_final_fix + #58, #3967
  static tela_final_fix + #59, #3967
  static tela_final_fix + #60, #3967
  static tela_final_fix + #61, #3967
  static tela_final_fix + #62, #3967
  static tela_final_fix + #63, #3967
  static tela_final_fix + #64, #3967
  static tela_final_fix + #65, #3967
  static tela_final_fix + #66, #3967
  static tela_final_fix + #67, #3967
  static tela_final_fix + #68, #3967
  static tela_final_fix + #69, #3967
  static tela_final_fix + #70, #3967
  static tela_final_fix + #71, #3967
  static tela_final_fix + #72, #3967
  static tela_final_fix + #73, #3967
  static tela_final_fix + #74, #3967
  static tela_final_fix + #75, #3967
  static tela_final_fix + #76, #3967
  static tela_final_fix + #77, #3967
  static tela_final_fix + #78, #3967
  static tela_final_fix + #79, #2880

  ;Linha 2
  static tela_final_fix + #80, #2880
  static tela_final_fix + #81, #3967
  static tela_final_fix + #82, #3967
  static tela_final_fix + #83, #3967
  static tela_final_fix + #84, #3967
  static tela_final_fix + #85, #3967
  static tela_final_fix + #86, #3967
  static tela_final_fix + #87, #3967
  static tela_final_fix + #88, #3967
  static tela_final_fix + #89, #3967
  static tela_final_fix + #90, #3967
  static tela_final_fix + #91, #3967
  static tela_final_fix + #92, #3967
  static tela_final_fix + #93, #3967
  static tela_final_fix + #94, #3967
  static tela_final_fix + #95, #3967
  static tela_final_fix + #96, #3967
  static tela_final_fix + #97, #3967
  static tela_final_fix + #98, #3967
  static tela_final_fix + #99, #3967
  static tela_final_fix + #100, #3967
  static tela_final_fix + #101, #3967
  static tela_final_fix + #102, #3967
  static tela_final_fix + #103, #3967
  static tela_final_fix + #104, #3967
  static tela_final_fix + #105, #3967
  static tela_final_fix + #106, #3967
  static tela_final_fix + #107, #3967
  static tela_final_fix + #108, #3967
  static tela_final_fix + #109, #3967
  static tela_final_fix + #110, #3967
  static tela_final_fix + #111, #3967
  static tela_final_fix + #112, #3967
  static tela_final_fix + #113, #3967
  static tela_final_fix + #114, #3967
  static tela_final_fix + #115, #3967
  static tela_final_fix + #116, #3967
  static tela_final_fix + #117, #3967
  static tela_final_fix + #118, #3967
  static tela_final_fix + #119, #2880

  ;Linha 3
  static tela_final_fix + #120, #2880
  static tela_final_fix + #121, #3967
  static tela_final_fix + #122, #3967
  static tela_final_fix + #123, #3967
  static tela_final_fix + #124, #3967
  static tela_final_fix + #125, #3967
  static tela_final_fix + #126, #3967
  static tela_final_fix + #127, #3967
  static tela_final_fix + #128, #3967
  static tela_final_fix + #129, #3967
  static tela_final_fix + #130, #3967
  static tela_final_fix + #131, #3967
  static tela_final_fix + #132, #3967
  static tela_final_fix + #133, #3967
  static tela_final_fix + #134, #3967
  static tela_final_fix + #135, #3967
  static tela_final_fix + #136, #3967
  static tela_final_fix + #137, #3967
  static tela_final_fix + #138, #3967
  static tela_final_fix + #139, #3967
  static tela_final_fix + #140, #3967
  static tela_final_fix + #141, #3967
  static tela_final_fix + #142, #3967
  static tela_final_fix + #143, #3967
  static tela_final_fix + #144, #3967
  static tela_final_fix + #145, #3967
  static tela_final_fix + #146, #3967
  static tela_final_fix + #147, #3967
  static tela_final_fix + #148, #3967
  static tela_final_fix + #149, #3967
  static tela_final_fix + #150, #3967
  static tela_final_fix + #151, #3967
  static tela_final_fix + #152, #3967
  static tela_final_fix + #153, #3967
  static tela_final_fix + #154, #3967
  static tela_final_fix + #155, #3967
  static tela_final_fix + #156, #3967
  static tela_final_fix + #157, #3967
  static tela_final_fix + #158, #3967
  static tela_final_fix + #159, #2880

  ;Linha 4
  static tela_final_fix + #160, #2880
  static tela_final_fix + #161, #3967
  static tela_final_fix + #162, #3967
  static tela_final_fix + #163, #3967
  static tela_final_fix + #164, #3967
  static tela_final_fix + #165, #3967
  static tela_final_fix + #166, #3967
  static tela_final_fix + #167, #3967
  static tela_final_fix + #168, #3967
  static tela_final_fix + #169, #3967
  static tela_final_fix + #170, #3967
  static tela_final_fix + #171, #3967
  static tela_final_fix + #172, #3967
  static tela_final_fix + #173, #3967
  static tela_final_fix + #174, #3967
  static tela_final_fix + #175, #3967
  static tela_final_fix + #176, #3967
  static tela_final_fix + #177, #3967
  static tela_final_fix + #178, #3967
  static tela_final_fix + #179, #3967
  static tela_final_fix + #180, #3967
  static tela_final_fix + #181, #3967
  static tela_final_fix + #182, #3967
  static tela_final_fix + #183, #3967
  static tela_final_fix + #184, #3967
  static tela_final_fix + #185, #3967
  static tela_final_fix + #186, #3967
  static tela_final_fix + #187, #3967
  static tela_final_fix + #188, #3967
  static tela_final_fix + #189, #3967
  static tela_final_fix + #190, #3967
  static tela_final_fix + #191, #3967
  static tela_final_fix + #192, #3967
  static tela_final_fix + #193, #3967
  static tela_final_fix + #194, #3967
  static tela_final_fix + #195, #3967
  static tela_final_fix + #196, #3967
  static tela_final_fix + #197, #3967
  static tela_final_fix + #198, #3967
  static tela_final_fix + #199, #2880

  ;Linha 5
  static tela_final_fix + #200, #2880
  static tela_final_fix + #201, #3967
  static tela_final_fix + #202, #3967
  static tela_final_fix + #203, #3967
  static tela_final_fix + #204, #3967
  static tela_final_fix + #205, #3967
  static tela_final_fix + #206, #3967
  static tela_final_fix + #207, #3967
  static tela_final_fix + #208, #3967
  static tela_final_fix + #209, #3967
  static tela_final_fix + #210, #3967
  static tela_final_fix + #211, #3967
  static tela_final_fix + #212, #3967
  static tela_final_fix + #213, #3967
  static tela_final_fix + #214, #3967
  static tela_final_fix + #215, #3967
  static tela_final_fix + #216, #3967
  static tela_final_fix + #217, #3967
  static tela_final_fix + #218, #3967
  static tela_final_fix + #219, #3967
  static tela_final_fix + #220, #3967
  static tela_final_fix + #221, #3967
  static tela_final_fix + #222, #3967
  static tela_final_fix + #223, #3967
  static tela_final_fix + #224, #3967
  static tela_final_fix + #225, #3967
  static tela_final_fix + #226, #3967
  static tela_final_fix + #227, #3967
  static tela_final_fix + #228, #3967
  static tela_final_fix + #229, #3967
  static tela_final_fix + #230, #3967
  static tela_final_fix + #231, #3967
  static tela_final_fix + #232, #3967
  static tela_final_fix + #233, #3967
  static tela_final_fix + #234, #3967
  static tela_final_fix + #235, #3967
  static tela_final_fix + #236, #3967
  static tela_final_fix + #237, #3967
  static tela_final_fix + #238, #3967
  static tela_final_fix + #239, #2880

  ;Linha 6
  static tela_final_fix + #240, #2880
  static tela_final_fix + #241, #3967
  static tela_final_fix + #242, #3967
  static tela_final_fix + #243, #64
  static tela_final_fix + #244, #64
  static tela_final_fix + #245, #64
  static tela_final_fix + #246, #64
  static tela_final_fix + #247, #64
  static tela_final_fix + #248, #64
  static tela_final_fix + #249, #64
  static tela_final_fix + #250, #64
  static tela_final_fix + #251, #64
  static tela_final_fix + #252, #64
  static tela_final_fix + #253, #64
  static tela_final_fix + #254, #64
  static tela_final_fix + #255, #64
  static tela_final_fix + #256, #64
  static tela_final_fix + #257, #64
  static tela_final_fix + #258, #64
  static tela_final_fix + #259, #64
  static tela_final_fix + #260, #64
  static tela_final_fix + #261, #64
  static tela_final_fix + #262, #64
  static tela_final_fix + #263, #64
  static tela_final_fix + #264, #64
  static tela_final_fix + #265, #64
  static tela_final_fix + #266, #64
  static tela_final_fix + #267, #64
  static tela_final_fix + #268, #64
  static tela_final_fix + #269, #64
  static tela_final_fix + #270, #64
  static tela_final_fix + #271, #64
  static tela_final_fix + #272, #64
  static tela_final_fix + #273, #64
  static tela_final_fix + #274, #64
  static tela_final_fix + #275, #64
  static tela_final_fix + #276, #64
  static tela_final_fix + #277, #3967
  static tela_final_fix + #278, #3967
  static tela_final_fix + #279, #2880

  ;Linha 7
  static tela_final_fix + #280, #2880
  static tela_final_fix + #281, #3967
  static tela_final_fix + #282, #3967
  static tela_final_fix + #283, #64
  static tela_final_fix + #284, #3967
  static tela_final_fix + #285, #3967
  static tela_final_fix + #286, #3967
  static tela_final_fix + #287, #3967
  static tela_final_fix + #288, #3967
  static tela_final_fix + #289, #3967
  static tela_final_fix + #290, #3967
  static tela_final_fix + #291, #3967
  static tela_final_fix + #292, #3967
  static tela_final_fix + #293, #3967
  static tela_final_fix + #294, #3967
  static tela_final_fix + #295, #3967
  static tela_final_fix + #296, #3967
  static tela_final_fix + #297, #3967
  static tela_final_fix + #298, #3967
  static tela_final_fix + #299, #3967
  static tela_final_fix + #300, #3967
  static tela_final_fix + #301, #3967
  static tela_final_fix + #302, #3967
  static tela_final_fix + #303, #3967
  static tela_final_fix + #304, #3967
  static tela_final_fix + #305, #3967
  static tela_final_fix + #306, #3967
  static tela_final_fix + #307, #3967
  static tela_final_fix + #308, #3967
  static tela_final_fix + #309, #3967
  static tela_final_fix + #310, #3967
  static tela_final_fix + #311, #3967
  static tela_final_fix + #312, #3967
  static tela_final_fix + #313, #3967
  static tela_final_fix + #314, #3967
  static tela_final_fix + #315, #3967
  static tela_final_fix + #316, #64
  static tela_final_fix + #317, #3967
  static tela_final_fix + #318, #3967
  static tela_final_fix + #319, #2880

  ;Linha 8
  static tela_final_fix + #320, #2880
  static tela_final_fix + #321, #3967
  static tela_final_fix + #322, #3967
  static tela_final_fix + #323, #64
  static tela_final_fix + #324, #3967
  static tela_final_fix + #325, #3967
  static tela_final_fix + #326, #3967
  static tela_final_fix + #327, #3967
  static tela_final_fix + #328, #3967
  static tela_final_fix + #329, #3967
  static tela_final_fix + #330, #3967
  static tela_final_fix + #331, #3967
  static tela_final_fix + #332, #3967
  static tela_final_fix + #333, #3967
  static tela_final_fix + #334, #3967
  static tela_final_fix + #335, #3967
  static tela_final_fix + #336, #3967
  static tela_final_fix + #337, #3967
  static tela_final_fix + #338, #3967
  static tela_final_fix + #339, #3967
  static tela_final_fix + #340, #3967
  static tela_final_fix + #341, #3967
  static tela_final_fix + #342, #3967
  static tela_final_fix + #343, #3967
  static tela_final_fix + #344, #3967
  static tela_final_fix + #345, #3967
  static tela_final_fix + #346, #3967
  static tela_final_fix + #347, #3967
  static tela_final_fix + #348, #3967
  static tela_final_fix + #349, #3967
  static tela_final_fix + #350, #3967
  static tela_final_fix + #351, #3967
  static tela_final_fix + #352, #3967
  static tela_final_fix + #353, #3967
  static tela_final_fix + #354, #3967
  static tela_final_fix + #355, #3967
  static tela_final_fix + #356, #64
  static tela_final_fix + #357, #3967
  static tela_final_fix + #358, #3967
  static tela_final_fix + #359, #2880

  ;Linha 9
  static tela_final_fix + #360, #2880
  static tela_final_fix + #361, #3967
  static tela_final_fix + #362, #3967
  static tela_final_fix + #363, #64
  static tela_final_fix + #364, #3967
  static tela_final_fix + #365, #3967
  static tela_final_fix + #366, #3967
  static tela_final_fix + #367, #3967
  static tela_final_fix + #368, #3967
  static tela_final_fix + #369, #3967
  static tela_final_fix + #370, #3967
  static tela_final_fix + #371, #3967
  static tela_final_fix + #372, #3967
  static tela_final_fix + #373, #3967
  static tela_final_fix + #374, #3967
  static tela_final_fix + #375, #3967
  static tela_final_fix + #376, #3967
  static tela_final_fix + #377, #3967
  static tela_final_fix + #378, #3967
  static tela_final_fix + #379, #3967
  static tela_final_fix + #380, #3967
  static tela_final_fix + #381, #3967
  static tela_final_fix + #382, #3967
  static tela_final_fix + #383, #3967
  static tela_final_fix + #384, #3967
  static tela_final_fix + #385, #3967
  static tela_final_fix + #386, #3967
  static tela_final_fix + #387, #3967
  static tela_final_fix + #388, #3967
  static tela_final_fix + #389, #3967
  static tela_final_fix + #390, #3967
  static tela_final_fix + #391, #3967
  static tela_final_fix + #392, #3967
  static tela_final_fix + #393, #3967
  static tela_final_fix + #394, #3967
  static tela_final_fix + #395, #3967
  static tela_final_fix + #396, #64
  static tela_final_fix + #397, #3967
  static tela_final_fix + #398, #3967
  static tela_final_fix + #399, #2880

  ;Linha 10
  static tela_final_fix + #400, #2880
  static tela_final_fix + #401, #3967
  static tela_final_fix + #402, #3967
  static tela_final_fix + #403, #64
  static tela_final_fix + #404, #3967
  static tela_final_fix + #405, #3967
  static tela_final_fix + #406, #86
  static tela_final_fix + #407, #79
  static tela_final_fix + #408, #67
  static tela_final_fix + #409, #69
  static tela_final_fix + #410, #3967
  static tela_final_fix + #411, #80
  static tela_final_fix + #412, #69
  static tela_final_fix + #413, #82
  static tela_final_fix + #414, #68
  static tela_final_fix + #415, #69
  static tela_final_fix + #416, #85
  static tela_final_fix + #417, #44
  static tela_final_fix + #418, #3967
  static tela_final_fix + #419, #77
  static tela_final_fix + #420, #65
  static tela_final_fix + #421, #83
  static tela_final_fix + #422, #3967
  static tela_final_fix + #423, #70
  static tela_final_fix + #424, #73
  static tela_final_fix + #425, #81
  static tela_final_fix + #426, #85
  static tela_final_fix + #427, #69
  static tela_final_fix + #428, #3967
  static tela_final_fix + #429, #83
  static tela_final_fix + #430, #85
  static tela_final_fix + #431, #65
  static tela_final_fix + #432, #86
  static tela_final_fix + #433, #69
  static tela_final_fix + #434, #3967
  static tela_final_fix + #435, #3967
  static tela_final_fix + #436, #64
  static tela_final_fix + #437, #3967
  static tela_final_fix + #438, #3967
  static tela_final_fix + #439, #2880

  ;Linha 11
  static tela_final_fix + #440, #2880
  static tela_final_fix + #441, #3967
  static tela_final_fix + #442, #3967
  static tela_final_fix + #443, #64
  static tela_final_fix + #444, #3967
  static tela_final_fix + #445, #3967
  static tela_final_fix + #446, #3967
  static tela_final_fix + #447, #3967
  static tela_final_fix + #448, #3967
  static tela_final_fix + #449, #3967
  static tela_final_fix + #450, #3967
  static tela_final_fix + #451, #3967
  static tela_final_fix + #452, #3967
  static tela_final_fix + #453, #3967
  static tela_final_fix + #454, #3967
  static tela_final_fix + #455, #3967
  static tela_final_fix + #456, #3967
  static tela_final_fix + #457, #3967
  static tela_final_fix + #458, #3967
  static tela_final_fix + #459, #3967
  static tela_final_fix + #460, #3967
  static tela_final_fix + #461, #3967
  static tela_final_fix + #462, #3967
  static tela_final_fix + #463, #3967
  static tela_final_fix + #464, #3967
  static tela_final_fix + #465, #3967
  static tela_final_fix + #466, #3967
  static tela_final_fix + #467, #3967
  static tela_final_fix + #468, #3967
  static tela_final_fix + #469, #3967
  static tela_final_fix + #470, #3967
  static tela_final_fix + #471, #3967
  static tela_final_fix + #472, #3967
  static tela_final_fix + #473, #3967
  static tela_final_fix + #474, #3967
  static tela_final_fix + #475, #3967
  static tela_final_fix + #476, #64
  static tela_final_fix + #477, #3967
  static tela_final_fix + #478, #3967
  static tela_final_fix + #479, #2880

  ;Linha 12
  static tela_final_fix + #480, #2880
  static tela_final_fix + #481, #3967
  static tela_final_fix + #482, #3967
  static tela_final_fix + #483, #64
  static tela_final_fix + #484, #3967
  static tela_final_fix + #485, #3967
  static tela_final_fix + #486, #65
  static tela_final_fix + #487, #79
  static tela_final_fix + #488, #3967
  static tela_final_fix + #489, #77
  static tela_final_fix + #490, #69
  static tela_final_fix + #491, #78
  static tela_final_fix + #492, #79
  static tela_final_fix + #493, #83
  static tela_final_fix + #494, #3967
  static tela_final_fix + #495, #86
  static tela_final_fix + #496, #79
  static tela_final_fix + #497, #67
  static tela_final_fix + #498, #69
  static tela_final_fix + #499, #3967
  static tela_final_fix + #500, #78
  static tela_final_fix + #501, #65
  static tela_final_fix + #502, #79
  static tela_final_fix + #503, #3967
  static tela_final_fix + #504, #69
  static tela_final_fix + #505, #3967
  static tela_final_fix + #506, #2374
  static tela_final_fix + #507, #2373
  static tela_final_fix + #508, #2372
  static tela_final_fix + #509, #2373
  static tela_final_fix + #510, #2386
  static tela_final_fix + #511, #2389
  static tela_final_fix + #512, #2384
  static tela_final_fix + #513, #2369
  static tela_final_fix + #514, #3967
  static tela_final_fix + #515, #3967
  static tela_final_fix + #516, #64
  static tela_final_fix + #517, #3967
  static tela_final_fix + #518, #3967
  static tela_final_fix + #519, #2880

  ;Linha 13
  static tela_final_fix + #520, #2880
  static tela_final_fix + #521, #3967
  static tela_final_fix + #522, #3967
  static tela_final_fix + #523, #64
  static tela_final_fix + #524, #3967
  static tela_final_fix + #525, #3967
  static tela_final_fix + #526, #3967
  static tela_final_fix + #527, #3967
  static tela_final_fix + #528, #3967
  static tela_final_fix + #529, #3967
  static tela_final_fix + #530, #3967
  static tela_final_fix + #531, #3967
  static tela_final_fix + #532, #3967
  static tela_final_fix + #533, #3967
  static tela_final_fix + #534, #3967
  static tela_final_fix + #535, #3967
  static tela_final_fix + #536, #3967
  static tela_final_fix + #537, #3967
  static tela_final_fix + #538, #3967
  static tela_final_fix + #539, #3967
  static tela_final_fix + #540, #3967
  static tela_final_fix + #541, #3967
  static tela_final_fix + #542, #3967
  static tela_final_fix + #543, #3967
  static tela_final_fix + #544, #3967
  static tela_final_fix + #545, #3967
  static tela_final_fix + #546, #3967
  static tela_final_fix + #547, #3967
  static tela_final_fix + #548, #3967
  static tela_final_fix + #549, #3967
  static tela_final_fix + #550, #3967
  static tela_final_fix + #551, #3967
  static tela_final_fix + #552, #3967
  static tela_final_fix + #553, #3967
  static tela_final_fix + #554, #3967
  static tela_final_fix + #555, #3967
  static tela_final_fix + #556, #64
  static tela_final_fix + #557, #3967
  static tela_final_fix + #558, #3967
  static tela_final_fix + #559, #2880

  ;Linha 14
  static tela_final_fix + #560, #2880
  static tela_final_fix + #561, #3967
  static tela_final_fix + #562, #3967
  static tela_final_fix + #563, #64
  static tela_final_fix + #564, #3967
  static tela_final_fix + #565, #3967
  static tela_final_fix + #566, #3967
  static tela_final_fix + #567, #3967
  static tela_final_fix + #568, #3967
  static tela_final_fix + #569, #3967
  static tela_final_fix + #570, #3967
  static tela_final_fix + #571, #3967
  static tela_final_fix + #572, #3967
  static tela_final_fix + #573, #3967
  static tela_final_fix + #574, #3967
  static tela_final_fix + #575, #3967
  static tela_final_fix + #576, #3967
  static tela_final_fix + #577, #3967
  static tela_final_fix + #578, #3967
  static tela_final_fix + #579, #3967
  static tela_final_fix + #580, #3967
  static tela_final_fix + #581, #3967
  static tela_final_fix + #582, #3967
  static tela_final_fix + #583, #3967
  static tela_final_fix + #584, #3967
  static tela_final_fix + #585, #3967
  static tela_final_fix + #586, #3967
  static tela_final_fix + #587, #3967
  static tela_final_fix + #588, #3967
  static tela_final_fix + #589, #3967
  static tela_final_fix + #590, #3967
  static tela_final_fix + #591, #3967
  static tela_final_fix + #592, #3967
  static tela_final_fix + #593, #3967
  static tela_final_fix + #594, #3967
  static tela_final_fix + #595, #3967
  static tela_final_fix + #596, #64
  static tela_final_fix + #597, #3967
  static tela_final_fix + #598, #3967
  static tela_final_fix + #599, #2880

  ;Linha 15
  static tela_final_fix + #600, #2880
  static tela_final_fix + #601, #3967
  static tela_final_fix + #602, #3967
  static tela_final_fix + #603, #64
  static tela_final_fix + #604, #3967
  static tela_final_fix + #605, #3967
  static tela_final_fix + #606, #3967
  static tela_final_fix + #607, #3967
  static tela_final_fix + #608, #3967
  static tela_final_fix + #609, #3967
  static tela_final_fix + #610, #3967
  static tela_final_fix + #611, #3967
  static tela_final_fix + #612, #3967
  static tela_final_fix + #613, #3967
  static tela_final_fix + #614, #3967
  static tela_final_fix + #615, #3967
  static tela_final_fix + #616, #3967
  static tela_final_fix + #617, #3967
  static tela_final_fix + #618, #3967
  static tela_final_fix + #619, #3967
  static tela_final_fix + #620, #3967
  static tela_final_fix + #621, #3967
  static tela_final_fix + #622, #3967
  static tela_final_fix + #623, #3967
  static tela_final_fix + #624, #3967
  static tela_final_fix + #625, #3967
  static tela_final_fix + #626, #3967
  static tela_final_fix + #627, #3967
  static tela_final_fix + #628, #3967
  static tela_final_fix + #629, #3967
  static tela_final_fix + #630, #3967
  static tela_final_fix + #631, #3967
  static tela_final_fix + #632, #3967
  static tela_final_fix + #633, #3967
  static tela_final_fix + #634, #3967
  static tela_final_fix + #635, #3967
  static tela_final_fix + #636, #64
  static tela_final_fix + #637, #3967
  static tela_final_fix + #638, #3967
  static tela_final_fix + #639, #2880

  ;Linha 16
  static tela_final_fix + #640, #2880
  static tela_final_fix + #641, #3967
  static tela_final_fix + #642, #3967
  static tela_final_fix + #643, #64
  static tela_final_fix + #644, #3967
  static tela_final_fix + #645, #3967
  static tela_final_fix + #646, #3967
  static tela_final_fix + #647, #3967
  static tela_final_fix + #648, #3967
  static tela_final_fix + #649, #3967
  static tela_final_fix + #650, #3967
  static tela_final_fix + #651, #3967
  static tela_final_fix + #652, #3967
  static tela_final_fix + #653, #3967
  static tela_final_fix + #654, #3967
  static tela_final_fix + #655, #3967
  static tela_final_fix + #656, #3967
  static tela_final_fix + #657, #3967
  static tela_final_fix + #658, #3967
  static tela_final_fix + #659, #3967
  static tela_final_fix + #660, #3967
  static tela_final_fix + #661, #3967
  static tela_final_fix + #662, #3967
  static tela_final_fix + #663, #3967
  static tela_final_fix + #664, #3967
  static tela_final_fix + #665, #3967
  static tela_final_fix + #666, #3967
  static tela_final_fix + #667, #3967
  static tela_final_fix + #668, #3967
  static tela_final_fix + #669, #3967
  static tela_final_fix + #670, #3967
  static tela_final_fix + #671, #3967
  static tela_final_fix + #672, #3967
  static tela_final_fix + #673, #3967
  static tela_final_fix + #674, #3967
  static tela_final_fix + #675, #3967
  static tela_final_fix + #676, #64
  static tela_final_fix + #677, #3967
  static tela_final_fix + #678, #3967
  static tela_final_fix + #679, #2880

  ;Linha 17
  static tela_final_fix + #680, #2880
  static tela_final_fix + #681, #3967
  static tela_final_fix + #682, #3967
  static tela_final_fix + #683, #64
  static tela_final_fix + #684, #3967
  static tela_final_fix + #685, #3967
  static tela_final_fix + #686, #65
  static tela_final_fix + #687, #80
  static tela_final_fix + #688, #69
  static tela_final_fix + #689, #82
  static tela_final_fix + #690, #84
  static tela_final_fix + #691, #69
  static tela_final_fix + #692, #3967
  static tela_final_fix + #693, #2885
  static tela_final_fix + #694, #2899
  static tela_final_fix + #695, #2896
  static tela_final_fix + #696, #2881
  static tela_final_fix + #697, #2883
  static tela_final_fix + #698, #2895
  static tela_final_fix + #699, #3967
  static tela_final_fix + #700, #80
  static tela_final_fix + #701, #65
  static tela_final_fix + #702, #82
  static tela_final_fix + #703, #65
  static tela_final_fix + #704, #3967
  static tela_final_fix + #705, #82
  static tela_final_fix + #706, #69
  static tela_final_fix + #707, #67
  static tela_final_fix + #708, #79
  static tela_final_fix + #709, #77
  static tela_final_fix + #710, #69
  static tela_final_fix + #711, #67
  static tela_final_fix + #712, #65
  static tela_final_fix + #713, #82
  static tela_final_fix + #714, #3967
  static tela_final_fix + #715, #3967
  static tela_final_fix + #716, #64
  static tela_final_fix + #717, #3967
  static tela_final_fix + #718, #3967
  static tela_final_fix + #719, #2880

  ;Linha 18
  static tela_final_fix + #720, #2880
  static tela_final_fix + #721, #3967
  static tela_final_fix + #722, #3967
  static tela_final_fix + #723, #64
  static tela_final_fix + #724, #3967
  static tela_final_fix + #725, #3967
  static tela_final_fix + #726, #3967
  static tela_final_fix + #727, #3967
  static tela_final_fix + #728, #3967
  static tela_final_fix + #729, #3967
  static tela_final_fix + #730, #3967
  static tela_final_fix + #731, #3967
  static tela_final_fix + #732, #3967
  static tela_final_fix + #733, #3967
  static tela_final_fix + #734, #3967
  static tela_final_fix + #735, #3967
  static tela_final_fix + #736, #3967
  static tela_final_fix + #737, #3967
  static tela_final_fix + #738, #3967
  static tela_final_fix + #739, #3967
  static tela_final_fix + #740, #3967
  static tela_final_fix + #741, #3967
  static tela_final_fix + #742, #3967
  static tela_final_fix + #743, #3967
  static tela_final_fix + #744, #3967
  static tela_final_fix + #745, #3967
  static tela_final_fix + #746, #3967
  static tela_final_fix + #747, #3967
  static tela_final_fix + #748, #3967
  static tela_final_fix + #749, #3967
  static tela_final_fix + #750, #3967
  static tela_final_fix + #751, #3967
  static tela_final_fix + #752, #3967
  static tela_final_fix + #753, #3967
  static tela_final_fix + #754, #3967
  static tela_final_fix + #755, #3967
  static tela_final_fix + #756, #64
  static tela_final_fix + #757, #3967
  static tela_final_fix + #758, #3967
  static tela_final_fix + #759, #2880

  ;Linha 19
  static tela_final_fix + #760, #2880
  static tela_final_fix + #761, #3967
  static tela_final_fix + #762, #3967
  static tela_final_fix + #763, #64
  static tela_final_fix + #764, #3967
  static tela_final_fix + #765, #3967
  static tela_final_fix + #766, #3967
  static tela_final_fix + #767, #3967
  static tela_final_fix + #768, #3967
  static tela_final_fix + #769, #3967
  static tela_final_fix + #770, #3967
  static tela_final_fix + #771, #3967
  static tela_final_fix + #772, #3967
  static tela_final_fix + #773, #3967
  static tela_final_fix + #774, #3967
  static tela_final_fix + #775, #3967
  static tela_final_fix + #776, #3967
  static tela_final_fix + #777, #3967
  static tela_final_fix + #778, #3967
  static tela_final_fix + #779, #3967
  static tela_final_fix + #780, #3967
  static tela_final_fix + #781, #3967
  static tela_final_fix + #782, #3967
  static tela_final_fix + #783, #3967
  static tela_final_fix + #784, #3967
  static tela_final_fix + #785, #3967
  static tela_final_fix + #786, #3967
  static tela_final_fix + #787, #3967
  static tela_final_fix + #788, #3967
  static tela_final_fix + #789, #3967
  static tela_final_fix + #790, #3967
  static tela_final_fix + #791, #3967
  static tela_final_fix + #792, #3967
  static tela_final_fix + #793, #3967
  static tela_final_fix + #794, #3967
  static tela_final_fix + #795, #3967
  static tela_final_fix + #796, #64
  static tela_final_fix + #797, #3967
  static tela_final_fix + #798, #3967
  static tela_final_fix + #799, #2880

  ;Linha 20
  static tela_final_fix + #800, #2880
  static tela_final_fix + #801, #3967
  static tela_final_fix + #802, #3967
  static tela_final_fix + #803, #64
  static tela_final_fix + #804, #3967
  static tela_final_fix + #805, #3967
  static tela_final_fix + #806, #3967
  static tela_final_fix + #807, #3967
  static tela_final_fix + #808, #3967
  static tela_final_fix + #809, #3967
  static tela_final_fix + #810, #3967
  static tela_final_fix + #811, #3967
  static tela_final_fix + #812, #3967
  static tela_final_fix + #813, #3967
  static tela_final_fix + #814, #3967
  static tela_final_fix + #815, #3967
  static tela_final_fix + #816, #3967
  static tela_final_fix + #817, #3967
  static tela_final_fix + #818, #3967
  static tela_final_fix + #819, #3967
  static tela_final_fix + #820, #3967
  static tela_final_fix + #821, #3967
  static tela_final_fix + #822, #3967
  static tela_final_fix + #823, #3967
  static tela_final_fix + #824, #3967
  static tela_final_fix + #825, #3967
  static tela_final_fix + #826, #3967
  static tela_final_fix + #827, #3967
  static tela_final_fix + #828, #3967
  static tela_final_fix + #829, #3967
  static tela_final_fix + #830, #3967
  static tela_final_fix + #831, #3967
  static tela_final_fix + #832, #3967
  static tela_final_fix + #833, #3967
  static tela_final_fix + #834, #3967
  static tela_final_fix + #835, #3967
  static tela_final_fix + #836, #64
  static tela_final_fix + #837, #3967
  static tela_final_fix + #838, #3967
  static tela_final_fix + #839, #2880

  ;Linha 21
  static tela_final_fix + #840, #2880
  static tela_final_fix + #841, #3967
  static tela_final_fix + #842, #3967
  static tela_final_fix + #843, #64
  static tela_final_fix + #844, #3967
  static tela_final_fix + #845, #3967
  static tela_final_fix + #846, #3967
  static tela_final_fix + #847, #3967
  static tela_final_fix + #848, #3967
  static tela_final_fix + #849, #3967
  static tela_final_fix + #850, #3967
  static tela_final_fix + #851, #3967
  static tela_final_fix + #852, #3967
  static tela_final_fix + #853, #3967
  static tela_final_fix + #854, #3967
  static tela_final_fix + #855, #3967
  static tela_final_fix + #856, #3967
  static tela_final_fix + #857, #3967
  static tela_final_fix + #858, #3967
  static tela_final_fix + #859, #3967
  static tela_final_fix + #860, #3967
  static tela_final_fix + #861, #3967
  static tela_final_fix + #862, #3967
  static tela_final_fix + #863, #3967
  static tela_final_fix + #864, #3967
  static tela_final_fix + #865, #3967
  static tela_final_fix + #866, #3967
  static tela_final_fix + #867, #3967
  static tela_final_fix + #868, #3967
  static tela_final_fix + #869, #3967
  static tela_final_fix + #870, #3967
  static tela_final_fix + #871, #3967
  static tela_final_fix + #872, #3967
  static tela_final_fix + #873, #3967
  static tela_final_fix + #874, #3967
  static tela_final_fix + #875, #3967
  static tela_final_fix + #876, #64
  static tela_final_fix + #877, #3967
  static tela_final_fix + #878, #3967
  static tela_final_fix + #879, #2880

  ;Linha 22
  static tela_final_fix + #880, #2880
  static tela_final_fix + #881, #3967
  static tela_final_fix + #882, #3967
  static tela_final_fix + #883, #64
  static tela_final_fix + #884, #3967
  static tela_final_fix + #885, #3967
  static tela_final_fix + #886, #3967
  static tela_final_fix + #887, #3967
  static tela_final_fix + #888, #3967
  static tela_final_fix + #889, #3967
  static tela_final_fix + #890, #3967
  static tela_final_fix + #891, #3967
  static tela_final_fix + #892, #3967
  static tela_final_fix + #893, #3967
  static tela_final_fix + #894, #3967
  static tela_final_fix + #895, #3967
  static tela_final_fix + #896, #3967
  static tela_final_fix + #897, #3967
  static tela_final_fix + #898, #3967
  static tela_final_fix + #899, #3967
  static tela_final_fix + #900, #3967
  static tela_final_fix + #901, #3967
  static tela_final_fix + #902, #3967
  static tela_final_fix + #903, #3967
  static tela_final_fix + #904, #3967
  static tela_final_fix + #905, #3967
  static tela_final_fix + #906, #3967
  static tela_final_fix + #907, #3967
  static tela_final_fix + #908, #3967
  static tela_final_fix + #909, #3967
  static tela_final_fix + #910, #3967
  static tela_final_fix + #911, #3967
  static tela_final_fix + #912, #3967
  static tela_final_fix + #913, #3967
  static tela_final_fix + #914, #3967
  static tela_final_fix + #915, #3967
  static tela_final_fix + #916, #64
  static tela_final_fix + #917, #3967
  static tela_final_fix + #918, #3967
  static tela_final_fix + #919, #2880

  ;Linha 23
  static tela_final_fix + #920, #2880
  static tela_final_fix + #921, #3967
  static tela_final_fix + #922, #3967
  static tela_final_fix + #923, #64
  static tela_final_fix + #924, #64
  static tela_final_fix + #925, #64
  static tela_final_fix + #926, #64
  static tela_final_fix + #927, #64
  static tela_final_fix + #928, #64
  static tela_final_fix + #929, #64
  static tela_final_fix + #930, #64
  static tela_final_fix + #931, #64
  static tela_final_fix + #932, #64
  static tela_final_fix + #933, #64
  static tela_final_fix + #934, #64
  static tela_final_fix + #935, #64
  static tela_final_fix + #936, #64
  static tela_final_fix + #937, #64
  static tela_final_fix + #938, #64
  static tela_final_fix + #939, #64
  static tela_final_fix + #940, #64
  static tela_final_fix + #941, #64
  static tela_final_fix + #942, #64
  static tela_final_fix + #943, #64
  static tela_final_fix + #944, #64
  static tela_final_fix + #945, #64
  static tela_final_fix + #946, #64
  static tela_final_fix + #947, #64
  static tela_final_fix + #948, #64
  static tela_final_fix + #949, #64
  static tela_final_fix + #950, #64
  static tela_final_fix + #951, #64
  static tela_final_fix + #952, #64
  static tela_final_fix + #953, #64
  static tela_final_fix + #954, #64
  static tela_final_fix + #955, #64
  static tela_final_fix + #956, #64
  static tela_final_fix + #957, #3967
  static tela_final_fix + #958, #3967
  static tela_final_fix + #959, #2880

  ;Linha 24
  static tela_final_fix + #960, #2880
  static tela_final_fix + #961, #3967
  static tela_final_fix + #962, #3967
  static tela_final_fix + #963, #3967
  static tela_final_fix + #964, #3967
  static tela_final_fix + #965, #3967
  static tela_final_fix + #966, #3967
  static tela_final_fix + #967, #3967
  static tela_final_fix + #968, #3967
  static tela_final_fix + #969, #3967
  static tela_final_fix + #970, #3967
  static tela_final_fix + #971, #3967
  static tela_final_fix + #972, #3967
  static tela_final_fix + #973, #3967
  static tela_final_fix + #974, #3967
  static tela_final_fix + #975, #3967
  static tela_final_fix + #976, #3967
  static tela_final_fix + #977, #3967
  static tela_final_fix + #978, #3967
  static tela_final_fix + #979, #3967
  static tela_final_fix + #980, #3967
  static tela_final_fix + #981, #3967
  static tela_final_fix + #982, #3967
  static tela_final_fix + #983, #3967
  static tela_final_fix + #984, #3967
  static tela_final_fix + #985, #3967
  static tela_final_fix + #986, #3967
  static tela_final_fix + #987, #3967
  static tela_final_fix + #988, #3967
  static tela_final_fix + #989, #3967
  static tela_final_fix + #990, #3967
  static tela_final_fix + #991, #3967
  static tela_final_fix + #992, #3967
  static tela_final_fix + #993, #3967
  static tela_final_fix + #994, #3967
  static tela_final_fix + #995, #3967
  static tela_final_fix + #996, #3967
  static tela_final_fix + #997, #3967
  static tela_final_fix + #998, #3967
  static tela_final_fix + #999, #2880

  ;Linha 25
  static tela_final_fix + #1000, #2880
  static tela_final_fix + #1001, #3967
  static tela_final_fix + #1002, #3967
  static tela_final_fix + #1003, #3967
  static tela_final_fix + #1004, #3967
  static tela_final_fix + #1005, #3967
  static tela_final_fix + #1006, #3967
  static tela_final_fix + #1007, #3967
  static tela_final_fix + #1008, #3967
  static tela_final_fix + #1009, #3967
  static tela_final_fix + #1010, #3967
  static tela_final_fix + #1011, #3967
  static tela_final_fix + #1012, #3967
  static tela_final_fix + #1013, #3967
  static tela_final_fix + #1014, #3967
  static tela_final_fix + #1015, #3967
  static tela_final_fix + #1016, #3967
  static tela_final_fix + #1017, #3967
  static tela_final_fix + #1018, #3967
  static tela_final_fix + #1019, #3967
  static tela_final_fix + #1020, #3967
  static tela_final_fix + #1021, #3967
  static tela_final_fix + #1022, #3967
  static tela_final_fix + #1023, #3967
  static tela_final_fix + #1024, #3967
  static tela_final_fix + #1025, #3967
  static tela_final_fix + #1026, #3967
  static tela_final_fix + #1027, #3967
  static tela_final_fix + #1028, #3967
  static tela_final_fix + #1029, #3967
  static tela_final_fix + #1030, #3967
  static tela_final_fix + #1031, #3967
  static tela_final_fix + #1032, #3967
  static tela_final_fix + #1033, #3967
  static tela_final_fix + #1034, #3967
  static tela_final_fix + #1035, #3967
  static tela_final_fix + #1036, #3967
  static tela_final_fix + #1037, #3967
  static tela_final_fix + #1038, #3967
  static tela_final_fix + #1039, #2880

  ;Linha 26
  static tela_final_fix + #1040, #2880
  static tela_final_fix + #1041, #3967
  static tela_final_fix + #1042, #3967
  static tela_final_fix + #1043, #3967
  static tela_final_fix + #1044, #3967
  static tela_final_fix + #1045, #3967
  static tela_final_fix + #1046, #3967
  static tela_final_fix + #1047, #3967
  static tela_final_fix + #1048, #3967
  static tela_final_fix + #1049, #3967
  static tela_final_fix + #1050, #3967
  static tela_final_fix + #1051, #3967
  static tela_final_fix + #1052, #3967
  static tela_final_fix + #1053, #3967
  static tela_final_fix + #1054, #3967
  static tela_final_fix + #1055, #3967
  static tela_final_fix + #1056, #3967
  static tela_final_fix + #1057, #3967
  static tela_final_fix + #1058, #3967
  static tela_final_fix + #1059, #3967
  static tela_final_fix + #1060, #3967
  static tela_final_fix + #1061, #3967
  static tela_final_fix + #1062, #3967
  static tela_final_fix + #1063, #3967
  static tela_final_fix + #1064, #3967
  static tela_final_fix + #1065, #3967
  static tela_final_fix + #1066, #3967
  static tela_final_fix + #1067, #3967
  static tela_final_fix + #1068, #3967
  static tela_final_fix + #1069, #3967
  static tela_final_fix + #1070, #3967
  static tela_final_fix + #1071, #3967
  static tela_final_fix + #1072, #3967
  static tela_final_fix + #1073, #3967
  static tela_final_fix + #1074, #3967
  static tela_final_fix + #1075, #3967
  static tela_final_fix + #1076, #3967
  static tela_final_fix + #1077, #3967
  static tela_final_fix + #1078, #3967
  static tela_final_fix + #1079, #2880

  ;Linha 27
  static tela_final_fix + #1080, #2880
  static tela_final_fix + #1081, #3967
  static tela_final_fix + #1082, #3967
  static tela_final_fix + #1083, #3967
  static tela_final_fix + #1084, #3967
  static tela_final_fix + #1085, #3967
  static tela_final_fix + #1086, #3967
  static tela_final_fix + #1087, #3967
  static tela_final_fix + #1088, #3967
  static tela_final_fix + #1089, #3967
  static tela_final_fix + #1090, #3967
  static tela_final_fix + #1091, #3967
  static tela_final_fix + #1092, #3967
  static tela_final_fix + #1093, #3967
  static tela_final_fix + #1094, #3967
  static tela_final_fix + #1095, #3967
  static tela_final_fix + #1096, #3967
  static tela_final_fix + #1097, #3967
  static tela_final_fix + #1098, #3967
  static tela_final_fix + #1099, #3967
  static tela_final_fix + #1100, #3967
  static tela_final_fix + #1101, #3967
  static tela_final_fix + #1102, #3967
  static tela_final_fix + #1103, #3967
  static tela_final_fix + #1104, #3967
  static tela_final_fix + #1105, #3967
  static tela_final_fix + #1106, #3967
  static tela_final_fix + #1107, #3967
  static tela_final_fix + #1108, #3967
  static tela_final_fix + #1109, #3967
  static tela_final_fix + #1110, #3967
  static tela_final_fix + #1111, #3967
  static tela_final_fix + #1112, #3967
  static tela_final_fix + #1113, #3967
  static tela_final_fix + #1114, #3967
  static tela_final_fix + #1115, #3967
  static tela_final_fix + #1116, #3967
  static tela_final_fix + #1117, #3967
  static tela_final_fix + #1118, #3967
  static tela_final_fix + #1119, #2880

  ;Linha 28
  static tela_final_fix + #1120, #2880
  static tela_final_fix + #1121, #73
  static tela_final_fix + #1122, #67
  static tela_final_fix + #1123, #77
  static tela_final_fix + #1124, #67
  static tela_final_fix + #1125, #3967
  static tela_final_fix + #1126, #3967
  static tela_final_fix + #1127, #3967
  static tela_final_fix + #1128, #3967
  static tela_final_fix + #1129, #3967
  static tela_final_fix + #1130, #3967
  static tela_final_fix + #1131, #3967
  static tela_final_fix + #1132, #3967
  static tela_final_fix + #1133, #3967
  static tela_final_fix + #1134, #3967
  static tela_final_fix + #1135, #3967
  static tela_final_fix + #1136, #3967
  static tela_final_fix + #1137, #3967
  static tela_final_fix + #1138, #3967
  static tela_final_fix + #1139, #3967
  static tela_final_fix + #1140, #3967
  static tela_final_fix + #1141, #3967
  static tela_final_fix + #1142, #3967
  static tela_final_fix + #1143, #3967
  static tela_final_fix + #1144, #3967
  static tela_final_fix + #1145, #3967
  static tela_final_fix + #1146, #3967
  static tela_final_fix + #1147, #3967
  static tela_final_fix + #1148, #3967
  static tela_final_fix + #1149, #3967
  static tela_final_fix + #1150, #3967
  static tela_final_fix + #1151, #3967
  static tela_final_fix + #1152, #3967
  static tela_final_fix + #1153, #3967
  static tela_final_fix + #1154, #3967
  static tela_final_fix + #1155, #50
  static tela_final_fix + #1156, #48
  static tela_final_fix + #1157, #50
  static tela_final_fix + #1158, #50
  static tela_final_fix + #1159, #2880

  ;Linha 29
  static tela_final_fix + #1160, #2880
  static tela_final_fix + #1161, #2880
  static tela_final_fix + #1162, #2880
  static tela_final_fix + #1163, #2880
  static tela_final_fix + #1164, #2880
  static tela_final_fix + #1165, #2880
  static tela_final_fix + #1166, #2880
  static tela_final_fix + #1167, #2880
  static tela_final_fix + #1168, #2880
  static tela_final_fix + #1169, #2880
  static tela_final_fix + #1170, #2880
  static tela_final_fix + #1171, #2880
  static tela_final_fix + #1172, #2880
  static tela_final_fix + #1173, #2880
  static tela_final_fix + #1174, #2880
  static tela_final_fix + #1175, #2880
  static tela_final_fix + #1176, #2880
  static tela_final_fix + #1177, #2880
  static tela_final_fix + #1178, #2880
  static tela_final_fix + #1179, #2880
  static tela_final_fix + #1180, #2880
  static tela_final_fix + #1181, #2880
  static tela_final_fix + #1182, #2880
  static tela_final_fix + #1183, #2880
  static tela_final_fix + #1184, #2880
  static tela_final_fix + #1185, #2880
  static tela_final_fix + #1186, #2880
  static tela_final_fix + #1187, #2880
  static tela_final_fix + #1188, #2880
  static tela_final_fix + #1189, #2880
  static tela_final_fix + #1190, #2880
  static tela_final_fix + #1191, #2880
  static tela_final_fix + #1192, #2880
  static tela_final_fix + #1193, #2880
  static tela_final_fix + #1194, #2880
  static tela_final_fix + #1195, #2880
  static tela_final_fix + #1196, #2880
  static tela_final_fix + #1197, #2880
  static tela_final_fix + #1198, #2880
  static tela_final_fix + #1199, #2880

printtela_final_fixScreen:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #tela_final_fix
  loadn R1, #0
  loadn R2, #1200

  printtela_final_fixScreenLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne printtela_final_fixScreenLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts
; TELAS END
; ================================================ 
  
; UTILS BEGIN
; ================================================ 
DigitaAlgo:
  push fr ; Protege o registrador de flags
  push r0
  push r1 
  push r2 
  
  
  loadn r1, #255  ; Se nao digitar nada vem 255
  loadn r2, #0
  
  DigitaAlgo_Loop:
  inchar r0            ; Le o teclado, se nada for digitado = 255   

  cmp r0, r1           ;compara r0 com 255
  jeq DigitaAlgo_Loop    ; Fica lendo ate' que digite uma tecla valida
      
  
  store Letra, r0          ; Salva a tecla na variavel global "Letra"
  
  DigitaAlgo_Loop2:       ; Bloco novo para aguardar que o user solte a tecla pressionada!!
  inchar r0             ; Le o teclado, se nada for digitado = 255
  cmp r0, r1            ;compara r0 com 255
  jne DigitaAlgo_Loop2  ; Fica lendo ate' que digite uma tecla valida
    
  pop r2 
  pop r1 
  pop r0 
  pop fr
  
  rts 
  
LimpaTela:
  push fr           ;protege o registrador de flags
  push r0
  push r1
  push r3

  loadn r0, #1200   ;apaga as 1200 posicoes da tela
  loadn r1, #' '    ;com "espaco"
  loadn r3, #0

LimpaTela_Loop: ; = for(r0=1200; r3>0; r3--)
  dec r0
  outchar r1, r0
  cmp r3, r0
  jne LimpaTela_Loop

  pop r3  
  pop r1
  pop r0
  pop fr
  rts
    
Delay:;seguindo orientações do DicaDeJogos

  push r0
  
  inc r6
  loadn r0, #60000
  cmp r6, r0
  jgr Reset_Timer
  
  jmp Timer_End
  
  Reset_Timer:
    loadn r6, #0
    
  Timer_End:    
    pop r0
  
  rts
 
Delay2: ;seguindo orientações do DicaDeJogos

  push r0
  
  inc r6
  loadn r0, #1
  cmp r6, r0
  jgr Reset_Timer
  
  jmp Timer_End
  
  Reset_Timer:
    loadn r6, #0
    
  Timer_End:    
    pop r0
  
  rts

Reiniciar: ;apaga a tela e dá um goto pro loop da main

  inchar  r0
  loadn   r1, #' '
  
  cmp r0, r1
  jeq Restart_Activate
  
  jmp Restart_End
  
  Restart_Activate:
  
    call Apaga_Cobra
    call Incializar_Cobra
    call LimpaTela
    call printin_gameScreen
    
    jmp loop_cobra_viva
    
  Restart_End:
  rts
  
; UTILS END
; ==================================================

;LOGIC BEGIN
;===================================================
Incializar_Cobra:
    push r0
    push r1
    
    loadn r0, #3
    store Tamanho_da_cobra, r0
    
    ; Posicao_da_cobra[cabeça] = 460
    loadn   r0, #Posicao_da_cobra
    loadn   r1, #460
    storei  r0, r1
    
    inc   r0
    dec   r1
    storei  r0, r1
    
    inc   r0
    dec   r1
    storei  r0, r1
    
    inc   r0
    dec   r1
    storei  r0, r1
    
    ; Posicao_da_cobra[4] = -1
    inc   r0
    loadn   r1, #0
    storei  r0, r1
        
    call Cobra_Inicio
    
    loadn r0, #0
    store Direcao_da_cobra, r0
    
    pop r1
    pop r0
    
    rts

Cobra_Inicio:

  push r0
  push r1
  push r2
  push r3
  
  loadn r0, #Posicao_da_cobra  ; r0 = &Posicao_da_cobra
  loadi r2, r0                 ; r2 = Posicao_da_cobra[0]
    
  loadn r3, #0                  ; r3 = 0
  
Print:
      outchar r1, r2
      inc   r0
      loadi   r2, r0
      cmp r2, r3
      jne Print
    
      loadn   r0, #820
      loadn   r1, #'^'
      outchar r1, r0
      store   Comida_index, r0
      
      pop r3
      pop r2
      pop r1
      pop r0
      
      rts
  
Apaga_Cobra: ;a cada 'movimentação', um pedaço '@' da cobra é substituido por ' '

  ;push para proteger os registradores
  push r0
  push r1
  push r2
  push r3
  
  loadn   r0, #Posicao_da_cobra ; r0 = & Posicao_da_cobra
  inc   r0
  loadn   r1, #' '              ; r1 = ' '
  loadi   r2, r0                ; r2 = Posicao_da_cobra[0]
  loadn   r3, #0                ; r3 = 0
  
  Print:
  
    outchar r1, r2
    
    inc   r0
    loadi   r2, r0
    
    cmp r2, r3
    jne Print
  
  pop r3
  pop r2
  pop r1
  pop r0
  
  rts

Movimentacao_da_Cobra:

  push r0 ; Direcao_da_cobra / Posicao_da_cobra
  push r1 ; inchar
  push r2 ; local helper
  push r3
  push r4
  
  ; Sincronização
  loadn   r0, #5000
  loadn   r1, #0
  mod   r0, r6, r0    ; r1 = r0 % r1 (Teste condições de contorno)
  cmp   r0, r1
  jne Fim
  
Verifica_se_tem_comida:
  
    load  r0, Comida_index
    loadn   r1, #Posicao_da_cobra
    loadi   r2, r1
    
    cmp r0, r2
    jne Atualiza_Tamanho
    
    load  r0, Tamanho_da_cobra
    inc   r0
    store   Tamanho_da_cobra, r0
    
    loadn   r0, #0
    dec   r0
    store   Tem_comida, r0
    
Atualiza_Tamanho: ;decrementa e garante a movimentação

    loadn r0, #Posicao_da_cobra
    loadn r1, #Posicao_da_cobra
    load  r2, Tamanho_da_cobra
    
    add r0, r0, r2 ; r0 = Posicao_da_cobra[Size]
    
    dec r2  ; r1 = Posicao_da_cobra[Size-1], sem decrementar, não apaga do grid, e você passa por dentro
    add r1, r1, r2
    
    loadn r4, #0
    
    Atualiza_Tamanho_Loop:
      loadi   r3, r1
      storei  r0, r3
      
      dec r0
      dec r1
      
      cmp r2, r4
      dec r2
      
      jne Atualiza_Tamanho_Loop 
  
Movimentacao_cobra_WASD:
    inchar  r1
    
    loadn r2, #100  ; char r2 = 'd' 100 é o código ASCII do 'd'
    cmp r1, r2
    jeq Move_D
    
    loadn r2, #115  ; r2 = 's' 115 é o código ASCII do 's'
    cmp r1, r2
    jeq Move_S
    
    loadn r2, #97 ; r2 = 'a' 97 é o código ASCII do 'a'
    cmp r1, r2
    jeq Move_A
    
    loadn r2, #119  ; r2 = 'w' 119 é o código ASCII do 'w'
    cmp r1, r2
    jeq Move_W    
    
    jmp Atualiza_movimento
  
    Move_D:
      loadn r0, #0 ;sem resetar, o registrador esará com outro valor, o que fará com que ele identifique colisão e dê game over
      loadn r1, #2
      load  r2, Direcao_da_cobra
      cmp   r1, r2
      jeq   Esquerda
      
      store Direcao_da_cobra, r0
      jmp   Direita
      
    Move_S:
      loadn r0, #1 ;se não houver esse comando, irá pra baixo e esquerda
      loadn r1, #3
      load  r2, Direcao_da_cobra
      cmp   r1, r2
      jeq   Cima
      
      store   Direcao_da_cobra, r0
      jmp   Baixo
      
    Move_A:
      loadn   r0, #2
      loadn   r1, #0
      load    r2, Direcao_da_cobra
      cmp   r1, r2
      jeq   Direita
      
      store   Direcao_da_cobra, r0
      jmp   Esquerda
      
    Move_W:
      loadn   r0, #3 ;impede que você avance e ande pra trás simultâneamente (você passa por dentro de si, e da comida)
      loadn   r1, #1
      load    r2, Direcao_da_cobra
      cmp   r1, r2
      jeq   Baixo
      
      store   Direcao_da_cobra, r0
      jmp   Cima
  
Atualiza_movimento: ;compara o que foi digitado com o valor do registrador, se iguais, ele move para a direão 'X'
  
    load  r0, Direcao_da_cobra
        
    loadn   r2, #0
    cmp   r0, r2
    jeq   Direita
    
    loadn   r2, #1
    cmp   r0, r2
    jeq   Baixo
    
    loadn   r2, #2
    cmp   r0, r2
    jeq   Esquerda
    
    loadn   r2, #3
    cmp   r0, r2
    jeq   Cima
    
    jmp Fim
    
    Direita:
      loadn   r0, #Posicao_da_cobra ; r0 = & Posicao_da_cobra
      loadi   r1, r0      ; r1 = Posicao_da_cobra[0]
      inc   r1        ; r1++
      storei  r0, r1
      
      jmp Fim
        
    Baixo:
      loadn   r0, #Posicao_da_cobra ; r0 = & Posicao_da_cobra
      loadi   r1, r0                ; r1 = Posicao_da_cobra[0]
      loadn   r2, #40
      add   r1, r1, r2
      storei  r0, r1
      jmp Fim
    
    Esquerda:
      loadn   r0, #Posicao_da_cobra ; r0 = & Posicao_da_cobra
      loadi   r1, r0                ; r1 = Posicao_da_cobra[0]
      dec   r1                      ; r1--
      storei  r0, r1
      
      jmp Fim
      
    Cima:
      loadn   r0, #Posicao_da_cobra ; r0 = & Posicao_da_cobra
      loadi   r1, r0                ; r1 = Posicao_da_cobra[0]
      loadn   r2, #40
      sub   r1, r1, r2
      storei  r0, r1
      
      jmp Fim
  
Fim:
    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    rts

Repor_Comida: ;lógica para reposição de comida
  push r0
  push r1
  push r2
  push r3

  loadn r0, #0
  dec   r0
  load  r1, Tem_comida
  cmp   r0, r1
  
  jne Pops_Reposicoes
  
  loadn r1, #0
  store Tem_comida, r1
  load  r1, Comida_index
  
  load r0, Direcao_da_cobra
  
  loadn r2, #0
  cmp r0, r2
  jeq Atualiza_Direita
  
  loadn r2, #1
  cmp r0, r2
  jeq Atualiza_Baixo
  
  loadn r2, #2
  cmp r0, r2
  jeq Atualiza_Esquerda
  
  loadn r2, #3
  cmp r0, r2
  jeq Atualiza_Cima
  
  Atualiza_Direita:
  
    loadn r3, #354
    add r1, r1, r3
    jmp Insere_Comida_Grid
    
  Atualiza_Baixo:
  
    loadn r3, #444
    sub r1, r1, r3
    jmp Insere_Comida_Grid
    
  Atualiza_Esquerda:
  
    loadn r3, #396
    sub r1, r1, r3
    jmp Insere_Comida_Grid
    
  Atualiza_Cima:
  
    loadn r3, #484
    add r1, r1, r3
    jmp Insere_Comida_Grid
  
  Insere_Comida_Grid:
  
    loadn r2, #41 ;impede de a comida ser reposta fora do grid superior
    cmp r1, r2
    jle Comida_Inferior_Grid
    
    loadn r2, #1160 ;impede de a comida ser reposta fora do grid inferior
    cmp r1, r2
    jgr Comida_Superior_Grid
    
    loadn r0, #40 ;impede de a comida ser reposta fora do grid lateral esquerdo
    loadn r3, #1
    mod r2, r1, r0
    cmp r2, r3
    jel Comida_Esquerda_Grid
    
    loadn r0, #40 ;impede de a comida ser reposta fora do grid lateral direito
    loadn r3, #39
    mod r2, r1, r0
    cmp r2, r3
    jeg Comida_Direita_Grid
    
    jmp Atualiza_Comida_Fim
    
Comida_Superior_Grid:
    
      loadn r1, #215
      jmp Atualiza_Comida_Fim
      
Comida_Inferior_Grid:
    
      loadn r1, #1035
      jmp Atualiza_Comida_Fim
      
Comida_Direita_Grid:
    
      loadn r1, #835
      jmp Atualiza_Comida_Fim
      
Comida_Esquerda_Grid:
    
      loadn r1, #205
      jmp Atualiza_Comida_Fim
      
Atualiza_Comida_Fim:
    
      store Comida_index, r1
      loadn r0, #'^'
      outchar r0, r1
  
Pops_Reposicoes:
    pop r3
    pop r2
    pop r1
    pop r0
    rts

Morreu:

  loadn r0, #Posicao_da_cobra
  loadi r1, r0
  
  loadn r2, #40
  loadn r3, #39     ;impede da cobra ultrapassar grid direita
  mod r2, r1, r2    ; r2 = r1 % r2 (Teste condições de contorno)
  cmp r2, r3
  jeq Inicia_Fim
  
  loadn r2, #40
  loadn r3, #0      ;impede da cobra ultrapassar grid esquerda
  mod r2, r1, r2    ; r2 = r1 % r2 (Teste condições de contorno)
  cmp r2, r3
  jeq Inicia_Fim
  
  loadn r2, #40 ;impede da cobra ultrapassar grid cima
  cmp r1, r2
  jle Inicia_Fim
  
  loadn r2, #1160 ;impede da cobra ultrapassar grid baixo
  cmp r1, r2
  jgr Inicia_Fim
  
Checa_Colisao_Nela_Mesma:
  
    load  r2, Tamanho_da_cobra
    loadn   r3, #1
    loadi   r4, r0   ; r0 = Posição da cabeça
    
Loop_Colisao:
      inc   r0
      loadi r1, r0
      cmp   r1, r4
      jeq Inicia_Fim
      
      dec r2
      cmp r2, r3
      jne Loop_Colisao
    
      jmp Morreu_rts
  
Inicia_Fim:

    load  r0, Comida_index
    loadn   r1, #' '
    outchar r1, r0
  
    call printtela_final_fixScreen
    
    jmp Reinicio_loop
  
    Morreu_rts:
      rts ; verifica se ocorreu colisão em alguma parede ou a cobra bateu nela mesma 

Desenha_Cobra_E_Comida:

  push r0   ; Posição na tela para imprimir a string
  push r1   ; Endereço da string a ser impressa
  push r2   ; Cor da mensagem
  push r3
  
  loadn   r0, #1000
  loadn   r1, #0
  mod     r0, r6, r0  ; r1 = r0 % r1
  cmp     r0, r1
  jne Draw_End
  
  load    r0, Comida_index
  loadn   r1, #'^'
  outchar r1, r0
  
  loadn   r0, #Posicao_da_cobra ; r0 = &Posicao_da_cobra
  loadn   r1, #'@'        ; r1 = '@'
  loadi   r2, r0          ; r2 = Posicao_da_cobra[0] -> cabeça
  outchar r1, r2      
  
  loadn   r0, #Posicao_da_cobra ; r0 = & Posicao_da_cobra
  loadn   r1, #' '              ; r1 = ' '
  load  r3, Tamanho_da_cobra    ; r3 = Tamanho_da_cobra
  add   r0, r0, r3              ; r0 += Tamanho_da_cobra
  loadi   r2, r0                ; r2 = Posicao_da_cobra[Tamanho_da_cobra]
  outchar r1, r2                ; printf("%s", posição_da_cobra);
  
  Draw_End:
    pop r3
    pop r2
    pop r1
    pop r0
  
  rts
;LOGIC END
;===================================================
