local AddOnName, AddOn = ...

-- Locales Table
local L = {}

AddOn.Locale = setmetatable(L, {
	__index = function(self, k)
		self[k] = k
		return k
	end
})

-- Phrases
L["You can now mine "] = "You can now mine "
L["You can now smelt "] = "You can now smelt "
L["You can now pick "] = "You can now pick "
L["Requires "] = "Requires "
L[" skill."] = " skill."
L[" to smelt."] = " to smelt."
L["Chance of: "] = "Chance of: "

-- Mining nodes
L["Copper Vein"] = "Copper Vein"
L["Tin Vein"] = "Tin Vein"
L["Silver Vein"] = "Silver Vein"
L["Iron Deposit"] = "Iron Deposit"
L["Gold Vein"] = "Gold Vein"
L["Mithril Deposit"] = "Mithril Deposit"
L["Truesilver Deposit"] = "Truesilver Deposit"
L["Small Thorium Vein"] = "Small Thorium Vein"
L["Rich Thorium Vein"] = "Rich Thorium Vein"
L["Dark Iron Deposit"] = "Dark Iron Deposit"
L["Incendicite Mineral Vein"] = "Incendicite Mineral Vein"
L["Lesser Bloodstone Deposit"] = "Lesser Bloodstone Deposit"
L["Indurium Mineral Vein"] = "Indurium Mineral Vein"
L["Large Obsidian Chunk"] = "Large Obsidian Chunk"
L["Small Obsidian Chunk"] = "Small Obsidian Chunk"
L["Ooze Covered Gold Vein"] = "Ooze Covered Silver Vein"
L["Ooze Covered Gold Vein"] = "Ooze Covered Gold Vein"
L["Ooze Covered Mithril Deposit"] = "Ooze Covered Mithril Deposit"
L["Ooze Covered Truesilver Deposit"] = "Ooze Covered Truesilver Deposit"
L["Ooze Covered Thorium Vein"] = "Ooze Covered Thorium Vein"
L["Ooze Covered Rich Thorium Vein"] = "Ooze Covered Rich Thorium Vein"
L["Hakkari Thorium Vein"] = "Hakkari Thorium Vein"

-- TBC nodes
L["Fel Iron Deposit"] = "Fel Iron Deposit"
L["Adamantite Deposit"] = "Adamantite Deposit"
L["Rich Adamantite Deposit"] = "Rich Adamantite Deposit"
L["Khorium Vein"] = "Khorium Vein"

-- Ores
L["Copper Ore"] = "Copper Ore"
L["Tin Ore"] = "Tin Ore"
L["Silver Ore"] = "Silver Ore"
L["Iron Ore"] = "Iron Ore"
L["Gold Ore"] = "Gold Ore"
L["Mithril Ore"] = "Mithril Ore"
L["Truesilver Ore"] = "Truesilver Ore"
L["Thorium Ore"] = "Thorium Ore"
L["Dark Iron Ore"] = "Dark Iron Ore"
L["Elementium Ore"] = "Elementium Ore"
L["Fel Iron Ore"] = "Fel Iron Ore"
L["Adamantite Ore"] = "Adamantite Ore"
L["Eternium Ore"] = "Eternium Ore"
L["Khorium Ore"] = "Khorium Ore"


-- Bars (maybe for later)
L["Copper Bar"] = "Copper Bar"
L["Tin Bar"] = "Tin Bar"
L["Bronze Bar"] = "Bronze Bar"
L["Silver Bar"] = "Silver Bar"
L["Iron Bar"] = "Iron Bar"
L["Steel Bar"] = "Steel Bar"
L["Gold Bar"] = "Gold Bar"
L["Mithril Bar"] = "Mithril Bar"
L["Truesilver Bar"] = "Truesilver Bar"
L["Thorium Bar"] = "Thorium Bar"
L["Dark Iron Bar"] = "Dark Iron Bar"
L["Elementium Bar"] = "Elementium Bar"
L["Fel Iron Bar"] = "Fel Iron Bar"
L["Adamantite Bar"] = "Adamantite Bar"
L["Eternium Bar"] = "Eternium Bar"
L["Khorium Bar"] = "Khorium Bar"

-- Gems 
L["Tigerseye"] = "Tigerseye"
L["Malachite"] = "Malachite"
L["Shadowgem"] = "Shadowgem"
L["Jade"] = "Jade"
L["Citrine"] = "Citrine"
L["Lesser Moonstone"] = "Lesser Moonstone"
L["Moss Agate"] = "Moss Agate"
L["Black Vitriol"] = "Black Vitriol"
L["Blood of the Mountain"] = "Blood of the Mountain"
L["Black Diamond"] = "Black Diamond"
L["Aquamarine"] = "Aquamarine"
L["Star Ruby"] = "Star Ruby"
L["Huge Emerald"] = "Huge Emerald"
L["Azerothian Diamond"] = "Azerothian Diamond"
L["Arcane Crystal"] = "Arcane Crystal"
L["Large Opal"] = "Large Opal"
L["Blue Sapphire"] = "Blue Sapphire"
L["Huge Emerald"] = "Huge Emerald"
L["Souldarite"] = "Souldarite"

-- TBC Gems
L["Shadow Draenite"] = "Shadow Draenite"
L["Deep Peridot"] = "Deep Peridot"
L["Flame Spessarite"] = "Flame Spessarite"
L["Blood Garnet"] = "Blood Garnet"
L["Golden Draenite"] = "Golden Draenite"
L["Azure Moonstone"] = "Azure Moonstone"
L["Living Ruby"] = "Living Ruby"
L["Talasite"] = "Talasite"
L["Nightseye"] = "Nightseye"
L["Noble Topaz"] = "Noble Topaz"

-- Stone
L["Rough Stone"] = "Rough Stone"
L["Coarse Stone"] = "Coarse Stone"
L["Heavy Stone"] = "Heavy Stone"
L["Solid Stone"] = "Solid Stone"
L["Dense Stone"] = "Dense Stone"

-- TBC Stone
L["Mote of Earth"] = "Mote of Earth"
L["Mote of Fire"] = "Mote of Fire"

-- Herbs
L["Peacebloom"] = "Peacebloom"
L["Silverleaf"] = "Silverleaf"
L["Bloodthistle"] = "Bloodthistle"
L["Earthroot"] = "Earthroot"
L["Mageroyal"] = "Mageroyal"
L["Briarthorn"] = "Briarthorn"
L["Stranglekelp"] = "Stranglekelp"
L["Bruiseweed"] = "Bruiseweed"
L["Wild Steelbloom"] = "Wild Steelbloom"
L["Grave Moss"] = "Grave Moss"
L["Kingsblood"] = "Kingsblood"
L["Liferoot"] = "Liferoot"
L["Fadeleaf"] = "Fadeleaf"
L["Goldthorn"] = "Goldthorn"
L["Khadgar's Whisker"] = "Khadgar's Whisker"
L["Wintersbite"] = "Wintersbite"
L["Firebloom"] = "Firebloom"
L["Purple Lotus"] = "Purple Lotus"
L["Arthas' Tears"] = "Arthas' Tears"
L["Sungrass"] = "Sungrass"
L["Blindweed"] = "Blindweed"
L["Ghost Mushroom"] = "Ghost Mushroom"
L["Gromsblood"] = "Gromsblood"
L["Golden Sansam"] = "Golden Sansam"
L["Dreamfoil"] = "Dreamfoil"
L["Mountain Silversage"] = "Mountain Silversage"
L["Plaguebloom"] = "Plaguebloom"
L["Icecap"] = "Icecap"
L["Black Lotus"] = "Black Lotus"

-- TBC herbs
L["Felweed"] = "Felweed"
L["Dreaming Glory"] = "Dreaming Glory"
L["Ragveil"] = "Ragveil"
L["Flame Cap"] = "Flame Cap"
L["Terocone"] = "Terocone"
L["Ancient Lichen"] = "Ancient Lichen"
L["Mana Thistle"] = "Mana Thistle"
L["Netherbloom"] = "Netherbloom"
L["Nightmare Vine"] = "Nightmare Vine"

-- Special herbs
L["Swiftthistle"] = "Swiftthistle"
L["Wildvine"] = "Wildvine"

-- TBC special herbs
L["Fel Blossom"] = "Fel Blossom"
L["Unidentified Plant Parts"] = "Unidentified Plant Parts"
L["Nightmare Seed"] = "Nightmare Seed"
