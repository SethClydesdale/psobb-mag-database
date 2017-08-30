-- list of filters to narrow down mags in the selection list
local mag_list = {
  ["MAGs"] = {
    "Mag",
    "Agastya",
    "Andhaka",
    "Angel's Wing",
    "Apsaras",
    "Ashvinau",
    "Bana",
    "Bhima",
    "Bhirava",
    "Chao",
    "Churel",
    "Chu Chu",
    "Deva",
    "Devil's Tail",
    "Devil's Wing",
    "Diwari",
    "Durga",
    "Dreamcast",
    "Garuda",
    "Gael Giel",
    "Genesis",
    "Geung Si",
    "Hamburger",
    "Ila",
    "Kabanda",
    "Kaitabha",
    "Kalki",
    "Kapu Kapu",
    "Kama",
    "Kumara",
    "Madhu",
    "Marica",
    "Mark 3",
    "Marutah",
    "Master System",
    "Mitra",
    "Moro",
    "Naga",
    "Namuci",
    "Nandin",
    "Naraka",
    "Nidra",
    "No-PB Elenor",
    "Opa Opa",
    "Panzer's Tail",
    "PB Elenor",
    "Pretra",
    "Pian",
    "Pioneer 2",
    "Pitri",
    "Pushan",
    "Puyo",
    "Rappy",
    "Rati",
    "Ravana",
    "Ribhava",
    "RoboChao",
    "Rudra",
    "Rukmin",
    "Sato",
    "Savitri",
    "Sega Saturn",
    "Sita",
    "Soma",
    "Soniti",
    "Striker Unit",
    "Sumba",
    "Surya",
    "Tapas",
    "Tellusis",
    "Ushasu",
    "Varaha",
    "Varuna",
    "Vayu",
    "Vritra",
    "Yahoo!",
    "Yaksa"
  },
  
  ["Tier 1"] = {
    "Varuna",
    "Kalki",
    "Vritra"
  },
  
  ["Tier 2"] = {
    "Ashvinau",
    "Marutah",
    "Mitra",
    "Namuci",
    "Rudra",
    "Sumba",
    "Surya",
    "Tapas",
    "Vayu"
  },
  
  ["Tier 3"] = {
    "Andhaka",
    "Apsaras",
    "Bana",
    "Bhirava",
    "Durga",
    "Garuda",
    "Ila",
    "Kabanda",
    "Kaitabha",
    "Kama",
    "Kumara",
    "Madhu",
    "Marica",
    "Naga",
    "Nandin",
    "Naraka",
    "Ravana",
    "Ribhava",
    "Sita",
    "Soma",
    "Ushasu",
    "Varaha",
    "Yaksa"
  },
  
  ["Tier 4"] = {
    "Bhima",
    "Deva",
    "Diwari",
    "Nidra",
    "Pushan",
    "Rati",
    "Rukmin",
    "Sato",
    "Savitri"
  },
  
  ["Mag Cell"] = {
    "Agastya",
    "Angel's Wing",
    "Chao",
    "Churel",
    "Chu Chu",
    "Devil's Tail",
    "Devil's Wing",
    "Dreamcast",
    "Gael Giel",
    "Genesis",
    "Geung Si",
    "Hamburger",
    "Kapu Kapu",
    "Mark 3",
    "Master System",
    "Moro",
    "No-PB Elenor",
    "Opa Opa",
    "Panzer's Tail",
    "PB Elenor",
    "Pian",
    "Pitri",
    "Pioneer 2",
    "Pretra",
    "Puyo",
    "Rappy",
    "RoboChao",
    "Sega Saturn",
    "Soniti",
    "Striker Unit",
    "Tellusis",
    "Yahoo!"
  },
  
  ["Hunter"] = {
    "Apsaras",
    "Bana",
    "Bhirava",
    "Deva",
    "Garuda",
    "Ila",
    "Kabanda",
    "Kama",
    "Marutah",
    "Nandin",
    "Rati",
    "Rudra",
    "Soma",
    "Savitri",
    "Ushasa",
    "Varaha",
    "Varuna",
    "Vayu",
    "Yaksa"
  },
  
  ["Ranger"] = {
    "Apsaras",
    "Bhirava",
    "Diwari",
    "Durga",
    "Kabanda",
    "Kalki",
    "Kaitabha",
    "Kama",
    "Madhu",
    "Mitra",
    "Pushan",
    "Rukmin",
    "Surya",
    "Tapas",
    "Varaha"
  },
  
  ["Force"] = {
    "Andhaka",
    "Ashvinau",
    "Bana",
    "Bhima",
    "Bhirava",
    "Garuda",
    "Ila",
    "Kabanda",
    "Kumara",
    "Marica",
    "Naga",
    "Namuci",
    "Naraka",
    "Nidra",
    "Ravana",
    "Ribhava",
    "Sato",
    "Sita",
    "Sumba",
    "Vritra"
  },
  
  ["Male"] = {
    "Deva",
    "Nidra",
    "Pushan",
    "Rati"
  },
  
  ["Female"] = {
    "Bhima",
    "Diwari",
    "Rukmin",
    "Sato",
    "Savitri"
  },
  
  ["Bluefull"] = {
    "Deva",
    "Rukmin",
    "Sato"
  },
  
  ["Greenill"] = {
    "Bhima",
    "Rati",
    "Rukmin"
  },
  
  ["Oran"] = {
    "Bhima",
    "Rati",
    "Rukmin"
  },
  
  ["Pinkal"] = {
    "Bhima",
    "Diwari",
    "Rati"
  },
  
  ["Purplenum"] = {
    "Bhima",
    "Rati",
    "Rukmin"
  },
  
  ["Redria"] = {
    "Deva",
    "Rukmin",
    "Sato"
  },
  
  ["Skyly"] = {
    "Bhima",
    "Diwari",
    "Rati"
  },
  
  ["Viridia"] = {
    "Deva",
    "Rukmin",
    "Sato"
  },
  
  ["Yellowboze"] = {
    "Bhima",
    "Diwari",
    "Rati"
  },
  
  ["Whitill"] = {
    "Deva",
    "Rukmin",
    "Sato"
  },
  
  ["PB Mylla & Youlla"] = {
    "Ila",
    "Kabanda",
    "Kaitabha",
    "Madhu",
    "Naga",
    "Namuci",
    "Tapas",
    "Vayu"
  },
  
  ["PB Golla"] = {
    "Kumara",
    "Naraka",
    "Rudra",
    "Sumba",
    "Surya",
    "Ushasu",
    "Varaha",
    "Yaksa"
  },
  
  ["PB Pilla"] = {
    "Ashvinau",
    "Bhirava",
    "Garuda",
    "Kama",
    "Marica",
    "Marutah",
    "Mitra",
    "Sita"
  },
  
  ["PB Estlla"] = {
    "Andhaka",
    "Apsaras",
    "Bana",
    "Durga",
    "Kalki",
    "Nandin",
    "Soma"
  },
  
  ["PB Leilla"] = {
    "Vritra"
  },
  
  ["PB Farlla"] = {
    "Ravana",
    "Ribhava",
    "Varuna"
  },
  
  ["AB Invulnerability"] = {
    "Andhaka",
    "Apsaras",
    "Ashvinau",
    "Bana",
    "Bhima",
    "Bhirava",
    "Durga",
    "Kabanda",
    "Kaitabha",
    "Kalki",
    "Madhu",
    "Marica",
    "Marutah",
    "Mitra",
    "Namuci",
    "Nandin",
    "Nidra",
    "Ravana",
    "Ribhava",
    "Rudra",
    "Sato",
    "Sita",
    "Soma",
    "Sumba",
    "Surya",
    "Tapas",
    "Ushasu",
    "Varaha",
    "Varuna",
    "Vayu",
    "Vritra",
    "Yaksa"
  },
  
  ["AB Shifta & Deband"] = {
    "Andhaka",
    "Ashvinau",
    "Bhima",
    "Bhirava",
    "Deva",
    "Diwari",
    "Ila",
    "Kabanda",
    "Kaitabha",
    "Kalki",
    "Kama",
    "Madhu",
    "Marica",
    "Mitra",
    "Naga",
    "Pushan",
    "Rati",
    "Ravana",
    "Rudra",
    "Rukmin",
    "Savitri",
    "Sita",
    "Sumba",
    "Surya",
    "Ushasu",
    "Varaha",
    "Varuna",
    "Yaksa"
  },
  
  ["AB Resta"] = {
    "Andhaka",
    "Bhirava",
    "Deva",
    "Diwari",
    "Garuda",
    "Ila",
    "Kaitabha",
    "Kumara",
    "Madhu",
    "Marica",
    "Marutah",
    "Namuci",
    "Naraka",
    "Pushan",
    "Rati",
    "Rudra",
    "Rukmin",
    "Savitri",
    "Sita",
    "Sumba",
    "Surya",
    "Tapas",
    "Ushasu",
    "Varaha",
    "Vayu",
    "Vritra",
    "Yaksa"
  },
  
  ["AB Reverser"] = {
    "Andhaka",
    "Apsaras",
    "Bana",
    "Bhima",
    "Bhirava",
    "Deva",
    "Diwari",
    "Durga",
    "Garuda",
    "Ila",
    "Kabanda",
    "Kaitabha",
    "Kama",
    "Kumara",
    "Madhu",
    "Marica",
    "Naga",
    "Nandin",
    "Naraka",
    "Nidra",
    "Pushan",
    "Rati",
    "Ravana",
    "Ribhava",
    "Rukmin",
    "Sato",
    "Savitri",
    "Sita",
    "Soma",
    "Ushasu",
    "Varaha",
    "Yaksa"
  }
}

-- apply mags to their respective section id
local even_id = { "Viridia", "Skyly", "Purplenum", "Redria", "Yellowboze" }
local even_mags = {
  "Andhaka",
  "Apsaras",
  "Bana",
  "Bhirava",
  "Churel",
  "Ila",
  "Kabanda",
  "Kama",
  "Naga",
  "Nandin",
  "Naraka",
  "Nidra",
  "Pushan",
  "Ribhava",
  "Ravana",
  "Savitri",
  "Sita",
  "Soniti",
  "Ushasu",
  "Varaha"
}

local odd_id = { "Greenill", "Bluefull", "Pinkal", "Oran", "Whitill" }
local odd_mags = {
  "Andhaka",
  "Apsaras",
  "Bana",
  "Bhirava",
  "Durga",
  "Garuda",
  "Ila",
  "Kabanda",
  "Kaitabha",
  "Kama",
  "Kumara",
  "Madhu",
  "Marica",
  "Naga",
  "Nidra",
  "Pitri",
  "Pretra",
  "Pushan",
  "Savitri",
  "Soma",
  "Varaha",
  "Yaksa"
}

-- apply even mags
for i = 1, #even_id do
  for j = 1, #even_mags do
    mag_list[even_id[i]][table.getn(mag_list[even_id[i]]) + 1] = even_mags[j]
  end
end

-- apply odd mags
for i = 1, #odd_id do
  for j = 1, #odd_mags do
    mag_list[odd_id[i]][table.getn(mag_list[odd_id[i]]) + 1] = odd_mags[j]
  end
end

-- return the mag list
return mag_list