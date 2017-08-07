local function CreateSection(MAG, Parse, lang)
  if imgui.TreeNodeEx("Abilities", {"DefaultOpen", "Framed"}) then
    
    if MAG == "Mag" then
      Parse("NoSpacing", "No abilities.")
      
    elseif MAG == "Agysta" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Andhaka" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Angel Wings" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Apsaras" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Ashvinau" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. "-",
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Bana" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Bhima" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Bhirava" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Chao" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Churel" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Chu Chu" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Deva" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Devil Wings" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Devil Tail" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Diwari" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Durga" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Dreamcast" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Garuda" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Gael Gill" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Genesis" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Geung Si" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Hamburger" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Ila" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_full .. "-",
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Kabanda" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Kaitabha" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Kalki" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. "-",
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Kapu Kapu" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Kama" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_full .. "-",
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Kumara" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Madhu" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Marica" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Mark 3" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Marutah" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. "-",
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Master System" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Mitra" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. "-",
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Moro" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Naga" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_full .. "-",
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Namuci" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Nandin" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Naraka" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_full .. lang.ab_heal,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Nidra" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "No-PB Elenor" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Opa Opa" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Panzer's Tail" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "PB Elenor" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Pretra" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Pian" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Pioneer 2" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Pitri" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Pushan" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Puyo" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Rappy" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Rati" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Ravana" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_farlla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_buff,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Ribhava" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_farlla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "RoboChao" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Rudra" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Rukmin" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Sato" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Savitri" then
      Parse("NoSpacing",
        lang.l_pb .. "-",
        lang.l_full .. lang.ab_buff,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Sega Saturn" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Sita" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_pilla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Soma" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_estlla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_nodam,
        lang.l_10hp .. lang.ab_nodam,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Soniti" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Striker Unit" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Sumba" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Surya" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Tapas" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Tellusis" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Ushasu" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Varaha" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. lang.ab_revive
      )
      
    elseif MAG == "Varuna" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_farlla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_buff,
        lang.l_10hp .. "-",
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Vayu" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_my,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. lang.ab_heal,
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Vritra" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_leilla,
        lang.l_full .. lang.ab_nodam,
        lang.l_boss .. lang.ab_heal,
        lang.l_10hp .. "-",
        lang.l_0hp .. "-"
      )
      
    elseif MAG == "Yahoo!" then
      Parse("NoSpacing", "UNKNOWN")
      
    elseif MAG == "Yaksa" then
      Parse("NoSpacing",
        lang.l_pb .. lang.pb_golla,
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