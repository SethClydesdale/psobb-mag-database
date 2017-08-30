-- MAG information has been acquired from various sources such as..
-- https://www.pioneer2.net/
-- http://www.pso-world.com/
-- http://pso.wikia.com/wiki/
-- http://phantasystar.wikia.com/wiki/
-- huge thanks and credit goes to those who dedicated their time to gathering this information

-- imports
local core_mainmenu = require("core_mainmenu")
local lang = require("MAG Database.lang")
local mag_list = require("MAG Database.mag-list")
local mag_descriptions = require("MAG Database.descriptions")
local mag_abilities = require("MAG Database.abilities")
local mag_evolution = require("MAG Database.evolution")
local feeding_charts = require("MAG Database.feeding-charts")

-- window vars
local window_open = false
local button_func = function()
  window_open = not window_open
end

-- filters used to narrow down mags
local filter = mag_list.MAGs
local filter_list = {
  "All",
  "Search",
  "Tier 1",
  "Tier 2",
  "Tier 3",
  "Tier 4",
  "Mag Cell",
  "Hunter",
  "Ranger",
  "Force",
  "Male",
  "Female",
  "Bluefull",
  "Greenill",
  "Oran",
  "Pinkal",
  "Purplenum",
  "Redria",
  "Skyly",
  "Viridia",
  "Yellowboze",
  "Whitill",
  "PB Mylla & Youlla",
  "PB Golla",
  "PB Pilla",
  "PB Estlla",
  "PB Leilla",
  "PB Farlla",
  "AB Invulnerability",
  "AB Shifta & Deband",
  "AB Resta",
  "AB Reverser"
}

local cols = { "Item", "Synchro", "IQ", "DEF", "POW", "DEX", "MIND" } -- head titles for our table
local item_list = { "Monomate", "Dimate", "Trimate", "Monofluid", "Difluid", "Trifluid", "Antidote", "Antiparalysis", "Sol Atomizer", "Moon Atomizer", "Star Atomizer" } -- item names used to loop over the feeding charts


-- create an ASCII separator
local separator = "+" .. string.rep("-", 85) .. "+" 
local function Separator(noNewLine)
  if noNewLine == nil then
    imgui.NewLine()
  end
  
  imgui.TextColored(0.6, 0.6, 0.6, 1, separator)
end

-- create an ASCII column
local function NextColumn()
  imgui.SameLine(0, 0)
  imgui.TextColored(0.6, 0.6, 0.6, 1, "|")
  imgui.SameLine(0, 0)
end

-- add padding to each side of the string until it meets the specified length
local function Pad(str, len)
  local after = false
  local percent = false
  
  -- the escaped percent counts as two, so remove it and add a placeholder
  if string.find(str, "%%") then
    str = string.gsub(str, "%%", "") .. "?"
    percent = true
  end
  
  -- increase the string's length by adding whitespace until it satisfies the condition
  while string.len(str) < len do
    if after == true then
      str = str .. " "
      after = false
    else
      str = " " .. str
      after = true
    end
  end
  
  -- finally add the percent back, if it was removed
  if percent then
    str = string.gsub(str, "?", "%%%%")
  end
  
  return str
end

-- color the specified keywords
local function ColorKeyword(...) 
  local args = {...}
  local max = table.getn(args)
  local keyword
  local color
  
  -- if a table is the first argument use that instead
  if type(args[1]) == "table" then
    args = args[1]
    max = table.getn(args)
  end
  
  -- loop over the keywords and color them
  for i = 1, #args do
    keyword = string.lower(args[i])
    
    -- find the keyword's color
    if keyword == "hunter" then
      color = { 0.93, 0.2, 0.06 }
    elseif keyword == "ranger" then
      color = { 0.3, 0.7, 0.3 }
    elseif keyword == "force" then
      color = { 0.3, 0.6, 1 }
    elseif keyword == "male" then
      color = { 0.3, 1, 1 } 
    elseif keyword == "female" then
      color = { 1, 0.6, 1 } 
    elseif keyword == "viridia" then
      color = { 0, 0.70, 0 }
    elseif keyword == "greenill" then
      color = { 0.50, 1, 0 }
    elseif keyword == "skyly" then
      color = { 0.30, 255, 255 }
    elseif keyword == "bluefull" then
      color = { 0, 0.50, 1 }
    elseif keyword == "purplenum" then
      color = { 0.65, 0.30, 1 }
    elseif keyword == "pinkal" then
      color = { 1, 0.6, 1 }
    elseif keyword == "redria" then
      color = { 1, 0, 0 }
    elseif keyword == "oran" then
      color = { 1, 0.65, 0.30 }
    elseif keyword == "yellowboze" then
      color = { 1, 1, 0 }
    elseif keyword == "whitill" then
      color = { 0.7, 0.7, 0.7 }
    elseif keyword == "any" then
      color = { 0, 1, 0 }
    elseif keyword == "tier 0" then
      color = { 0.7, 0.7, 0.7 }
    elseif keyword == "tier 1" then
      color = { 0.3, 0.9, 0.3 }
    elseif keyword == "tier 2" then
      color = { 0.3, 0.7, 0.9 }
    elseif keyword == "tier 3" then
      color = { 0.7, 0.5, 0.9 }
    elseif keyword == "tier 4" then
      color = { 1, 0.8, 0 }
    elseif keyword == "mag cell" then
      color = { 1, 1, 0 }
    end

    -- write the keyword on the same line
    imgui.SameLine(0, 0)
    if color ~= nil then
      imgui.TextColored(color[1], color[2], color[3], 1, args[i])
    else
      imgui.Text(args[i])
    end
    
    -- add a comma to separate multiple keywords
    if i ~= max then
      imgui.SameLine(0, 0)
      imgui.Text(", ")
    end
  end
end

-- insert title/large text for a new section
local function Title(str, size)
  imgui.NewLine()
  imgui.SetWindowFontScale(size ~= nil and size or 1.4)
  imgui.Text(string.gsub(str, "^#:", ""))
  imgui.SetWindowFontScale(1)
end

-- parses chains of text into readable paragraphs with spacing
-- pass "NoSpacing" as the first argument to chain strings without spacing
-- color keywords by placing them in a table : {"Pinkal", "Skyly", ...}
-- insert a title by prefixing the string with "#:" like so : "#:Title"
local function Parse(...)
  local args = {...}
  local noSpacing = args[1] == "NoSpacing"
  
  for i = noSpacing and 2 or 1, #args do
    if type(args[i]) == "table" then
      ColorKeyword(args[i])
      
    elseif string.find(args[i], "^#:") then
      Title(args[i])
      
    else
      imgui.Text(args[i])
    end
    
    if noSpacing == false then
      imgui.Spacing()
    end
  end
end


-- show data on the specified MAG
local function GetMAG(MAG)
  local chart_id = 1
  local tier = 0
  local mag_cell = MAG == "Churel" or MAG == "Pretra" or MAG == "Pitri" or MAG == "Soniti" or MAG == "Chu Chu" or MAG == "Opa Opa" or MAG == "Kapu Kapu" or MAG == "Chao" or MAG == "RoboChao" or MAG == "Pian" or MAG == "Panzer's Tail" or MAG == "Devil's Wing" or MAG == "Devil's Tail" or MAG == "Hamburger" or MAG == "Mark 3" or MAG == "Master System" or MAG == "Genesis" or MAG == "Sega Saturn" or MAG == "Dreamcast" or MAG == "Angel's Wing" or MAG == "Yahoo!" or MAG == "Rappy" or MAG == "Striker Unit" or MAG == "Agastya" or MAG == "Gael Giel" or MAG == "Geung Si" or MAG == "Moro" or MAG == "Pioneer 2" or MAG == "Puyo" or MAG == "Tellusis" or MAG == "PB Elenor" or MAG == "No-PB Elenor"
  local color
  
  -- determine what chart to display
  if MAG == "Mag" then
    chart_id = 1
  elseif MAG == "Varuna" or MAG == "Kalki" or MAG == "Vritra" then
    chart_id = 2
  elseif MAG == "Ashvinau" or MAG == "Marutah" or MAG == "Namuci" or MAG == "Rudra" or MAG == "Sumba" then
    chart_id = 3
  elseif MAG == "Mitra" or MAG == "Surya" or MAG == "Tapas" then
    chart_id = 4
  elseif MAG == "Apsaras" or MAG == "Bhirava" or MAG == "Kaitabha" or MAG == "Kama" or MAG == "Kumara" or MAG == "Ushasu" or MAG == "Varaha" or MAG == "Vayu" then
    chart_id = 5
  elseif MAG == "Andhaka" or MAG == "Bana" or MAG == "Bhima" or MAG == "Kabanda" or MAG == "Madhu" or MAG == "Marica" or MAG == "Naga" or MAG == "Naraka" or MAG == "Pushan" or MAG == "Rati" or MAG == "Ravana" then
    chart_id = 6
  elseif MAG == "Deva" or MAG == "Durga" or MAG == "Garuda" or MAG == "Ila" or MAG == "Nandin" or MAG == "Ribhava" or MAG == "Rukmin" or MAG == "Sato" or MAG == "Sita" or MAG == "Soma" or MAG == "Yaksa" then
    chart_id = 7
  elseif MAG == "Diwari" or MAG == "Nidra" or MAG == "Savitri" or mag_cell then
    chart_id = 8
  end
  
  -- determine the MAG tier
  if MAG == "Varuna" or MAG == "Kalki" or MAG == "Vritra" then
    tier = 1
  elseif MAG == "Rudra" or MAG == "Marutah" or MAG == "Vayu" or MAG == "Surya" or MAG == "Mitra" or MAG == "Tapas" or MAG == "Sumba" or MAG == "Ashvinau" or MAG == "Namuci" then
    tier = 2
  elseif MAG == "Andhaka" or MAG == "Apsaras" or MAG == "Bana" or MAG == "Bhirava" or MAG == "Durga" or MAG == "Garuda" or MAG == "Ila" or MAG == "Kabanda" or MAG == "Kaitabha" or MAG == "Kama" or MAG == "Kumara" or MAG == "Madhu" or MAG == "Marica" or MAG == "Naga" or MAG == "Nandin" or MAG == "Naraka" or MAG == "Ravana" or MAG == "Ribhava" or MAG == "Sita" or MAG == "Soma" or MAG == "Ushasu" or MAG == "Varaha" or MAG == "Yaksa" then
    tier = 3
  elseif MAG == "Bhima" or MAG == "Deva" or MAG == "Diwari" or MAG == "Nidra" or MAG == "Pushan" or MAG == "Rati" or MAG == "Rukmin" or MAG == "Sato" or MAG == "Savitri" then
    tier = 4
  elseif mag_cell then
    tier = 5
  end
  
  -- title
  imgui.SetWindowFontScale(1.6)
  imgui.TextColored(0, 1, 1, 1, MAG)
  imgui.SameLine(0, 0)
  imgui.Text(" - ")
  ColorKeyword(tier < 5 and ("Tier " .. tier) or "Mag Cell")
  imgui.SetWindowFontScale(1)
  imgui.Spacing()
  imgui.BeginChild("scrolling", 0, 0, false, {"HorizontalScrollbar"})
  
  -- create the description, ability, and evolution sections
  mag_descriptions.CreateSection(MAG, Parse, lang)
  mag_abilities.CreateSection(MAG, Parse, lang)
  mag_evolution.CreateSection(MAG, Parse, lang)
  
  -- setup and create the table for the feeding chart
  if imgui.TreeNodeEx("Feeding Chart", {"DefaultOpen", "Framed"}) then
    Separator(true)
    imgui.NewLine()
    NextColumn()
    --imgui.Columns(7)
    -- Columns seems to be VERY heavy (at least on my PC).
    -- I decided to opt for a ASCII table instead, at least until imgui improves performance.
    
    -- table head items
    for i = 1, #cols do
      imgui.Text(Pad(cols[i], i == 1 and 15 or 11))
      NextColumn()
    end

    Separator()

    -- build the feeding chart
    for i = 1, #item_list do
      imgui.NewLine()
      NextColumn()
      imgui.Text(Pad(item_list[i], 15))
      NextColumn()

      for j = 1, #feeding_charts[item_list[i]][chart_id] do
        -- colors the numbers if the item increases or decreases the MAGs stats
        if string.find(feeding_charts[item_list[i]][chart_id][j], "+") then
          color = {0, 1, 0} -- green : increase
        elseif string.find(feeding_charts[item_list[i]][chart_id][j], "-") then
          color = {1, 0, 0} -- red : decrease
        else
          color = {1, 1, 0} -- yellow : no change
        end

        imgui.TextColored(color[1], color[2], color[3], 1, Pad(feeding_charts[item_list[i]][chart_id][j], 11))
        NextColumn()
      end

      Separator()
    end
    
    imgui.TreePop()
  end
  imgui.EndChild()
end


-- draw the MAG drop down and data
local filterChanged = true
local selectedFilter = 1
local magChanged = true
local selectedMAG = 1
local searchChanged = true
local searchString = ""
local removeChars = { "%", "[", "]", "(", ")" }
local drawMAGDB = function()
  
  imgui.PushItemWidth(160)
  filterChanged, selectedFilter = imgui.Combo("Filter", selectedFilter, filter_list, table.getn(filter_list))
  imgui.PopItemWidth()
  
  -- change the MAG list to reflect the selected filter
  if filter_list[selectedFilter] == "All" then
    filter = mag_list.MAGs
    
  -- insert a search bar so the user can search for mags
  elseif filter_list[selectedFilter] == "Search" then
    imgui.SameLine(0, 10)
    imgui.PushItemWidth(130)
    searchChanged, searchString = imgui.InputText("Search", searchString, 50)
    
    -- empty the filter to insert matches
    filter = {}
    
    -- cleanup the search string to remove special characters
    for i = 1, #removeChars do
      searchString = string.gsub(string.lower(searchString), "%" .. removeChars[i], "")
    end
    
    -- loop over the mag list to see if the string matches any mags
    for i = 1, #mag_list.MAGs do
      if string.find(string.lower(mag_list.MAGs[i]), searchString) then
        filter[table.getn(filter) + 1] = mag_list.MAGs[i]
      end
    end

    -- show the default mag if no matches are found
    if filter[1] == nil then
      filter = {"Mag"}
    end
    
    -- reset index when search input changes
    if searchChanged then
      selectedMAG = 1
    end
    
  -- applies a standard filter based on the selection text
  else
    filter = mag_list[filter_list[selectedFilter]]
  end
  
  -- reset the selected mag
  if filterChanged then
    selectedMAG = 1
  end
  
  imgui.SameLine(0, 10)
  imgui.PushItemWidth(130)
  magChanged, selectedMAG = imgui.Combo("Select a MAG (" .. table.getn(filter) .. ")", selectedMAG, filter, table.getn(filter))
  imgui.PopItemWidth()
  
  -- show data for the selected MAG
  GetMAG(filter[selectedMAG])
end

-- show the MAG DB when opened
local function present()
  if window_open then
    local status
    imgui.SetNextWindowSize(700, 520, "FirstUseEver");
    status, window_open = imgui.Begin("MAG Database", window_open)
    drawMAGDB()
    imgui.End()
  end
end


local function init()
  core_mainmenu.add_button("MAG Database", button_func)
  
  return {
    name = "MAG Database",
    version = "1.0.6",
    author = "Seth Clydesdale",
    description = "A database full of information on MAGs.",
    present = present
  }
end

return {
  __addon = {
    init = init
  }
}
