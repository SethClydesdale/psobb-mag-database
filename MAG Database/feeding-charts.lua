-- feeding charts for all mags
return {
  ["Monomate"] = {
    { "+3%%", "+3", "+5%%", "+40%%", "+5%%", "0%%" }, -- Mag
    { "0%%", "0", "+5%%", "+10%%", "0%%", "-1%%" }, -- Varuna, Kalki and Vritra
    { "0%%","-1","+1%%","+9%%","0%%","-5%%"}, -- Ashvinau, Marutah, Namuci, Rudra and Sumba
    { "0%%","-1","0%%","+3%%","0%%","0%%"}, -- Mitra, Surya and Tapas
    { "+2%%","-1","-5%%","+9%%","-5%%","0%%"}, -- Apsaras, Bhirava, Kaitabha, Kama, Kumara, Ushasu, Varaha and Vayu
    { "-1%%","+1","-3%%","+9%%","-3%%","-4%%"}, -- Andhaka, Bana, Bhima, Kabanda, Madhu, Marica, Naga, Naraka, Pushan, Rati and Ravana
    { "+2%%","-1","-4%%","+13%%","-5%%","-5%%"}, -- Deva, Durga, Garuda, Ila, Nandin, Ribhava, Rukmin, Sato, Sita, Soma and Yaksa
    { "-1%%","0","-4%%","+21%%","-15%%","-5%%"} -- Diwari, Nidra, Savitri, Mag Cells
  },
  
  ["Dimate"] = {
    { "+3%%", "+3", "+10%%", "+45%%", "+5%%", "0%%" },
    { "+2%%", "+1", "+6%%", "+15%%", "+3%%", "-3%%" },
    { "+3%%","0","+1%%","+13%%","0%%","-10%%"},
    { "+2%%","0","+5%%","+7%%","0%%","-5%%"},
    { "+2%%","0","0%%","+11%%","0%%","-10%%"},
    { "+2%%","0","0%%","+11%%","0%%","-10%%"},
    { "0%%","+1","0%%","+16%%","0%%","-15%%"},
    { "0%%","+1","-1%%","+27%%","-10%%","-16%%"}
  },
  
  ["Trimate"] = {
    { "+4%%", "+4", "+15%%", "+50%%", "+10%%", "0%%" },
    { "+3%%", "+2", "+12%%", "+21%%", "+4%%", "-7%%" },
    { "+4%%","+1","+8%%","+16%%","+2%%","-15%%"},
    { "+3%%","+1","+4%%","+14%%","+6%%","-10%%"},
    { "0%%","+1","+4%%","+14%%","0%%","-15%%"},
    { "+2%%","0","+2%%","+15%%","0%%","-16%%"},
    { "+2%%","0","+3%%","+19%%","-2%%","-18%%"},
    { "+2%%","0","+5%%","+29%%","-7%%","-25%%"}
  },

  ["Monofluid"] = {
    { "+3%%", "+3", "+5%%", "0%%", "+5%%", "+40%%" },
    { "0%%", "0", "+5%%", "0%%", "0%%", "+8%%" },
    { "0%%","-1","0%%","-5%%","0%%","+9%%"},
    { "0%%","0","0%%","0%%","0%%","+4%%"},
    { "+2%%","-1","-5%%","0%%","-6%%","+10%%"},
    { "-1%%","+1","-3%%","-4%%","-3%%","+9%%"},
    { "+2%%","-1","-4%%","-5%%","-5%%","+13%%"},
    { "-1%%","0","-10%%","-5%%","-10%%","+21%%"}
  },

  ["Difluid"] = {
    { "+3%%", "+3", "+10%%", "0%%", "+5%%", "+45%%" },
    { "+2%%", "+1", "+7%%", "0%%", "+3%%", "+13%%" },
    { "+3%%","0","+4%%","-10%%","0%%","+13%%"},
    { "0%%","+1","+4%%","-5%%","0%%","+8%%"},
    { "+2%%","0","0%%","-10%%","0%%","+11%%"},
    { "+2%%","0","0%%","-10%%","0%%","+11%%"},
    { "0%%","+1","0%%","-15%%","0%%","+16%%"},
    { "0%%","+1","-5%%","-16%%","-5%%","+25%%"}
  },

  ["Trifluid"] = {
    { "+4%%", "+4", "+15%%", "0%%", "+10%%", "+50%%" },
    { "+3%%", "+2", "+7%%", "-7%%", "+6%%", "+19%%" },
    { "+3%%","+2","+6%%","-15%%","+5%%","+17%%"},
    { "+2%%","+2","+4%%","-10%%","+3%%","+15%%"},
    { "0%%","+1","+4%%","-15%%","0%%","+15%%"},
    { "+2%%","0","-2%%","-15%%","0%%","+19%%"},
    { "+2%%","0","+3%%","-20%%","0%%","+19%%"},
    { "+2%%","0","-7%%","-25%%","+6%%","+29%%"}
  },

  ["Antidote"] = {
    { "+3%%", "+3", "+5%%", "+10%%", "+40%%", "0%%" },
    { "0%%", "+1", "0%%", "+5%%", "+15%%", "0%%" },
    { "-1%%","+1","-5%%","+4%%","+12%%","-5%%"},
    { "-3%%","+3","0%%","0%%","+7%%","0%%"},
    { "+2%%","-1","-5%%","-5%%","+16%%","-5%%"},
    { "+2%%","-1","0%%","+6%%","+9%%","-15%%"},
    { "0%%","+1","+5%%","-6%%","+6%%","-5%%"},
    { "-1%%","+1","-10%%","-10%%","+28%%","-10%%"}
  },

  ["Antiparalysis"] = {
    { "+3%%", "+3", "+5%%", "0%%", "+44%%", "+10%%" },
    { "+2%%", "0", "-1%%", "0%%", "+14%%", "+5%%" },
    { "0%%","0","-5%%","-6%%","+11%%","+4%%"},
    { "+3%%","0","-4%%","-5%%","+20%%","-5%%"},
    { "-2%%","+3","+7%%","-3%%","0%%","-3%%"},
    { "-2%%","+3","0%%","-15%%","+9%%","+6%%"},
    { "-1%%","+1","0%%","-4%%","+14%%","-10%%"},
    { "+2%%","-1","+9%%","-18%%","+24%%","-15%%"}
  },

  ["Sol Atomizer"] = {
    { "+4%%", "+1", "+15%%", "+30%%", "+15%%", "+25%%" },
    { "-2%%", "+2", "+10%%", "+11%%", "+8%%", "0%%" },
    { "+4%%","-2","0%%","+11%%","+3%%","-5%%"},
    { "+3%%","-2","-10%%","+9%%","+6%%","+9%%"},
    { "+4%%","-2","+5%%","+21%%","-5%%","-20%%"},
    { "+3%%","-1","+9%%","-20%%","-5%%","+17%%"},
    { "+4%%","-1","+4%%","+17%%","-5%%","-15%%"},
    { "+2%%","+1","+19%%","+18%%","-15%%","-20%%"}
  },

  ["Moon Atomizer"] = {
    { "+4%%", "+1", "+15%%", "+25%%", "+15%%", "+30%%" },
    { "+3%%", "-2", "+9%%", "0%%", "+9%%", "+11%%" },
    { "-1%%","+1","+4%%","-5%%","0%%","+11%%"},
    { "-2%%","+2","+8%%","+5%%","-8%%","+7%%"},
    { "+3%%","0","-5%%","-20%%","+5%%","+21%%"},
    { "0%%","+2","-5%%","+20%%","+5%%","-20%%"},
    { "+2%%","0","-10%%","-15%%","+5%%","+21%%"},
    { "+2%%","+1","-15%%","-20%%","+19%%","+18%%"}
  },

  ["Star Atomizer"] = {
    { "+6%%", "+5", "+25%%", "+25%%", "+25%%", "+25%%" },
    { "+4%%", "+3", "+14%%", "+9%%", "+18%%", "+11%%" },
    { "+4%%","+2","+7%%","+8%%","+6%%","+9%%"},
    { "+3%%","+2","+7%%","+7%%","+7%%","+7%%"},
    { "+3%%","+2","+4%%","+6%%","+8%%","+5%%"},
    { "+3%%","+2","0%%","+11%%","0%%","+11%%"},
    { "+3%%","+2","+2%%","+8%%","+3%%","+6%%"},
    { "+4%%","+2","+3%%","+7%%","+3%%","+3%%"}
  }
}