local function CreateSection(MAG, Parse, lang)
  if imgui.TreeNodeEx("Abilities", {"DefaultOpen", "Framed"}) then
    
    if MAG == "Mag" then
      Parse("NoSpacing", "No abilities.")
      
    elseif MAG == "Agastya" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Andhaka" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_act .. "25%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Angel's Wing" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Apsaras" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_act .. "25%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Ashvinau" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_act .. "40%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. "-",
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Bana" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_act .. "20%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Bhima" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Bhirava" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_act .. "30%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Chao" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Churel" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Chu Chu" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Deva" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Devil's Tail" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Devil's Wing" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Diwari" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Durga" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_act .. "25%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Dreamcast" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "70%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Garuda" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_act .. "30%%",
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Gael Giel" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Genesis" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "30%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Geung Si" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Hamburger" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Ila" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_act .. "25%%",
        lang.l_full .. "-",
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Kabanda" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_act .. "25%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Kaitabha" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_act .. "30%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Kalki" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_act .. "40%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. "-",
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Kapu Kapu" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Kama" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_full .. "-",
        lang.l_act .. "25%%",
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Kumara" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_act .. "35%%",
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Madhu" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_act .. "20%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Marica" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_act .. "30%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Mark 3" then
      Parse("NoSpacing", "No abilities.")
      
    elseif MAG == "Marutah" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_act .. "40%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. "-",
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Master System" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "15%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. "-",
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Mitra" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_act .. "40%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. "-",
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Moro" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Naga" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_act .. "20%%",
        lang.l_full .. "-",
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Namuci" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_act .. "45%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Nandin" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_act .. "25%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Naraka" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_act .. "30%%",
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Nidra" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "No-PB Elenor" then
      Parse("NoSpacing", "No abilities.")
      
    elseif MAG == "Opa Opa" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Panzer's Tail" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "PB Elenor" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Pretra" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Pian" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Pioneer 2" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Pitri" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Pushan" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Puyo" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Rappy" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Rati" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Ravana" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_farlla,
        lang.l_act .. "25%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Ribhava" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_farlla,
        lang.l_act .. "25%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "RoboChao" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Rudra" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Rukmin" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Sato" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Savitri" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Sega Saturn" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Sita" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_act .. "30%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Soma" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_act .. "25%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Soniti" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Striker Unit" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "55%%",
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive,
        "#:Special"
      )
      
      imgui.PushTextWrapPos(imgui.GetWindowSize() - 30)
      imgui.Text("The abilities of the Heaven Striker are enhanced when used in conjunction with the Striker Unit. First, the MST of the Heaven Striker is boosted by 25. Secondly, the special changes to Heaven Punishment (ie it can shoot up to 12 MST-based light element beams with one attack). The special attack only works when the first digit of the beat time is an even number.")
      imgui.PopTextWrapPos()
      
    elseif MAG == "Sumba" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Surya" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Tapas" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_act .. "45%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Tellusis" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "55%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive,
        "#:Special"
      )
      
      imgui.PushTextWrapPos(imgui.GetWindowSize() - 30)
      imgui.Text("When used in conjunction with Excalibur, light (ELT) and dark (EDK) resistances are boosted by 10. Also, the animation speed of the Excalibur will be increased by 20%.")
      imgui.PopTextWrapPos()
      
    elseif MAG == "Ushasu" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_act .. "35%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Varaha" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_act .. "30%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Varuna" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_farlla,
        lang.l_act .. "40%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. "-",
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Vayu" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_act .. "45%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Vritra" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_leilla,
        lang.l_act .. "40%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. "-",
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Yahoo!" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_act .. "50%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Yaksa" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_act .. "35%%",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
    end
    
    imgui.NewLine()
    imgui.TreePop()
  end
end

return {
  CreateSection = CreateSection
}