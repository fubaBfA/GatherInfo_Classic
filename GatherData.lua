local AddOnName, AddOn = ...
local L = AddOn.Locale
AddOn.version = GetAddOnMetadata(AddOnName, "Version");

AddOn.Mine = {
  [L["Copper Vein"]] = { ["baseskill"]=1, ["medium"]=25, ["easy"]=50, ["trivial"]=100 },
  [L["Tin Vein"]] = { ["baseskill"]=65, ["medium"]=90, ["easy"]=115, ["trivial"]=165 },
  [L["Incendicite Mineral Vein"]] = { ["baseskill"]=65, ["medium"]=90, ["easy"]=115, ["trivial"]=165 },
  [L["Silver Vein"]] = { ["baseskill"]=75, ["medium"]=100, ["easy"]=125, ["trivial"]=175 },
  [L["Ooze Covered Gold Vein"]] = { ["baseskill"]=75, ["medium"]=100, ["easy"]=125, ["trivial"]=175 },
  [L["Lesser Bloodstone Deposit"]] = { ["baseskill"]=75, ["medium"]=100, ["easy"]=125, ["trivial"]=175 },
  [L["Iron Deposit"]] = { ["baseskill"]=125, ["medium"]=150, ["easy"]=175, ["trivial"]=225 },
  [L["Indurium Mineral Vein"]] = { ["baseskill"]=150, ["medium"]=175, ["easy"]=200, ["trivial"]=250 },
  [L["Gold Vein"]] = { ["baseskill"]=155, ["medium"]=180, ["easy"]=205, ["trivial"]=255 },
  [L["Ooze Covered Gold Vein"]] = { ["baseskill"]=155, ["medium"]=175, ["easy"]=205, ["trivial"]=255 },
  [L["Mithril Deposit"]] = { ["baseskill"]=175, ["medium"]=200, ["easy"]=225, ["trivial"]=275 },
  [L["Ooze Covered Mithril Deposit"]] = { ["baseskill"]=175, ["medium"]=200, ["easy"]=225, ["trivial"]=275 },
  [L["Truesilver Deposit"]] = { ["baseskill"]=230, ["medium"]=255, ["easy"]=280, ["trivial"]=330 },
  [L["Ooze Covered Truesilver Deposit"]] = { ["baseskill"]=230, ["medium"]=255, ["easy"]=280, ["trivial"]=330 },
  [L["Dark Iron Deposit"]] = { ["baseskill"]=230, ["medium"]=255, ["easy"]=280, ["trivial"]=330 },
  [L["Small Thorium Vein"]] = { ["baseskill"]=250, ["medium"]=270, ["easy"]=300, ["trivial"]=350 },
  [L["Ooze Covered Thorium Vein"]] = { ["baseskill"]=250, ["medium"]=270, ["easy"]=300, ["trivial"]=350 },
  [L["Rich Thorium Vein"]] = { ["baseskill"]=275, ["medium"]=290, ["easy"]=300, ["trivial"]=350 },
  [L["Ooze Covered Rich Thorium Vein"]] = { ["baseskill"]=275, ["medium"]=290, ["easy"]=300, ["trivial"]=350 },
  [L["Hakkari Thorium Vein"]] = { ["baseskill"]=275, ["medium"]=300, ["easy"]=325, ["trivial"]=350 },
  [L["Fel Iron Deposit"]] = { ["baseskill"]=300, ["medium"]=325, ["easy"]=350, ["trivial"]=400 },
  [L["Small Obsidian Chunk"]] = { ["baseskill"]=305, ["medium"]=330, ["easy"]=355, ["trivial"]=405 },
  [L["Large Obsidian Chunk"]] = { ["baseskill"]=305, ["medium"]=330, ["easy"]=355, ["trivial"]=405 },
  [L["Adamantite Deposit"]] = { ["baseskill"]=325, ["medium"]=350, ["easy"]=400, ["trivial"]=450 },
  [L["Rich Adamantite Deposit"]] = { ["baseskill"]=350, ["medium"]=375, ["easy"]=400, ["trivial"]=450 },
  [L["Khorium Vein"]] = { ["baseskill"]=375, ["medium"]=400, ["easy"]=425, ["trivial"]=475 },
};

AddOn.Ore = {
	[L["Copper Ore"]] = { ["baseskill"]=1, ["medium"]=25, ["easy"]=47, ["trivial"]=70 },
	[L["Tin Ore"]] = { ["baseskill"]=65, ["medium"]=65, ["easy"]=65, ["trivial"]=75 },
	[L["Silver Ore"]] = { ["baseskill"]=75, ["medium"]=100, ["easy"]=112, ["trivial"]=125 },
	[L["Iron Ore"]] = { ["baseskill"]=125, ["medium"]=130, ["easy"]=135, ["trivial"]=140 },
	[L["Gold Ore"]] = { ["baseskill"]=155, ["medium"]=170, ["easy"]=177, ["trivial"]=185 },
	[L["Mithril Ore"]] = { ["baseskill"]=175, ["medium"]=175, ["easy"]=202, ["trivial"]=230 },
	[L["Truesilver Ore"]] = { ["baseskill"]=230, ["medium"]=235, ["easy"]=242, ["trivial"]=250 },
	[L["Thorium Ore"]] = { ["baseskill"]=250, ["medium"]=250, ["easy"]=270, ["trivial"]=290 },
	[L["Dark Iron Ore"]] = { ["baseskill"]=230, ["medium"]=300, ["easy"]=305, ["trivial"]=310 },
	[L["Elementium Ore"]] = { ["baseskill"]=1, ["medium"]=999, ["easy"]=999, ["trivial"]=100 },
	[L["Fel Iron Ore"]] = { ["baseskill"]=300, ["medium"]=300, ["easy"]=307, ["trivial"]=315 },
	[L["Adamantite Ore"]] = { ["baseskill"]=325, ["medium"]=325, ["easy"]=332, ["trivial"]=340 },
	[L["Eternium Ore"]] = { ["baseskill"]=350, ["medium"]=350, ["easy"]=357, ["trivial"]=365 },
	[L["Khorium Ore"]] = { ["baseskill"]=375, ["medium"]=999, ["easy"]=999, ["trivial"]=999 },
};

AddOn.Bars = {
	[L["Copper Bar"]] = { ["baseskill"]=1, ["medium"]=25, ["easy"]=47, ["trivial"]=70 },
	[L["Tin Bar"]] = { ["baseskill"]=65, ["medium"]=65, ["easy"]=65, ["trivial"]=75 },
	[L["Bronze Bar"]] = { ["baseskill"]=65, ["medium"]=65, ["easy"]=90, ["trivial"]=115 },
	[L["Silver Bar"]] = { ["baseskill"]=75, ["medium"]=100, ["easy"]=112, ["trivial"]=125 },
	[L["Iron Bar"]] = { ["baseskill"]=125, ["medium"]=130, ["easy"]=135, ["trivial"]=140 },
	[L["Steel Bar"]] = { ["baseskill"]=165, ["medium"]=165, ["easy"]=165, ["trivial"]=165 },
	[L["Gold Bar"]] = { ["baseskill"]=155, ["medium"]=170, ["easy"]=177, ["trivial"]=185 },
	[L["Mithril Bar"]] = { ["baseskill"]=175, ["medium"]=175, ["easy"]=202, ["trivial"]=230 },
	[L["Truesilver Bar"]] = { ["baseskill"]=230, ["medium"]=235, ["easy"]=242, ["trivial"]=250 },
	[L["Thorium Bar"]] = { ["baseskill"]=250, ["medium"]=250, ["easy"]=270, ["trivial"]=290 },
	[L["Dark Iron Bar"]] = { ["baseskill"]=230, ["medium"]=300, ["easy"]=305, ["trivial"]=310 },
	[L["Elementium Bar"]] = { ["baseskill"]=1, ["medium"]=999, ["easy"]=999, ["trivial"]=100 },
	[L["Fel Iron Bar"]] = { ["baseskill"]=300, ["medium"]=300, ["easy"]=307, ["trivial"]=315 },
	[L["Adamantite Bar"]] = { ["baseskill"]=325, ["medium"]=325, ["easy"]=332, ["trivial"]=340 },
	[L["Eternium Bar"]] = { ["baseskill"]=350, ["medium"]=350, ["easy"]=357, ["trivial"]=365 },
	[L["Khorium Bar"]] = { ["baseskill"]=375, ["medium"]=999, ["easy"]=999, ["trivial"]=999 },
};

AddOn.Gem = {
	[L["Tigerseye"]] = L["Copper Vein"].."/"..L["Tin Vein"],
};

AddOn.Stone = {
	[L["Rough Stone"]] = L["Copper Vein"],
	[L["Coarse Stone"]] = L["Tin Vein"],
	[L["Heavy Stone"]] = L["Iron Deposit"],
	[L["Solid Stone"]] = {L["Mithril Deposit"],L["Ooze Covered Mithril Deposit"]},
	[L["Dense Stone"]] = {L["Small Thorium Vein"],L["Rich Thorium Vein"],L["Ooze Covered Thorium Vein"],L["Ooze Covered Rich Thorium Vein"],L["Hakkari Thorium Vein"]},
	[L["Mote of Earth"]] = {L["Fel Iron Deposit"], L["Fel Iron Deposit"],L["Rich Adamantite Deposit"],L["Khorium Vein"]},
	[L["Mote of Fire"]] = L["Fel Iron Deposit"],
};

AddOn.MineHasStone = {
	[L["Copper Vein"]] = L["Rough Stone"],
	[L["Tin Vein"]] = L["Coarse Stone"],
	[L["Iron Deposit"]] = L["Heavy Stone"],
	[L["Mithril Deposit"]] = L["Solid Stone"],
	[L["Ooze Covered Mithril Deposit"]] = L["Solid Stone"],
	[L["Small Thorium Vein"]] = L["Dense Stone"],
	[L["Rich Thorium Vein"]] = L["Dense Stone"],
	[L["Ooze Covered Thorium Vein"]] = L["Dense Stone"],
	[L["Ooze Covered Rich Thorium Vein"]] = L["Dense Stone"],
	[L["Hakkari Thorium Vein"]] = L["Dense Stone"],
	[L["Fel Iron Deposit"]] = L["Mote of Earth"],
	[L["Adamantite Deposit"]] = L["Mote of Earth"],
	[L["Rich Adamantite Deposit"]] = L["Mote of Earth"],
	[L["Khorium Vein"]] = L["Mote of Earth"],
};

AddOn.MineHasGem = {
	[L["Copper Vein"]] = {[1]=L["Tigerseye"],[2]=L["Malachite"],[3]=L["Shadowgem"]},
	[L["Tin Vein"]] = {[1]=L["Moss Agate"],[2]=L["Shadowgem"],[3]=L["Lesser Moonstone"],[4]=L["Jade"]},
	[L["Silver Vein"]] = {[1]=L["Moss Agate"],[2]=L["Shadowgem"],[3]=L["Lesser Moonstone"]},
	[L["Iron Deposit"]] = {[1]=L["Jade"],[2]=L["Lesser Moonstone"],[3]=L["Citrine"],[4]=L["Aquamarine"]},
	[L["Gold Vein"]] = {[1]=L["Jade"],[2]=L["Citrine"],[3]=L["Lesser Moonstone"]},
	[L["Mithril Deposit"]] = {[1]=L["Black Vitriol"],[2]=L["Aquamarine"],[3]=L["Citrine"],[4]=L["Star Ruby"]},
	[L["Truesilver Deposit"]] = {[1]=L["Aquamarine"],[2]=L["Star Ruby"],[3]=L["Citrine"]},
	[L["Small Thorium Vein"]] = {[1]=L["Black Vitriol"],[2]=L["Star Ruby"],[3]=L["Large Opal"],[4]=L["Blue Sapphire"],[5]=L["Huge Emerald"],[6]=L["Azerothian Diamond"]},
	[L["Rich Thorium Vein"]] = {[1]=L["Arcane Crystal"],[2]=L["Blue Sapphire"],[3]=L["Star Ruby"],[4]=L["Azerothian Diamond"],[5]=L["Huge Emerald"],[6]=L["Large Opal"]},
	[L["Dark Iron Deposit"]] = {[1]=L["Black Vitriol"],[2]=L["Blood of the Mountain"],[3]=L["Black Diamond"]},
	[L["Large Obsidian Chunk"]] = {[1]=L["Huge Emerald"],[2]=L["Azerothian Diamond"],[3]=L["Arcane Crystal"]},
	[L["Small Obsidian Chunk"]] = {[1]=L["Huge Emerald"],[2]=L["Azerothian Diamond"],[3]=L["Arcane Crystal"]},
	[L["Ooze Covered Gold Vein"]] = {[1]=L["Moss Agate"],[2]=L["Shadowgem"],[3]=L["Lesser Moonstone"]},
	[L["Ooze Covered Gold Vein"]] = {[1]=L["Jade"],[2]=L["Citrine"],[3]=L["Lesser Moonstone"]},
	[L["Ooze Covered Mithril Deposit"]] = {[1]=L["Black Vitriol"],[2]=L["Aquamarine"],[3]=L["Citrine"],[4]=L["Star Ruby"]},
	[L["Ooze Covered Truesilver Deposit"]] = {[1]=L["Aquamarine"],[2]=L["Star Ruby"],[3]=L["Citrine"]},
	[L["Ooze Covered Thorium Vein"]] = {[1]=L["Black Vitriol"],[2]=L["Star Ruby"],[3]=L["Large Opal"],[4]=L["Blue Sapphire"],[5]=L["Huge Emerald"],[6]=L["Azerothian Diamond"]},
	[L["Ooze Covered Rich Thorium Vein"]] = {[1]=L["Arcane Crystal"],[2]=L["Blue Sapphire"],[3]=L["Star Ruby"],[4]=L["Azerothian Diamond"],[5]=L["Huge Emerald"],[6]=L["Large Opal"]},
	[L["Hakkari Thorium Vein"]] = {[1]=L["Souldarite"],[2]=L["Arcane Crystal"],[3]=L["Huge Emerald"],[4]=L["Azerothian Diamond"],[5]=L["Star Ruby"],[6]=L["Blue Sapphire"],[7]=L["Large Opal"]},
	[L["Fel Iron Deposit"]] = {[1]=L["Shadow Draenite"],[2]=L["Deep Peridot"],[3]=L["Flame Spessarite"],[4]= L["Blood Garnet"],[5]=L["Golden Draenite"],[6]=L["Azure Moonstone"],[7]=L["Living Ruby"]},
	[L["Adamantite Deposit"]] = {[1]=L["Arcane Crystal"],[2]= L["Blood Garnet"],[3]=L["Golden Draenite"],[4]=L["Azure Moonstone"],[5]=L["Living Ruby"],[6]=L["Talasite"],[7]=L["Nightseye"]},
	[L["Rich Adamantite Deposit"]] = {[1]=L["Arcane Crystal"],[2]=L["Azure Moonstone"],[3]=L["Golden Draenite"],[4]= L["Blood Garnet"],[5]=L["Shadow Draenite"],[6]=L["Flame Spessarite"],[7]=L["Deep Peridot"],[8]=L["Noble Topaz"],[9]=L["Living Ruby"]},
	[L["Khorium Vein"]] = {[1]=L["Arcane Crystal"],[2]=L["Azure Moonstone"],[3]=L["Golden Draenite"],[4]= L["Blood Garnet"],[5]=L["Shadow Draenite"],[6]=L["Flame Spessarite"],[7]=L["Deep Peridot"],[8]=L["Noble Topaz"],[9]=L["Living Ruby"]},
};

AddOn.HerbHasHerb = {
	[L["Mageroyal"]] = L["Swiftthistle"],
	[L["Briarthorn"]] = L["Swiftthistle"],
	[L["Purple Lotus"]] = L["Wildvine"],
	[L["Felweed"]] = L["Fel Blossom"],
	[L["Dreaming Glory"]] = L["Unidentified Plant Parts"],
	[L["Ragveil"]] = L["Unidentified Plant Parts"],
	[L["Nightmare Vine"]] = L["Nightmare Seed"],
};

AddOn.Herb = {
	[L["Peacebloom"]] = { ["baseskill"]=1, ["medium"]=25, ["easy"]=50, ["trivial"]=100 },
	[L["Silverleaf"]] = { ["baseskill"]=1, ["medium"]=25, ["easy"]=50, ["trivial"]=100 },
  [L["Bloodthistle"]] = { ["baseskill"]=1, ["medium"]=25, ["easy"]=50, ["trivial"]=100 },
	[L["Earthroot"]] = { ["baseskill"]=15, ["medium"]=40, ["easy"]=65, ["trivial"]=115 },
	[L["Mageroyal"]] = { ["baseskill"]=50, ["medium"]=75, ["easy"]=100, ["trivial"]=150 },
	[L["Briarthorn"]] = { ["baseskill"]=70, ["medium"]=95, ["easy"]=120, ["trivial"]=170 },
	[L["Stranglekelp"]] = { ["baseskill"]=85, ["medium"]=110, ["easy"]=135, ["trivial"]=185 },
	[L["Bruiseweed"]] = { ["baseskill"]=100, ["medium"]=125, ["easy"]=150, ["trivial"]=200 },
	[L["Wild Steelbloom"]] = { ["baseskill"]=115, ["medium"]=140, ["easy"]=165, ["trivial"]=215 },
	[L["Grave Moss"]] = { ["baseskill"]=120, ["medium"]=150, ["easy"]=170, ["trivial"]=220 },
	[L["Kingsblood"]] = { ["baseskill"]=125, ["medium"]=155, ["easy"]=175, ["trivial"]=225 },
	[L["Liferoot"]] = { ["baseskill"]=150, ["medium"]=175, ["easy"]=200, ["trivial"]=250 },
	[L["Fadeleaf"]] = { ["baseskill"]=160, ["medium"]=185, ["easy"]=210, ["trivial"]=260 },
	[L["Goldthorn"]] = { ["baseskill"]=170, ["medium"]=195, ["easy"]=220, ["trivial"]=270 },
	[L["Khadgar's Whisker"]] = { ["baseskill"]=185, ["medium"]=210, ["easy"]=230, ["trivial"]=285 },
	[L["Wintersbite"]] = { ["baseskill"]=195, ["medium"]=225, ["easy"]=245, ["trivial"]=295 },
	[L["Firebloom"]] = { ["baseskill"]=205, ["medium"]=235, ["easy"]=255, ["trivial"]=305 },
	[L["Purple Lotus"]] = { ["baseskill"]=210, ["medium"]=235, ["easy"]=260, ["trivial"]=310 },
	[L["Arthas' Tears"]] = { ["baseskill"]=220, ["medium"]=250, ["easy"]=270, ["trivial"]=320 },
	[L["Sungrass"]] = { ["baseskill"]=230, ["medium"]=255, ["easy"]=280, ["trivial"]=330 },
	[L["Blindweed"]] = { ["baseskill"]=235, ["medium"]=260, ["easy"]=285, ["trivial"]=335 },
	[L["Ghost Mushroom"]] = { ["baseskill"]=245, ["medium"]=270, ["easy"]=295, ["trivial"]=345 },
	[L["Gromsblood"]] = { ["baseskill"]=250, ["medium"]=275, ["easy"]=300, ["trivial"]=350 },
	[L["Golden Sansam"]] = { ["baseskill"]=260, ["medium"]=280, ["easy"]=310, ["trivial"]=360 },
	[L["Dreamfoil"]] = { ["baseskill"]=270, ["medium"]=295, ["easy"]=320, ["trivial"]=370 },
	[L["Mountain Silversage"]] = { ["baseskill"]=280, ["medium"]=310, ["easy"]=330, ["trivial"]=380 },
	[L["Plaguebloom"]] = { ["baseskill"]=285, ["medium"]=315, ["easy"]=335, ["trivial"]=385 }, -- we need exact values here!
	[L["Icecap"]] = { ["baseskill"]=290, ["medium"]=315, ["easy"]=340, ["trivial"]=390 },
	[L["Black Lotus"]] = { ["baseskill"]=300, ["medium"]=345, ["easy"]=370, ["trivial"]=400 }, -- we need exact values here!
	[L["Felweed"]] = { ["baseskill"]=300, ["medium"]=325, ["easy"]=350, ["trivial"]=400 },
	[L["Dreaming Glory"]] = { ["baseskill"]=315, ["medium"]=340, ["easy"]=365, ["trivial"]=415 },
	[L["Ragveil"]] = { ["baseskill"]=325, ["medium"]=350, ["easy"]=375, ["trivial"]=425 }, -- we need exact values here!
	[L["Flame Cap"]] = { ["baseskill"]=335, ["medium"]=352, ["easy"]=375, ["trivial"]=435 }, -- we need exact values here!
	[L["Terocone"]] = { ["baseskill"]=325, ["medium"]=350, ["easy"]=419, ["trivial"]=425 }, -- we need exact values here!
	[L["Ancient Lichen"]] = { ["baseskill"]=340, ["medium"]=365, ["easy"]=390, ["trivial"]=440 }, -- we need exact values here!
  [L["Netherbloom"]] = { ["baseskill"]=350, ["medium"]=375, ["easy"]=400, ["trivial"]=450 }, -- we need exact values here!
	[L["Nightmare Vine"]] = { ["baseskill"]=365, ["medium"]=390, ["easy"]=419, ["trivial"]=465 }, -- we need exact values here!
	[L["Mana Thistle"]] = { ["baseskill"]=375, ["medium"]=415, ["easy"]=440, ["trivial"]=475 }, -- we need exact values here!
};
