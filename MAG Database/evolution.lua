local function CreateSection(MAG, Parse, lang)
  if imgui.TreeNodeEx("Evolution Conditions", {"DefaultOpen", "Framed"}) then
    
    if MAG == "Mag" then
      Parse("NoSpacing", "No evolution conditions.")
      
    elseif MAG == "Agastya" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Liberta Kit"
      )
      
    elseif MAG == "Andhaka" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "POW > DEX >= MIND and DEF >= 45"
      )
          
    elseif MAG == "Angel's Wing" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Heart of Angel",
        lang.l_special .. "No Androids"
      )
      
    elseif MAG == "Apsaras" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_sex, {"Any"},
        
        "#:Condition 1",
        lang.l_class, {"Hunter"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "POW >= MIND > DEX",
        
        "#:Condition 2",
        lang.l_class, {"Ranger"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "MIND > DEX > POW"
      )
      
    elseif MAG == "Ashvinau" then
      Parse("NoSpacing",
        lang.l_mag .. "Vritra (Tier 1)",
        lang.l_lvl .. "35+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "DEX > MIND and DEX > POW"
      )
      
    elseif MAG == "Bana" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier MAG",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_sex, {"Any"},
        
        "#:Condition 1",
        lang.l_class, {"Hunter"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "MIND > POW >= DEX",
        
        "#:Condition 2",
        lang.l_class, {"Force"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "DEF >= 45 and DEX or" .. lang.nl .. "MIND >= POW"
      )
      
    elseif MAG == "Bhima" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100, 110, 120, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Female"},
        
        "#:Condition 1",
        lang.l_secid, {"Greenill", "Purplenum", "Oran"},
        lang.l_stats .. "DEF + MIND = POW + DEX",
        
        "#:Condition 2",
        lang.l_secid, {"Skyly", "Pinkal", "Yellowboze"},
        lang.l_stats .. "DEF + POW = DEX + MIND"
      )
      
    elseif MAG == "Bhirava" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_sex, {"Any"},
        
        "#:Condition 1",
        lang.l_class, {"Hunter"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "POW >= MIND > DEX",
        
        "#:Condition 2",
        lang.l_class, {"Ranger"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "POW > MIND > DEX or" .. lang.nl .. "DEX >= POW > MIND",
        
        "#:Condition 3",
        lang.l_class, {"Force"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "DEF < 45 and DEX > MIND >= POW"
      )
      
    elseif MAG == "Chao" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "140+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Heart of Chao",
        lang.l_stats .. "All Stats > 35"
      )
      
    elseif MAG == "Churel" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier", 
        lang.l_lvl .. "100+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_cell .. "Cell of MAG 213"
      )
      
    elseif MAG == "Chu Chu" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Heart of Chu Chu"
      )
      
    elseif MAG == "Deva" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100, 110, 120, etc..",
        lang.l_class, {"Hunter"},
        lang.l_sex, {"Male"},
        lang.l_secid, {"Viridia", "Bluefull", "Redria", "Whitill"},
        lang.l_stats .. "DEF + DEX = POW + MIND"
      )
      
    elseif MAG == "Devil's Tail" then
      Parse("NoSpacing",
        lang.l_mag .. "Devil's Wing",
        lang.l_lvl, {"Any"},
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Heart of Devil"
      )
      
    elseif MAG == "Devil's Wing" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Heart of Devil",
        lang.l_special .. "No Androids"
      )
      
    elseif MAG == "Diwari" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100, 110, 120, etc..",
        lang.l_class, {"Ranger"},
        lang.l_sex, {"Female"},
        lang.l_secid, {"Skyly", "Pinkal", "Yellowboze"},
        lang.l_stats .. "DEF + POW = DEX + MIND"
      )
      
    elseif MAG == "Durga" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "Level 50, 55, 60, etc..",
        lang.l_class, {"Ranger"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "MIND > DEX > POW"
      )
      
    elseif MAG == "Dreamcast" then
      Parse("NoSpacing",
        lang.l_mag .. "Mark 3 or Master System or Genesis or Sega Saturn",
        lang.l_lvl .. "101",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Kit of Dreamcast",
        lang.l_special .. "Character Lv100+. MAG Lv req fluctuates depending on character Lv."
      )
      
    elseif MAG == "Garuda" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_sex, {"Any"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        
        "#:Condition 1",
        lang.l_class, {"Hunter"},
        lang.l_stats .. "DEX > POW > MIND",
        
        "#:Condition 2",
        lang.l_class, {"Force"},
        lang.l_stats .. "DEX > POW > MIND and DEF < 45"
      )
      
    elseif MAG == "Gael Giel" then
      Parse("NoSpacing",
        lang.l_mag .. "Kama",
        lang.l_lvl .. "100",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "D-Photon Core"
      )
      
    elseif MAG == "Genesis" then
      Parse("NoSpacing",
        lang.l_mag .. "Mark 3 or Master System",
        lang.l_lvl .. "70",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Kit of Genesis",
        lang.l_special .. "Character Lv80+. MAG Lv req fluctuates depending on character Lv."
      )
      
    elseif MAG == "Geung Si" then
      Parse("NoSpacing",
        lang.l_mag .. "Rukmin",
        lang.l_lvl, {"Any"},
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Tablet"
      )
      
    elseif MAG == "Gael Gill" then
      Parse("NoSpacing",
        lang.l_mag .. "Kama",
        lang.l_lvl .. "100",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "D-Photon Core"
      )
      
    elseif MAG == "Hamburger" then
      Parse("NoSpacing",
        lang.l_mag .. "Kaitabha",
        lang.l_lvl .. "50+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Kit of Hamburger"
      )
      
    elseif MAG == "Ila" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_sex, {"Any"},
        
        "#:Condition 1",
        lang.l_class, {"Hunter"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "DEX > POW > MIND",
        
        "#:Condition 2",
        lang.l_class, {"Force"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "MIND >= DEX > POW"
      )
      
    elseif MAG == "Kabanda" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_sex, {"Any"},
        
        "#:Condition 1",
        lang.l_class, {"Hunter"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "MIND > POW >= DEX",
        
        "#:Condition 2",
        lang.l_class, {"Ranger"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "MIND > POW >= DEX",
        
        "#:Condition 3",
        lang.l_class, {"Force"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "MIND >= DEX > POW and DEF < 45"
      )
      
    elseif MAG == "Kaitabha" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Ranger"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "POW > MIND > DEX or" .. lang.nl .. "DEX >= POW > MIND"
      )
      
    elseif MAG == "Kalki" then
      Parse("NoSpacing",
        lang.l_mag .. "Unevolved Mag",
        lang.l_lvl .. "10+",
        lang.l_class, {"Ranger"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"}
      )
      
    elseif MAG == "Kapu Kapu" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Heart of Kapu Kapu"
      )
      
    elseif MAG == "Kama" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_sex, {"Any"},
        
        "#:Condition 1",
        lang.l_class, {"Hunter"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "POW >= DEX >= MIND or" .. lang.nl .. "DEX = MIND",
        
        "#:Condition 2",
        lang.l_class, {"Ranger"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "POW > DEX >= MIND or" .. lang.nl .. "POW = MIND or" .. lang.nl .. "DEX >= MIND >= POW"
      )
      
    elseif MAG == "Kumara" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "DEF < 45 and MIND >= POW >= DEX or" .. lang.nl .. "DEF < 45 and POW = DEX"
      )
      
    elseif MAG == "Madhu" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Ranger"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "POW > DEX >= MIND"
      )
      
    elseif MAG == "Marica" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "POW > DEX >= MIND"
      )
      
    elseif MAG == "Mark 3" then
      Parse("NoSpacing",
        lang.l_mag .. "Unevolved Mag",
        lang.l_lvl .. "5-9",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Kit of Mark 3",
        lang.l_special .. "Character Lv65+"
      )
      
    elseif MAG == "Marutah" then
      Parse("NoSpacing",
        lang.l_mag .. "Varuna",
        lang.l_lvl .. "35+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "DEX > POW and DEX > MIND"
      )
      
    elseif MAG == "Master System" then
      Parse("NoSpacing",
        lang.l_mag .. "Mark 3",
        lang.l_lvl .. "50",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Kit of Master System",
        lang.l_special .. "Character Lv70+"
      )
      
    elseif MAG == "Mitra" then
      Parse("NoSpacing",
        lang.l_mag .. "Kalki",
        lang.l_lvl .. "35+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "DEX >= POW and DEX >= MIND or" .. lang.nl .. "POW = MIND"
      )
      
    elseif MAG == "Moro" then
      Parse("NoSpacing",
        lang.l_mag .. "Kumara",
        lang.l_lvl, {"Any"},
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Heart of Morolian"
      )
      
    elseif MAG == "Naga" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Any"},
        
        "#:Condition 1",
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "DEF < 45 and POW = DEX or" .. lang.nl .. "DEF < 45 and MIND >= POW >= DEX",
        
        "#:Condition 2",
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "DEF < 45 and POW > MIND > DEX"
      )
      
    elseif MAG == "Namuci" then
      Parse("NoSpacing",
        lang.l_mag .. "Vritra",
        lang.l_lvl .. "35+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "MIND >= POW and MIND >= DEX or" .. lang.nl .. "POW = DEX"
      )
      
    elseif MAG == "Nandin" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Hunter"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "DEX > MIND >= POW"
      )
      
    elseif MAG == "Naraka" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "DEF < 45 and POW > DEX >= MIND"
      )
      
    elseif MAG == "Nidra" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100, 110, 120, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Male"},
        
        "#:Condition 1",
        lang.l_secid, {"Viridia", "Bluefull", "Redria", "Whitill"},
        lang.l_stats .. "DEF + DEX = POW + MIND",
        
        "#:Condition 2",
        lang.l_secid, {"Greenill", "Purplenum", "Oran"},
        lang.l_stats .. "DEF + MIND = POW + DEX",
        
        "#:Condition 3",
        lang.l_secid, {"Skyly", "Pinkal", "Yellowboze"},
        lang.l_stats .. "DEF + POW = DEX + MIND"
      )
      
    elseif MAG == "No-PB Elenor" then
      Parse("NoSpacing", "No evolution conditions.")
      
    elseif MAG == "Opa Opa" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Heart of Opa Opa"
      )
      
    elseif MAG == "Panzer's Tail" then
      Parse("NoSpacing",
        lang.l_mag .. "Naga",
        lang.l_lvl .. "50+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Panther's Spirit"
      )
      
    elseif MAG == "PB Elenor" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Heart of YN-1107"
      )
      
    elseif MAG == "Pretra" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_cell .. "Cell of MAG 213"
      )
      
    elseif MAG == "Pian" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "120+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "IQ = 180, Sync = 120%%",
        lang.l_cell .. "Heart of Pian"
      )
      
    elseif MAG == "Pioneer 2" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Pioneer Parts"
      )
      
    elseif MAG == "Pitri" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_cell .. "Cell of MAG 502"
      )
      
    elseif MAG == "Pushan" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100, 110, 120, etc..",
        lang.l_class, {"Ranger"},
        lang.l_sex, {"Male"},
        
        "#:Condition 1",
        lang.l_secid, {"Viridia", "Bluefull", "Redria", "Whitill"},
        lang.l_stats .. "DEF + DEX = POW + MIND",
        
        "#:Condition 2",
        lang.l_secid, {"Greenill", "Purplenum", "Oran"},
        lang.l_stats .. "DEF + MIND = POW + DEX",
        
        "#:Condition 3",
        lang.l_secid, {"Skyly", "Pinkal", "Yellowboze"},
        lang.l_stats .. "DEF + POW = DEX + MIND"
      )
      
    elseif MAG == "Puyo" then
      Parse("NoSpacing",
        lang.l_mag .. "Chu Chu",
        lang.l_lvl, {"Any"},
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Amitie's Memo"
      )
      
    elseif MAG == "Rappy" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Rappy Beak"
      )
      
    elseif MAG == "Rati" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100, 110, 120, etc..",
        lang.l_class, {"Hunter"},
        lang.l_sex, {"Male"},
        
        "#:Condition 1",
        lang.l_secid, {"Greenill", "Purplenum", "Oran"},
        lang.l_stats .. "DEF + MIND = POW + DEX",
        
        "#:Condition 2",
        lang.l_secid, {"Skyly", "Pinkal", "Yellowboze"},
        lang.l_stats .. "DEF + POW = DEX + MIND"
      )
      
    elseif MAG == "Ravana" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "DEF < 45 and POW > MIND > DEX"
      )
      
    elseif MAG == "Ribhava" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "DEF < 45 and DEX > POW > MIND"
      )
      
    elseif MAG == "RoboChao" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "140+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Parts of RoboChao",
        lang.l_stats .. "2 Stats > 70"
      )
      
    elseif MAG == "Rudra" then
      Parse("NoSpacing",
        lang.l_mag .. "Varuna",
        lang.l_lvl .. "35+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "POW >= DEX and POW >= MIND or" .. lang.nl .. "DEX = MIND"
      )
      
    elseif MAG == "Rukmin" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100, 110, 120, etc..",
        lang.l_class, {"Ranger"},
        lang.l_sex, {"Female"},
        
        "#:Condition 1",
        lang.l_secid, {"Viridia", "Bluefull", "Redria", "Whitill"},
        lang.l_stats .. "DEF + DEX = POW + MIND",
        
        "#:Condition 2",
        lang.l_secid, {"Greenill", "Purplenum", "Oran"},
        lang.l_stats .. "DEF + MIND = POW + DEX"
      )
      
    elseif MAG == "Sato" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100, 110, 120, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Female"},
        lang.l_secid, {"Viridia", "Bluefull", "Redria", "Whitill"},
        lang.l_stats .. "DEF + DEX = POW + MIND"
      )
      
    elseif MAG == "Savitri" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100, 110, 120, etc..",
        lang.l_class, {"Hunter"},
        lang.l_sex, {"Female"},
        
        "#:Condition 1",
        lang.l_secid, {"Viridia", "Bluefull", "Redria", "Whitill"},
        lang.l_stats .. "DEF + DEX = POW + MIND",
        
        "#:Condition 2",
        lang.l_secid, {"Greenill", "Purplenum", "Oran"},
        lang.l_stats .. "DEF + MIND = POW + DEX",
        
        "#:Condition 3",
        lang.l_secid, {"Skyly", "Pinkal", "Yellowboze"},
        lang.l_stats .. "DEF + POW = DEX + MIND"
      )
      
    elseif MAG == "Sega Saturn" then
      Parse("NoSpacing",
        lang.l_mag .. "Mark 3 or Master System or Genesis",
        lang.l_lvl .. "90",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Kit of Sega Saturn",
        lang.l_special .. "Character Lv90+. MAG Lv req fluctuates depending on character Lv."
      )
      
    elseif MAG == "Sita" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Force"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "DEF < 45 and DEX > MIND >= POW"
      )
      
    elseif MAG == "Soma" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Hunter"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "MIND > DEX > POW"
      )
      
    elseif MAG == "Soniti" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "100+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_cell .. "Cell of MAG 502"
      )
      
    elseif MAG == "Striker Unit" then
      Parse("NoSpacing",
        lang.l_mag .. "Garuda",
        lang.l_lvl, {"Any"},
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Heaven Striker Coat"
      )
      
    elseif MAG == "Sumba" then
      Parse("NoSpacing",
        lang.l_mag .. "Vritra",
        lang.l_lvl .. "35+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "POW > DEX and POW > MIND"
      )
      
    elseif MAG == "Surya" then
      Parse("NoSpacing",
        lang.l_mag .. "Kalki",
        lang.l_lvl .. "35+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "POW > DEX and POW > MIND"
      )
      
    elseif MAG == "Tapas" then
      Parse("NoSpacing",
        lang.l_mag .. "Kalki",
        lang.l_lvl .. "35+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "MIND > POW and MIND > DEX"
      )
      
    elseif MAG == "Tellusis" then
      Parse("NoSpacing",
        lang.l_mag .. "Kama",
        lang.l_lvl, {"Any"},
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Dragon Scale"
      )
      
    elseif MAG == "Ushasu" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Hunter"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "MIND > DEX > POW"
      )
      
    elseif MAG == "Varaha" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_sex, {"Any"},
        
        "#:Condition 1",
        lang.l_class, {"Hunter"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "POW >= DEX >= MIND or" .. lang.nl .. "DEX = MIND",
        
        "#:Condition 2",
        lang.l_class, {"Ranger"},
        lang.l_secid, {"Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze"},
        lang.l_stats .. "MIND > POW >= DEX",
        
        "#:Condition 3",
        lang.l_class, {"Ranger"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "DEX >= MIND >= POW or" .. lang.nl .. "POW = MIND"
      )
      
    elseif MAG == "Varuna" then
      Parse("NoSpacing",
        lang.l_mag .. "Unevolved Mag",
        lang.l_lvl .. "10+",
        lang.l_class, {"Hunter"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"}
      )
      
    elseif MAG == "Vayu" then
      Parse("NoSpacing",
        lang.l_mag .. "Varuna",
        lang.l_lvl .. "35+",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_stats .. "MIND > POW and MIND > DEX"
      )
      
    elseif MAG == "Vritra" then
      Parse("NoSpacing",
        lang.l_mag .. "Unevolved Mag",
        lang.l_lvl .. "10+",
        lang.l_class, {"Force"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"}
      )
      
    elseif MAG == "Yahoo!" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50",
        lang.l_class, {"Any"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Any"},
        lang.l_cell .. "Yahoo! Engine"
      )
      
    elseif MAG == "Yaksa" then
      Parse("NoSpacing",
        lang.l_mag .. "2nd or 3rd tier",
        lang.l_lvl .. "50, 55, 60, etc..",
        lang.l_class, {"Hunter"},
        lang.l_sex, {"Any"},
        lang.l_secid, {"Greenill", "Bluefull", "Pinkal", "Oran", "Whitill"},
        lang.l_stats .. "DEX > MIND >= POW"
      )
    end
    
    imgui.NewLine()
    imgui.TreePop()
  end
end

return {
  CreateSection = CreateSection
}