local function CreateSection(MAG, Parse, lang)
  if imgui.TreeNodeEx("Description", {"DefaultOpen", "Framed"}) then
    imgui.PushTextWrapPos(imgui.GetWindowSize() - 30)
    
    if MAG == "Mag" then
      Parse(
        "A MAG is an equippable item in Phantasy Star Online. Feeding a mag can raise its synchro and IQ, improving its photon blast ability, and its DEF, POW, DEX and MIND, which increase its owner's corresponding stats while equipped. Higher level mags evolve into new forms with new triggered abilities and photon blasts.",
        
        "All new characters start with a level 5 MAG in their inventory. New Mags can also be acquired from boxes in the Mines."
      )
      
      -- info about mag stats
      if imgui.TreeNodeEx("Stats") then
        Parse(
          "Level: The sum of the MAG's DEF, POW, DEX and MIND stats. A new MAG has a level of 5 and is limited to 200. In other words, the MAG's DEF, POW, DEX and MIND stat total cannot exceed 200.",
          
          "Synchro: Improves damage of Estlla, Farlla, Golla and Pilla photon blasts. A new MAG has a synchro of 40%%. Synchro ranges from 0%% to 120%%, and feeding a MAG can increase or decrease synchro within this range. Being defeated while a MAG is equipped reduces the equipped MAG's synchro by 5%%. In versions 1 and 2 of the game, leaving a game while a MAG is equipped also reduces the equipped MAG's synchro by 5%%.",
          
          "IQ: Improves damage of Estlla, Farlla, Golla and Pilla photon blasts, and strength of Leilla and Mylla & Youlla photon blasts. A new MAG has an IQ of 0, but can be as high as 200. Feeding a MAG can increase or decrease IQ within this range.",
          
          "IQ: Improves damage of Estlla, Farlla, Golla and Pilla photon blasts, and strength of Leilla and Mylla & Youlla photon blasts. A new MAG has an IQ of 0, but can be as high as 200. Feeding a MAG can increase or decrease IQ within this range.",
          
          "DEF: Adds base DFP while equipped. 1 point of DEF has a value of 1 DFP. A new MAG has a DEF of 5.",
          
          "POW: Adds base ATP while equipped. 1 point of POW has a value of 2 ATP. A new MAG has a POW of 0.",
          
          "DEX: Adds base ATA while equipped. 1 point of DEX has a value of 0.5 ATA. A new MAG has a DEX of 0.",
          
          "MIND: Adds base MST while equipped. 1 point of MIND has a value of 2 MST. A new MAG has a MIND of 0.",
          
          "DEF, POW, DEX and MIND share some similarities. Because DFP, ATP, ATA and MST from a MAG are treated as base stats, they can help a character meet equipment and disk requirements, but are subject to the class's base stat caps. For example, MIND cannot increase android characters' MST above their cap of 0. Feeding a MAG can increase or decrease the four colored meters next to these stats. When any meter reaches 100%% or above, 100%% is subtracted and the corresponding MAG stat permanently increases by 1, unless doing so would cause the MAG's level to exceed the maximum, 200. The meters cannot be decreased below 0%. Leaving a game or storing a MAG in the bank rounds the meters down to the nearest multiple of 2%%."
        )
        imgui.TreePop()
      end
      
      -- info about abilities
      if imgui.TreeNodeEx("Triggered Actions") then
        Parse(
          "A new MAG has no triggered actions. As it evolves, depending on its current evolutionary state, it will have a low chance to perform an action in response to up to four triggers :",
          
          "  1. Photon blast meter fills to 100%%",
          "  2. Entering a boss fight area",
          "  3. HP reduced to 10%% or less",
          "  4. HP reduced to 0",
          
          "If any of these conditions are met, your mag could use Invulnerability, Shifta & Deband, Resta, and Reverser if your HP reaches 0, depending on what abilities it has."
        )
        imgui.TreePop()
      end
      
      -- info about photon blasts
      if imgui.TreeNodeEx("Photon Blasts") then
        Parse(
          "A new MAG has no photon blasts. Each time it evolves, it will permanently gain the photon blast corresponding to that evolution. No more than three photon blasts can be gained, however, and duplicate photon blasts will not be gained.",
        
          "When a character's photon blast meter fills to 100%%, the character will be able to perform any of the equipped MAG's photon blasts by holding the CTRL key, after which the meter will return to 0%%.",
          
          "Of the 6 available photon blasts in the game, each one can be either powered up by members of the party when they donate PB strength or by performing a PB chain. Each member will be marked with a number that will determine when their PB will be unleashed on the enemy if they decide to chain. Everyone in the chain as well as those who donated will obtain the benefits of the blast. All 6 Photon Blasts are as follows..",
          
          "  1. Mylla and Youlla : Buffs initiator and donors with Shifta and Deband. Also revives incapacitated members that donated PB.",
          "  2. Golla : Unleashes an attack on the enemy directly in front of the initiator.",
          "  3. Pilla : Unleashes a barrage from the heavens on all enemies surrounding the initiator.",
          "  4. Estlla : Attacks all enemies in a line directly in front of the initiator.",
          "  5. Leilla : Restores HP and cures all status abnormalities on the initiator and those that have chained or donated PB. Also revives incapacitated members that donated PB.",
          "  6. Farlla : Unleashes a ring of fire and attacks all enemies surrounding the initiator."
        )
        imgui.TreePop()
      end
      
      -- mag colors
      if imgui.TreeNodeEx("Mag Colors") then
        Parse(
          "The resulting color of your mag is determined by the costume picked during the creation of your character. Below is a list of all the mag colors and the costume you have to pick to acquire a mag with that color.",
          "  - Costume 1-1: Red",
          "  - Costume 1-2: Blue",
          "  - Costume 1-3: Yellow",
          "  - Costume 1-4: Green",
          "  - Costume 1-5: Purple",
          "  - Costume 1-6: Black",
          "  - Costume 1-7: White",
          "  - Costume 1-8: Cyan",
          "  - Costume 1-9: Brown",
          "  - Costume 2-1: Orange",
          "  - Costume 2-2: Slate Blue",
          "  - Costume 2-3: Olive",
          "  - Costume 2-4: Turquoise",
          "  - Costume 2-5: Fuschia",
          "  - Costume 2-6: Grey",
          "  - Costume 2-7: Cream",
          "  - Costume 2-8: Pink",
          "  - Costume 2-9: Dark Green",
          "  - Costume 3-1: Red",
          "  - Costume 3-2: Blue",
          "  - Costume 3-3: Yellow",
          "  - Costume 3-4: Green",
          "  - Costume 3-5: Purple",
          "  - Costume 3-6: Black",
          "  - Costume 3-7: White"
        )
        
        imgui.TreePop()
      end
      
    elseif MAG == "Agastya" then
      Parse(
        "Agastya" .. lang.mag_cell .. "Liberta Kit.",
        "Liberta Kit" .. lang.cell_src,
        "  1. Ultimate Shambertin by players with the Viridia, Bluefull, Pinkal, Redria or Oran section ID.",
        "  2. 10 Gold badges via Badge Shop.",
        "  3. 5 Eggs via Egg Gambler.",
        "  4. 30 Eggs via Elly's Egg Shop.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Andhaka" then
      Parse(
        "Andhaka" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become an Andhaka, it must be fed by a force and have DEF of at least 45 and have POW higher than both DEX and MIND.",
        lang.only_whole_levels,
        "An Andhaka " .. lang.can_continue_evolution
      )
      
    elseif MAG == "Angel's Wing" then
      Parse(
        "Angel's Wing" .. lang.mag_cell .. "Heart of Angel.",
        "Heart of Angel" .. lang.cell_src,
        lang.mag_xmas,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Apsaras" then
      Parse(
        "Apsaras" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become an Apsaras, it must :",
        
        "  1. be fed by a hunter with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have POW at least as high as MIND and MIND higher than DEX, or",
        "  2. be fed by a ranger with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have MIND higher than DEX and DEX higher than POW.",
        
        lang.only_whole_levels,
        "An Apsaras" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Ashvinau" then
      Parse(
        "Ashvinau" .. lang.is_2nd_tier,
        
        "A Vritra becomes an Ashvinau when it first reaches level 35 or above and has a DEX stat higher than both POW and MIND. " .. lang.only_whole_levels .. " Although a MAG must be held by a force to become a Vritra" .. lang.class_is_disregarded,
        
        "If a Vritra's POW is higher than both its DEX and its MIND, it instead becomes a Sumba. If its MIND is at least as high as both its POW and its DEX, or if its POW is equal to its DEX, it instead becomes a Namuci.",
        
        "When an Ashvinau" .. lang.reaches_lv50
      )

    elseif MAG == "Bana" then
      Parse(
        "Bana" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Bana, it must :",
        "  1. be fed by a hunter with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and MIND higher than POW and POW at least as high as DEX, or",
        "  2. be fed by a force and have DEF of at least 45 and DEX at least as high as POW, or",
        "  3. be fed by a force and have DEF of at least 45 and MIND at least as high as POW.",
        lang.only_whole_levels,
        "A Bana" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Bhima" then
      Parse(
        "Bhima" .. lang.is_4th_tier,
        lang.become_4th_tier .. "To become a Bhima, it must :",
        "  1. be fed by a FOmarl or FOnewearl with a Greenill, Purplenum or Oran section ID, and have its sum of DEF and MIND equal to its sum of POW and DEX, or",
        "  2. be fed by a FOmarl or FOnewearl with a Skyly, Pinkal or Yellowboze section ID, and have its sum of DEF and POW equal to its sum of DEX and MIND.",
        lang.only_whole_levels,
        lang.no_evolution
      )
      
    elseif MAG == "Bhirava" then
      Parse(
        "Bhirava" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Bhirava, it must :",
        "  1. be fed by a hunter with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have POW at least as high as MIND and MIND higher than DEX, or",
        "  2. be fed by a ranger with an even section ID and have POW higher than MIND and MIND higher than DEX, or",
        "  3. be fed by a ranger with an even section ID and have DEX at least as high as POW and POW higher than MIND, or",
        "  4. be fed by a force with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have DEF lower than 45 and DEX higher than MIND and MIND at least as high as POW.",
        lang.only_whole_levels,
        "A Bhirava" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Chao" then
      Parse(
        "Chao" .. lang.mag_cell .. "Heart of Chao.",
        "Heart of Chao" .. lang.cell_src,
        lang.mag_halloween,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Churel" then
      Parse(
        "Churel" .. lang.mag_cell .. "Cell of MAG 213.",
        "Cell of MAG 213" .. lang.cell_src,
        lang.mag_halloween,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Chu Chu" then
      Parse(
        "Chu Chu" .. lang.mag_cell .. "Heart of Chu Chu.",
        "Heart of Chu Chu" .. lang.cell_src,
        lang.mag_halloween,
        lang.mag_1_ticket,
        "  3. Complete the quest : Reach for the Dream.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Deva" then
      Parse(
        "Deva" .. lang.is_4th_tier,
        lang.become_4th_tier .. "To become a Deva, it must be fed by a HUmar or HUcast with a Viridia, Bluefull, Redria or Whitill section ID, and have its sum of DEF and DEX equal to its sum of POW and MIND.",
        lang.only_whole_levels,
        lang.no_evolution
      )
      
    elseif MAG == "Devil's Tail" then
      Parse(
        "Devil's Tail can be acquired by feeding Devil's Wing Heart of Devil.",
        "Heart of Devil" .. lang.cell_src,
        lang.mag_xmas,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Devil's Wing" then
      Parse(
        "Devil's Wing" .. lang.mag_cell .. "Heart of Devil.",
        "Heart of Devil" .. lang.cell_src,
        lang.mag_xmas,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Diwari" then
      Parse(
        "Diwari" .. lang.is_4th_tier,
        lang.become_4th_tier .. "To become a Diwari, it must be fed by a RAmarl or RAcaseal with a Skyly, Pinkal or Yellowboze section ID, and have its sum of DEF and POW equal to its sum of DEX and MIND.",
        lang.only_whole_levels,
        lang.no_evolution
      )
      
    elseif MAG == "Durga" then
      Parse(
        "Durga" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Durga, it must be fed by a ranger with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have MIND higher than DEX and DEX higher than POW.",
        lang.only_whole_levels,
        "A Durga" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Dreamcast" then
      Parse(
        "Dreamcast" .. lang.mag_cell .. "Kit of Dreamcast.",
        "Kit of Dreamcast" .. lang.cell_src,
        lang.mag_xmas,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Garuda" then
      Parse(
        "Garuda" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Garuda, it must have DEX higher than POW and POW higher than mind, and :",
        "  1. be fed by a hunter with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill), or",
        "  2. be fed by a force with an odd section ID and have DEF lower than 45.",
        lang.only_whole_levels,
        "A Garuda" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Gael Giel" then
      Parse(
        "Gael Giel" .. lang.mag_cell .. "D-Photon Core.",
        "D-Photon Core" .. lang.cell_src,
        "Ultimate Olga Flow by players with the Greenill, Skyly, Redria or Whitill section ID.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Genesis" then
      Parse(
        "Genesis" .. lang.mag_cell .. "Kit of Genesis.",
        "Kit of Genesis" .. lang.cell_src,
        lang.mag_xmas,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Geung Si" then
      Parse(
        "Geung Si" .. lang.mag_cell .. "Tablet.",
        "Tablet" .. lang.cell_src,
        "  1. Bronze Thief Gambler via Badge Shop.",
        "  2. Coren 1k Gambler on Sunday, Wednesday or Friday.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Hamburger" then
      Parse(
        "Hamburger" .. lang.mag_cell .. "Kit of Hamburger.",
        "Kit of Hamburger" .. lang.cell_src,
        lang.mag_xmas,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Ila" then
      Parse(
        "Ila" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become an Ila, it must :",
        "  1. be fed by a hunter with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have DEX higher than POW and POW higher than MIND, or",
        "  2. be fed by a force with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have DEF lower than 45 and MIND at least as high as DEX and DEX higher than POW.",
        lang.only_whole_levels,
        "A Ila" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Kabanda" then
      Parse(
        "Kabanda" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Kabanda, it must :",
        "  1. be fed by a hunter with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have MIND higher than POW and POW at least as high as DEX, or",
        "  2. be fed by a ranger with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have MIND higher than POW and POW at least as high as DEX, or",
        "  3. be fed by a force with an even section ID and have DEF lower than 45 and MIND at least as high as DEX and DEX higher than POW.",
        lang.only_whole_levels,
        "A Kabanda" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Kaitabha" then
      Parse(
        "Kaitabha" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Kaitabha, it must be fed by a ranger with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have :",
        "  1. POW higher than MIND and MIND higher than DEX, or",
        "  2. DEX at least as high as POW and POW higher than MIND.",
        lang.only_whole_levels,
        "A Kaitabha" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Kalki" then
      Parse(
        "Kalki" .. lang.is_1st_tier,
        "An unevolved MAG becomes a Kalki when it first reaches level 10 or above by being fed by a ranger (RAmar, RAmarl, RAcast or RAcaseal).",
        "If fed to level 10 by a hunter, an unevolved MAG instead becomes a Varuna. If fed to level 10 by a force, it instead becomes a Vritra.",
        "When a Kalki reaches level 35 or higher, if its POW is higher than both DEX and MIND, it becomes a Surya. If its DEX is at least as high as both POW and MIND, or its POW and MIND are equal, it becomes a Mitra. If its MIND is higher than both POW and DEX, it becomes a Tapas."
      )
      
    elseif MAG == "Kapu Kapu" then
      Parse(
        "Kapu Kapu" .. lang.mag_cell .. "Heart of Kapu Kapu.",
        "Heart of Kapu Kapu" .. lang.cell_src,
        lang.mag_halloween,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Kama" then
      Parse(
        "Kama" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Kama, it must :",
        "  1. be fed by a hunter with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have POW at least as high as DEX and DEX at least as high as MIND, or",
        "  2. be fed by a hunter with an odd section ID and have DEX equal to MIND, or",
        "  3. be fed by a ranger with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have POW higher than DEX and DEX at least as high as MIND, or",
        "  4. be fed by a ranger with an even section ID and have POW equal to MIND, or",
        "  5. be fed by a ranger with an even section ID and have DEX at least as high as MIND and MIND at least as high as POW.",
        lang.only_whole_levels,
        "A Kama" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Kumara" then
      Parse(
        "Kumara" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Kumara, it must be fed by a force with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have DEF lower than 45 and :",
        "  1. have MIND at least as high as POW and POW at least as high as DEX, or",
        "  2. have POW equal to DEX.",
        lang.only_whole_levels,
        "A Kumara" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Madhu" then
      Parse(
        "Madhu" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Madhu, it must be fed by a ranger with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have POW higher than DEX and DEX at least as high as MIND.",
        lang.only_whole_levels,
        "A Madhu" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Marica" then
      Parse(
        "Marica" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Marica, it must be fed by a force with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have DEF lower than 45 and POW higher than DEX and DEX at least as high as MIND.",
        lang.only_whole_levels,
        "A Marica" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Mark 3" then
      Parse(
        "Mark 3" .. lang.mag_cell .. "Kit of Mark 3.",
        "Kit of Mark 3" .. lang.cell_src,
        lang.mag_xmas,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Marutah" then
      Parse(
        "Marutah" .. lang.is_2nd_tier,
        
        "A Varuna becomes a Marutah when it first reaches level 35 or above and has a DEX stat higher than both POW and MIND. " .. lang.only_whole_levels .. " Although a MAG must be held by a hunter to become a Varuna" .. lang.class_is_disregarded,
        
        "If a Varuna's POW is at least as high as both its DEX and its MIND, or if its DEX is equal to its MIND, it instead becomes a Rudra. If its MIND is at least as high as both its POW and its DEX, it instead becomes a Vayu.",
        
        "When a Marutah" .. lang.reaches_lv50
      )
      
    elseif MAG == "Master System" then
      Parse(
        "Master System" .. lang.mag_cell .. "Kit of Master System.",
        "Kit of Master System" .. lang.cell_src,
        lang.mag_xmas,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Mitra" then
      Parse(
        "Mitra" .. lang.is_2nd_tier,
        
        "A Kalki becomes a Mitra when it first reaches level 35 or above and has a DEX stat at least as high as both POW and MIND, or has POW equal to MIND. " .. lang.only_whole_levels .. " Although a MAG must be held by a ranger to become a Kalki" .. lang.class_is_disregarded,
        
        "If a Kalki's POW is higher than both its DEX and its MIND, it instead becomes a Surya. If its MIND is higher than both its POW and its DEX, it instead becomes a Tapas.",
        
        "When a Mitra" .. lang.reaches_lv50
      )
      
    elseif MAG == "Moro" then
      Parse(
        "Moro" .. lang.mag_cell .. "Heart of Morolian.",
        "Heart of Morolian" .. lang.cell_src,
        "  1. 'Ultimate' Christmas Present '16",
        "  2. 30 Eggs via Elly's Egg Shop",
        lang.mag_cell_info
      )
      
    elseif MAG == "Naga" then
      Parse(
        "Naga" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Naga, it must have DEF lower than 45 and :",
        "  1. be fed by a force with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have POW equal to DEX, or",
        "  2. be fed by a force with an even section ID and have MIND at least as high as POW and POW at least as high as DEX, or",
        "  3. be fed by a force with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have POW higher than MIND and MIND higher than DEX.",
        lang.only_whole_levels,
        "A Naga" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Namuci" then
      Parse(
        "Namuci" .. lang.is_2nd_tier,
        
        "A Vritra becomes a Namuci when it first reaches level 35 or above and has a MIND stat at least as high as both POW and DEX, or has POW equal to DEX. " .. lang.only_whole_levels .. " Although a MAG must be held by a force to become a Vritra" .. lang.class_is_disregarded,
        
        "If a Vritra's POW is higher than both its DEX and its MIND, it instead becomes a Sumba. If its DEX is higher than both its POW and its MIND, it instead becomes an Ashvinau.",
        
        "When a Namuci" .. lang.reaches_lv50
      )
      
    elseif MAG == "Nandin" then
      Parse(
        "Nandin" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Nandin, it must be fed by a hunter with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have DEX higher than MIND and MIND at least as high as POW.",
        lang.only_whole_levels,
        "A Nandin" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Naraka" then
      Parse(
        "Naraka" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Naraka, it must be fed by a force with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have DEF lower than 45 and POW higher than DEX and DEX at least as high as MIND.",
        lang.only_whole_levels,
        "A Naraka" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Nidra" then
      Parse(
        "Nidra" .. lang.is_4th_tier,
        lang.become_4th_tier .. "To become a Nidra, it must :",
        "  1. be fed by a FOmar or FOnewm with a Viridia, Bluefull, Redria or Whitill section ID, and have its sum of DEF and DEX equal to its sum of POW and MIND, or",
        "  2. be fed by a FOmar or FOnewm with a Greenill, Purplenum or Oran section ID, and have its sum of DEF and MIND equal to its sum of POW and DEX, or",
        "  3. be fed by a FOmar or FOnewm with a Skyly, Pinkal or Yellowboze section ID, and have its sum of DEF and POW equal to its sum of DEX and MIND.",
        lang.only_whole_levels,
        lang.no_evolution
      )
      
    elseif MAG == "No-PB Elenor" then
      Parse(
        "No-PB Elenor comes as a lv5 Mag and has no specific cell.",
        "No-PB Elenor can be acquired for 50 Silver Badges."
      )
      
    elseif MAG == "Opa Opa" then
      Parse(
        "Opa Opa" .. lang.mag_cell .. "Heart of Opa Opa.",
        "Heart of Opa Opa" .. lang.cell_src,
        lang.mag_halloween,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Panzer's Tail" then
      Parse(
        "Panzer's Tail" .. lang.mag_cell .. "Panther's Spirit.",
        "Panther's Spirit" .. lang.cell_src,
        lang.mag_xmas,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "PB Elenor" then
      Parse(
        "PB Elenor" .. lang.mag_cell .. "Heart of YN-1107.",
        "Heart of YN-1107" .. lang.cell_src,
        "  1. 'Hard' Christmas Present '16.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Pretra" then
      Parse(
        "Pretra" .. lang.mag_cell .. "Cell of Mag 213.",
        "Cell of Mag 213" .. lang.cell_src,
        lang.mag_halloween,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Pian" then
      Parse(
        "Pian" .. lang.mag_cell .. "Heart of Pian.",
        "Heart of Pian" .. lang.cell_src,
        lang.mag_halloween,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Pioneer 2" then
      Parse(
        "Pioneer 2" .. lang.mag_cell .. "Pioneer Parts.",
        "Pioneer Parts" .. lang.cell_src,
        "  1. 10 Gold Badges via Badge Shop.",
        "  2. 5 Eggs via Egg Gambler.",
        "  3. 30 Eggs via Elly's Egg Shop.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Pitri" then
      Parse(
        "Pitri" .. lang.mag_cell .. "Cell of Mag 502.",
        "Cell of Mag 502" .. lang.cell_src,
        lang.mag_halloween,
        lang.mag_1_ticket,
        "  3. By talking to the correct rappies in quest [AOL CUP]: Sunset Base.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Pushan" then
      Parse(
        "Pushan" .. lang.is_4th_tier,
        lang.become_4th_tier .. "To become a Pushan, it must :",
        "  1. be fed by a RAmar or RAcast with a Viridia, Bluefull, Redria or Whitill section ID, and have its sum of DEF and DEX equal to its sum of POW and MIND, or",
        "  2. be fed by a RAmar or RAcast with a Greenill, Purplenum or Oran section ID, and have its sum of DEF and MIND equal to its sum of POW and DEX, or",
        "  3. be fed by a RAmar or RAcast with a Skyly, Pinkal or Yellowboze section ID, and have its sum of DEF and POW equal to its sum of DEX and MIND.",
        lang.only_whole_levels,
        lang.no_evolution
      )
      
    elseif MAG == "Puyo" then
      Parse(
        "Puyo" .. lang.mag_cell .. "Amitie's Memo.",
        "Amitie's Memo" .. lang.cell_src,
        "  1. 'Ultimate' Christmas Present '16.",
        "  2. 5 Eggs via Egg Gambler.",
        "  3. 30 Eggs via Elly's Egg Shop.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Rappy" then
      Parse(
        "Rappy" .. lang.mag_cell .. "Rappy Beak.",
        "Rappy Beak" .. lang.cell_src,
        "  1. Hard Sand Rappy.",
        "  2. Very Hard Sand Rappy by players with the Viridia, Greenill, Bluefull, Purplenum, Oran, Yellowboze, or Whitill section id.",
        "  3. Coren 10k Gambler everyday.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Rati" then
      Parse(
        "Rati" .. lang.is_4th_tier,
        lang.become_4th_tier .. "To become a Rati, it must :",
        "  1. be fed by a HUmar or HUcast with a Greenill, Purplenum or Oran section ID, and have its sum of DEF and MIND equal to its sum of POW and DEX, or",
        "  2. be fed by a HUmar or HUcast with a Skyly, Pinkal or Yellowboze section ID, and have its sum of DEF and POW equal to its sum of DEX and MIND.",
        lang.only_whole_levels,
        lang.no_evolution
      )
      
    elseif MAG == "Ravana" then
      Parse(
        "Ravana" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Ravana, it must be fed by a force with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have DEF lower than 45 and POW higher than MIND and MIND higher than DEX.",
        lang.only_whole_levels,
        "A Ravana" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Ribhava" then
      Parse(
        "Ribhava" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Ribhava, it must be fed by a force with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have DEF lower than 45 and DEX higher than POW and POW higher than MIND.",
        lang.only_whole_levels,
        "A Ribhava" .. lang.can_continue_evolution
      )
      
    elseif MAG == "RoboChao" then
      Parse(
        "RoboChao" .. lang.mag_cell .. "Parts of RoboChao.",
        "Parts of RoboChao" .. lang.cell_src,
        lang.mag_halloween,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Rudra" then
      Parse(
        "Rudra" .. lang.is_2nd_tier,
        
        "A Varuna becomes a Rudra when it first reaches level 35 or above and has a POW stat at least as high as both DEX and MIND, or has DEX equal to MIND. " .. lang.only_whole_levels .. " Although a MAG must be held by a hunter to become a Varuna" .. lang.class_is_disregarded,
        
        "If a Varuna's DEX is higher than both its POW and its MIND, it instead becomes a Marutah. If its MIND is higher than both its POW and its DEX, it instead becomes a Vayu.",
        
        "When a Rudra" .. lang.reaches_lv50
      )
      
    elseif MAG == "Rukmin" then
      Parse(
        "Rukmin" .. lang.is_4th_tier,
        lang.become_4th_tier .. "To become a Rukmin, it must :",
        "  1. be fed by a RAmarl or RAcaseal with a Viridia, Bluefull, Redria or Whitill section ID, and have its sum of DEF and DEX equal to its sum of POW and MIND, or",
        "  2. be fed by a RAmarl or RAcaseal with a Greenill, Purplenum or Oran section ID, and have its sum of DEF and MIND equal to its sum of POW and DEX.",
        lang.only_whole_levels,
        lang.no_evolution
      )
    
    elseif MAG == "Sato" then
      Parse(
        "Sato" .. lang.is_4th_tier,
        lang.become_4th_tier .. "To become a Sato, it must be fed by a FOmarl or FOnewearl with a Viridia, Bluefull, Redria or Whitill section ID, and have its sum of DEF and DEX equal to its sum of POW and MIND.",
        lang.only_whole_levels,
        lang.no_evolution
      )
      
    elseif MAG == "Savitri" then
      Parse(
        "Savitri" .. lang.is_4th_tier,
        lang.become_4th_tier .. "To become a Savitri, it must :",
        "  1. be fed by a HUnewearl or HUcaseal with a Viridia, Bluefull, Redria or Whitill section ID, and have its sum of DEF and DEX equal to its sum of POW and MIND, or",
        "  2. be fed by a HUnewearl or HUcaseal with a Greenill, Purplenum or Oran section ID, and have its sum of DEF and MIND equal to its sum of POW and DEX, or",
        "  3. be fed by a HUnewearl or HUcaseal with a Skyly, Pinkal or Yellowboze section ID, and have its sum of DEF and POW equal to its sum of DEX and MIND.",
        lang.only_whole_levels,
        lang.no_evolution
      )
      
    elseif MAG == "Sega Saturn" then
      Parse(
        "Sega Saturn" .. lang.mag_cell .. "Kit of Sega Saturn.",
        "Kit of Sega Saturn" .. lang.cell_src,
        lang.mag_xmas,
        lang.mag_1_ticket,
        lang.mag_cell_info
      )
      
    elseif MAG == "Sita" then
      Parse(
        "Sita" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Sita, it must be fed by a force with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have DEF lower than 45 and DEX higher than MIND and MIND at least as high as POW.",
        lang.only_whole_levels,
        "A Sita" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Soma" then
      Parse(
        "Soma" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Soma, it must be fed by a hunter with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have MIND higher than DEX and DEX higher than POW.",
        lang.only_whole_levels,
        "A Soma" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Soniti" then
      Parse(
        "Soniti" .. lang.mag_cell .. "Cell of Mag 502.",
        "Cell of Mag 502" .. lang.cell_src,
        lang.mag_halloween,
        lang.mag_1_ticket,
        "  3. By talking to the correct rappies in quest [AOL CUP]: Sunset Base.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Striker Unit" then
      Parse(
        "Striker Unit" .. lang.mag_cell .. "Heaven Striker Coat.",
        "Heaven Striker Coat" .. lang.cell_src,
        "  1. Very Hard Pazuzu by players with the Purplenum section id.",
        "  2. Very Hard Girtabululu by players with the Viridia, Bluefull, Redria, Yellowboze and Whitill section id.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Sumba" then
      Parse(
        "Sumba" .. lang.is_2nd_tier,
        
        "A Vritra becomes a Sumba when it first reaches level 35 or above and has a POW stat higher than both DEX and MIND. " .. lang.only_whole_levels .. " Although a MAG must be held by a force to become a Vritra" .. lang.class_is_disregarded,
        
        "If a Vritra's DEX is higher than both its POW and its MIND, it instead becomes an Ashvinau. If its MIND is at least as high as both its POW and its DEX, or if its POW is equal to its DEX, it instead becomes a Namuci.",
        
        "When a Sumba" .. lang.reaches_lv50
      )
      
    elseif MAG == "Surya" then
      Parse(
        "Surya" .. lang.is_2nd_tier,
        
        "A Kalki becomes a Surya when it first reaches level 35 or above and has a POW stat higher than both DEX and MIND. " .. lang.only_whole_levels .. " Although a MAG must be held by a ranger to become a Kalki" .. lang.class_is_disregarded,
        
        "If a Kalki's DEX is at least as high as both its POW and its MIND, or if its POW is equal to its MIND, it instead becomes a Mitra. If its MIND is higher than both its POW and its DEX, it instead becomes a Tapas.",
        
        "When a Surya" .. lang.reaches_lv50
      )
      
    elseif MAG == "Tapas" then
      Parse(
        "Tapas" .. lang.is_2nd_tier,
        
        "A Kalki becomes a Tapas when it first reaches level 35 or above and has a MIND stat higher than both POW and DEX. " .. lang.only_whole_levels .. " Although a MAG must be held by a ranger to become a Kalki" .. lang.class_is_disregarded,
        
        "If a Kalki's POW is higher than both its DEX and its MIND, it instead becomes a Surya. If its DEX is at least as high as both its POW and its MIND, or if its POW is equal to its MIND, it instead becomes a Mitra.",
        
        "When a Tapas" .. lang.reaches_lv50
      )
      
    elseif MAG == "Tellusis" then
      Parse(
        "Tellusis" .. lang.mag_cell .. "Dragon Scale.",
        "Dragon Scale" .. lang.cell_src,
        "  1. Ultimate Shambertin by players with the Greenill, Skyly, Purplenum, Whitill, or Yellowboze section id.",
        "  2. Very Hard Shambertin.",
        "  3. Hard Kondrieu.",
        "  4. Coren 10k Gambler everyday.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Ushasu" then
      Parse(
        "Ushasu" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become an Ushasu, it must be fed by a hunter with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have MIND higher than DEX and DEX higher than POW.",
        lang.only_whole_levels,
        "An Ushasu" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Varaha" then
      Parse(
        "Varaha" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Varaha, it must :",
        "  1. be fed by a hunter with an even section ID (Viridia, Skyly, Purplenum, Redria, Yellowboze) and have POW at least as high as DEX and DEX at least as high as MIND, or",
        "  2. be fed by a hunter with an even section ID and have DEX equal to MIND, or",
        "  3. be fed by a ranger with an even section ID and have MIND higher than POW and POW at least as high as DEX, or",
        "  4. be fed by a ranger with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have POW equal to MIND, or",
        "  5. be fed by a ranger with an odd section ID and have DEX at least as high as MIND and MIND at least as high as POW.",
        lang.only_whole_levels,
        "A Varaha" .. lang.can_continue_evolution
      )
      
    elseif MAG == "Varuna" then
      Parse(
        "Varuna" .. lang.is_1st_tier,
        "An unevolved MAG becomes a Varuna when it first reaches level 10 or above by being fed by a hunter (HUmar, HUnewearl, HUcast or HUcaseal).",
        "If fed to level 10 by a ranger, an unevolved MAG instead becomes a Kalki. If fed to level 10 by a force, it instead becomes a Vritra.",
        "When a Varuna reaches level 35 or higher, if its POW is at least as high as both DEX and MIND, or its DEX and MIND are equal, it becomes a Rudra. If its DEX is higher than both POW and MIND, it becomes a Marutah. If its MIND is higher than both POW and DEX, it becomes a Vayu."
      )
      
    elseif MAG == "Vayu" then
      Parse(
        "Vayu" .. lang.is_2nd_tier,
        
        "A Varuna becomes a Vayu when it first reaches level 35 or above and has a MIND stat at least as high as both POW and DEX. " .. lang.only_whole_levels .. " Although a MAG must be held by a hunter to become a Varuna" .. lang.class_is_disregarded,
        
        "If a Varuna's POW is at least as high as both its DEX and its MIND, or if its DEX is equal to its MIND, it instead becomes a Rudra. If its DEX is higher than both its POW and its MIND, it instead becomes an Marutah.",
        
        "When a Vayu" .. lang.reaches_lv50
      )
      
    elseif MAG == "Vritra" then
      Parse(
        "Vritra" .. lang.is_1st_tier,
        "An unevolved MAG becomes a Vritra when it first reaches level 10 or above by being fed by a force (FOmar, FOmarl, FOnewm or FOnewearl).",
        "If fed to level 10 by a hunter, an unevolved MAG instead becomes a Varuna. If fed to level 10 by a ranger, it instead becomes a Kalki.",
        "When a Vritra reaches level 35 or higher, if its POW is higher than both DEX and MIND, it becomes a Sumba. If its DEX is higher than both POW and MIND, it becomes a Ashvinau. If its MIND is at least as high as both POW and DEX, or its POW and DEX are equal, it becomes a Namuci."
      )
      
    elseif MAG == "Yahoo!" then
      Parse(
        "Yahoo!" .. lang.mag_cell .. "Yahoo! Engine.",
        "Yahoo! Engine" .. lang.cell_src,
        "  1. 5 Eggs via Egg Gambler.",
        "  2. 30 Eggs via Elly's Egg Shop.",
        lang.mag_cell_info
      )
      
    elseif MAG == "Yaksa" then
      Parse(
        "Yaksa" .. lang.is_3rd_tier,
        lang.become_3rd_tier .. "To become a Yaksa, it must be fed by a hunter with an odd section ID (Greenill, Bluefull, Pinkal, Oran, Whitill) and have DEX higher than MIND and MIND at least as high as POW.",
        lang.only_whole_levels,
        "A Yaksa" .. lang.can_continue_evolution
      )
    end
    
    imgui.PopTextWrapPos()
    imgui.NewLine()
    imgui.TreePop()
  end
end

return {
  CreateSection = CreateSection
}