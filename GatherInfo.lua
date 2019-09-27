local isClassicWow = select(4,GetBuildInfo()) < 20000
if not isClassicWow then return end

local AddOnName, AddOn = ...
local L = AddOn.Locale
AddOn.version = GetAddOnMetadata(AddOnName, "Version");

local _G = _G
local gsub = string.gsub
local strlower = string.lower
local strfind = string.find
local strformat = string.format
local strsub = string.sub
local strsplit = string.split
local strmatch = string.match
local strtrim = string.trim
local strformat = string.format
local strlen = string.len

local initdone = nil;
local character = "";
local realmName = "";

-- Main Profession localisations
local sMining = GetSpellInfo(2575)
local sSkinning = GetSpellInfo(8613)
local sHerbalism = GetSpellInfo(13614)
local sSkinable = UNIT_SKINNABLE_LEATHER
local sMineable = UNIT_SKINNABLE_ROCK
local sHerbable = UNIT_SKINNABLE_HERB

AddOn.DifficultyColors = {
  ["impossible"]    = { r = 1.00, g = 0.10, b = 0.10, a = 1.00 };
  ["verydifficult"] = { r = 1.00, g = 0.50, b = 0.25, a = 1.00 };
  ["difficult"]   = { r = 1.00, g = 1.00, b = 0.00, a = 1.00 };
  ["standard"]    = { r = 0.25, g = 0.75, b = 0.25, a = 1.00 };
  ["trivial"]     = { r = 0.50, g = 0.50, b = 0.50, a = 1.00 };
};

local function GatherInfo_Print(text)
  if (text) then DEFAULT_CHAT_FRAME:AddMessage("|cff5e9ae4GatherInfo"..FONT_COLOR_CODE_CLOSE..": "..text); end
end

local function trim(text)
	return strtrim(text):gsub(("|T(.*)|t "), ""):gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
end

function AddOn.UpdateSkills()
  local numSkills = GetNumSkillLines();
  local myCraftSkills = {};

  for i = 1, numSkills, 1 do
    local skillName, header, _, skillRank = GetSkillLineInfo(i);
    if ( not header and skillName ) then
      myCraftSkills[skillName] = skillRank;
    end

  end

  if (myCraftSkills[sMining]) then
    for mineType in pairs(AddOn.Mine) do
      if (AddOn.Mine[mineType]["baseskill"] == myCraftSkills[sMining]) then
        if (GatherInfoDB[realmName][character][sMining] < myCraftSkills[sMining]) then -- Only do it once per skill level shift
          GatherInfo_Print(L["You can now mine "]..mineType..".");
        end
      end
    end
    for mineType in pairs(AddOn.Ore) do
      if (AddOn.Ore[mineType]["baseskill"] == myCraftSkills[sMining]) then
        if (GatherInfoDB[realmName][character][sMining] < myCraftSkills[sMining]) then -- Only do it once per skill level shift
          GatherInfo_Print(L["You can now pick "]..mineType..".");
        end
      end
    end
    GatherInfoDB[realmName][character][sMining] = myCraftSkills[sMining];
  end
  if (myCraftSkills[sHerbalism]) then
    for herbType in pairs(AddOn.Herb) do
      if (AddOn.Herb[herbType]["baseskill"] == myCraftSkills[sHerbalism]) then
        if (GatherInfoDB[realmName][character][sHerbalism] < myCraftSkills[sHerbalism]) then -- Only do it once per skill level shift
          GatherInfo_Print(L["You can now pick "]..herbType..".");
        end
      end
    end
    GatherInfoDB[realmName][character][sHerbalism] = myCraftSkills[sHerbalism];
  end
end

function AddOn.GetLevel(skilltype)
  if (skilltype=="mining" or skilltype=="herbing" or skilltype=="skinning") then
    local numskills = GetNumSkillLines();
    for i=1,numskills do
      local skillname, _, _, skillrank = GetSkillLineInfo(i);
      if (skillname == sMining and skilltype=="mining") then
        return skillrank;
      elseif (skillname == sHerbalism and skilltype=="herbing") then
        return skillrank;
      elseif (skillname == sSkinning and skilltype=="skinning") then
        return skillrank;
      end
    end
    return 0;  -- Return 0 if no mining skill was found
  else
    return 0;
  end
end

function AddOn.ProcessTooltip(tooltip)
  if (not tooltip) then return end
  local ttLine1Text = ""
  local ttLine2Text = ""
  local ttLine1 = _G[tooltip:GetName().."TextLeft1"]
  local ttLine2 = _G[tooltip:GetName().."TextLeft2"]
  if ttLine1 and ttLine1:GetText() then ttLine1Text = trim(ttLine1:GetText()) end
  if ttLine2 and ttLine2:GetText() then ttLine2Text = trim(ttLine2:GetText()) end	
	if (not ttLine1) and (ttLine1Text == "") then return end

  local color = AddOn.DifficultyColors["impossible"]
	
	--Skinning
	if tooltip:NumLines() then
    for i=1, tooltip:NumLines() do
      local ttLine = _G[tooltip:GetName().."TextLeft"..i]
			local ttLineText = ""
			if ttLine and ttLine:GetText() then ttLineText = trim(ttLine:GetText()) end
      if ( (ttLine) and ttLineText and (ttLineText ~= "") and (strfind(ttLineText, UNIT_SKINNABLE_LEATHER)) ) then
        local lvl = tonumber(UnitLevel("mouseover"));
        if (not lvl) or (lvl and lvl == 0) then return end
        local levelreq = 0;
        if (lvl-10)*10 >= 100 then
          levelreq = lvl*5;
        else
          if (lvl-10)*10 > 0 then levelreq = (lvl-10)*10 else levelreq = 1 end;
        end
        ttLine:SetText(UNIT_SKINNABLE_LEATHER.." ("..(levelreq)..")");
				tooltip:Show()
        return
      end
    end
  end	
	
	-- Mining
	for dbItem, dbItemData in pairs(AddOn.Mine) do
    if strfind(ttLine1Text, dbItem) then
      local levelreq, lvlmedium, lvleasy, lvltrivial;
      if(AddOn.Mine[dbItem]["baseskill"] == 0) then
        levelreq = "?";
        lvlmedium = 999;
        lvleasy = 999;
        lvltrivial = 999;
      else
        levelreq = AddOn.Mine[dbItem]["baseskill"];
        lvlmedium = AddOn.Mine[dbItem]["medium"];
        lvleasy = AddOn.Mine[dbItem]["easy"];
        lvltrivial = AddOn.Mine[dbItem]["trivial"];
      end

      local myskilllevel = AddOn.GetLevel("mining");
      local reqmsg = "("..levelreq..")";
      local ttNewText = UNIT_SKINNABLE_ROCK.." "..reqmsg;

      if tooltip:GetOwner() and tooltip:GetOwner():GetName() == "Minimap" then
        for j=1, tooltip:NumLines() do
          local ttLine = _G[tooltip:GetName().."TextLeft"..j]
					local ttLineText = ttLine:GetText()
          local ttItem = trim(ttLine:GetText())
          if strfind(ttItem, dbItem) and (not strfind(ttItem, reqmsg)) then
            if myskilllevel >= lvltrivial then
              color = AddOn.DifficultyColors["trivial"]
              ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
            elseif (myskilllevel >= lvleasy) and (myskilllevel < lvltrivial) then
              color = AddOn.DifficultyColors["standard"]
              ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
            elseif (myskilllevel >= lvlmedium) and (myskilllevel < lvleasy) then
              color = AddOn.DifficultyColors["difficult"]
              ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
            elseif (myskilllevel >= levelreq) and (myskilllevel < lvlmedium) then
              color = AddOn.DifficultyColors["verydifficult"]
              ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
            else
              color = AddOn.DifficultyColors["impossible"]
              ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
            end
          end
        end
      else
        if tooltip:NumLines() then
          for i=1, tooltip:NumLines() do
            local ttLine = _G[tooltip:GetName().."TextLeft"..i]
            if ( ( ttLine ) and ( ttLine:GetText() ) and ( strtrim( ttLine:GetText() ) ~= "" ) and ( ( strfind( strtrim( ttLine:GetText() ), sMining) ) or ( strfind(strtrim(ttLine:GetText() ), sMineable) ) ) ) then
              if ( not string.find( strtrim( ttLine:GetText() ), strtrim( reqmsg ) ) ) then
                ttLine:SetText(ttNewText);
              end
            end
          end
        end
      end
			tooltip:Show()
			return
    end
  end
	
	-- Herbalism
	for dbItem, dbItemData in pairs(AddOn.Herb) do
    if strfind(ttLine1Text, dbItem) then
      local levelreq, lvlmedium, lvleasy, lvltrivial;
      if(AddOn.Herb[dbItem]["baseskill"] == 0) then
        levelreq = "?";
        lvlmedium = 999;
        lvleasy = 999;
        lvltrivial = 999;
      else
        levelreq = AddOn.Herb[dbItem]["baseskill"];
        lvlmedium = AddOn.Herb[dbItem]["medium"];
        lvleasy = AddOn.Herb[dbItem]["easy"];
        lvltrivial = AddOn.Herb[dbItem]["trivial"];
      end

      local myskilllevel = AddOn.GetLevel("mining");
      local reqmsg = "("..levelreq..")";
      local ttNewText = UNIT_SKINNABLE_HERB.." "..reqmsg;

     if tooltip:GetOwner() and tooltip:GetOwner():GetName() == "Minimap" then
        for j=1, tooltip:NumLines() do
          local ttLine = _G[tooltip:GetName().."TextLeft"..j]
					local ttLineText = ttLine:GetText()
          local ttItem = trim(ttLine:GetText())
          if strfind(ttItem, dbItem) and (not strfind(ttItem, reqmsg)) then
            if myskilllevel >= lvltrivial then
              color = AddOn.DifficultyColors["trivial"]
              ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
            elseif (myskilllevel >= lvleasy) and (myskilllevel < lvltrivial) then
              color = AddOn.DifficultyColors["standard"]
              ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
            elseif (myskilllevel >= lvlmedium) and (myskilllevel < lvleasy) then
              color = AddOn.DifficultyColors["difficult"]
              ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
            elseif (myskilllevel >= levelreq) and (myskilllevel < lvlmedium) then
              color = AddOn.DifficultyColors["verydifficult"]
              ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
            else
              color = AddOn.DifficultyColors["impossible"]
              ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
            end
          end
        end
      else
        if tooltip:NumLines() then
          for i=1, tooltip:NumLines() do
            local ttLine = _G[tooltip:GetName().."TextLeft"..i]
            if ( ( ttLine ) and ( ttLine:GetText() ) and ( strtrim( ttLine:GetText() ) ~= "" ) and ( ( strfind( strtrim( ttLine:GetText() ), sHerbalism) ) or ( strfind(strtrim(ttLine:GetText() ), sHerbable) ) ) ) then
              if ( not string.find( strtrim( ttLine:GetText() ), strtrim( reqmsg ) ) ) then
                ttLine:SetText(ttNewText);
              end
            end
          end
        end
      end
			tooltip:Show()
			return
    end
  end
	
	-- Ores (Inventory)
	for dbItem, dbItemData in pairs(AddOn.Ore) do
    if strfind(ttLine1Text, dbItem) then
			for j=1, tooltip:NumLines() do
				local ttLine = _G[tooltip:GetName().."TextLeft"..j]
				local ttLineText = ttLine:GetText()
				local ttItem = trim(ttLine:GetText())
			
				local levelreq, lvlmedium, lvleasy, lvltrivial;
				if(AddOn.Ore[dbItem]["baseskill"] == 0) then
					levelreq = "?";
					lvlmedium = 999;
					lvleasy = 999;
					lvltrivial = 999;
				else
					levelreq = AddOn.Ore[dbItem]["baseskill"];
					lvlmedium = AddOn.Ore[dbItem]["medium"];
					lvleasy = AddOn.Ore[dbItem]["easy"];
					lvltrivial = AddOn.Ore[dbItem]["trivial"];
				end

				local myskilllevel = AddOn.GetLevel("mining");
				local reqmsg = "("..levelreq..")";
				local ttNewText = L["Requires "]..sMining..reqmsg..L[" to smelt."]
				
				if strfind(ttItem, dbItem) and (not strfind(ttItem, reqmsg)) then
					if myskilllevel >= lvltrivial then
						color = AddOn.DifficultyColors["trivial"]
						ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
					elseif (myskilllevel >= lvleasy) and (myskilllevel < lvltrivial) then
						color = AddOn.DifficultyColors["standard"]
						ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
					elseif (myskilllevel >= lvlmedium) and (myskilllevel < lvleasy) then
						color = AddOn.DifficultyColors["difficult"]
						ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
					elseif (myskilllevel >= levelreq) and (myskilllevel < lvlmedium) then
						color = AddOn.DifficultyColors["verydifficult"]
						ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
					else
						color = AddOn.DifficultyColors["impossible"]
						ttLine:SetText(ttLineText:gsub(dbItem, dbItem..format("\n|cff%.2x%.2x%.2x%s|r", color.r*255, color.g*255, color.b*255, ttNewText)))
					end
				end
			end
			tooltip:Show()
			return
    end
  end

end

function AddOn.HookTooltipMethods()
  for _, tooltip in ipairs(AddOn.TooltipList) do
    if tooltip then
      tooltip:HookScript("OnShow", AddOn.ProcessTooltip)
      tooltip:HookScript("OnUpdate", AddOn.ProcessTooltip)
      tooltip:HookScript("OnTooltipSetItem", AddOn.ProcessTooltip)
      tooltip:HookScript("OnTooltipSetUnit", AddOn.ProcessTooltip)
    end
  end
end

-- Register Events
function AddOn.OnEvent(self, event, arg1, arg2)
  if (event == "ADDON_LOADED") then
    AddOn.HookTooltipMethods()
		if not IsAddOnLoaded('Blizzard_DebugTools') then UIParentLoadAddOn('Blizzard_DebugTools') end
		
  elseif (event == "VARIABLES_LOADED") then
    character = UnitName("player");
    realmName = GetRealmName();
    if (not GatherInfoDB) then
      GatherInfoDB = {};
    end
    if (not GatherInfoDB[realmName]) then
      GatherInfoDB[realmName] = {};
    end
    if (not GatherInfoDB[realmName][character]) then
      GatherInfoDB[realmName][character] = {
        [sMining] = 0,
        [sHerbalism] = 0,
        [sSkinning] = 0
      };
    end
    initDone = true;
  elseif (event == "CHAT_MSG_SKILL") then
    if ( initDone ) then
      AddOn.UpdateSkills();
    end
  end
end

AddOn.frame = CreateFrame("Frame", "GatherInfoFrame");
AddOn.frame:RegisterEvent("ADDON_LOADED");
AddOn.frame:RegisterEvent("VARIABLES_LOADED");
AddOn.frame:RegisterEvent("CHAT_MSG_SKILL");
AddOn.frame:SetScript("OnEvent", AddOn.OnEvent);

AddOn.TooltipList = {
  ItemRefTooltip,
  ItemRefShoppingTooltip1,
  ItemRefShoppingTooltip2,
  GameTooltip,
  ShoppingTooltip1,
  ShoppingTooltip2,
}
