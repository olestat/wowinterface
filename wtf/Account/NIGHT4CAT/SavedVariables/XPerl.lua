
XPerlConfig = nil
XPerlConfig_Global = nil
XPerlConfigNew = {
	["global"] = {
		["highlight"] = {
			["AGGRO"] = 1,
		},
		["showFD"] = 1,
		["highlightSelection"] = 1,
		["bar"] = {
			["fat"] = 1,
			["background"] = 1,
			["fadeTime"] = 0.5,
			["texture"] = {
				"Armory", -- [1]
				"Interface\\Addons\\Recount\\Textures\\statusbar\\Armory", -- [2]
			},
		},
		["rangeFinder"] = {
			["StatsFrame"] = {
				["HealthLowPoint"] = 0.85,
				["spell"] = "Свет небес",
				["item"] = "Плотные бинты из ледяной ткани",
				["FadeAmount"] = 0.5,
			},
			["enabled"] = 1,
			["Main"] = {
				["enabled"] = true,
				["spell"] = "Свет небес",
				["item"] = "Плотные бинты из ледяной ткани",
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
			},
			["NameFrame"] = {
				["HealthLowPoint"] = 0.85,
				["spell"] = "Свет небес",
				["item"] = "Плотные бинты из ледяной ткани",
				["FadeAmount"] = 0.5,
			},
		},
		["showAFK"] = 1,
		["combatFlash"] = 1,
		["buffHelper"] = {
			["enable"] = 1,
			["sort"] = "group",
			["visible"] = 1,
		},
		["focus"] = {
			["debuffs"] = {
				["enable"] = 1,
				["big"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 80,
			},
			["threat"] = 1,
			["pvpIcon"] = 1,
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["threatMode"] = "portraitFrame",
			["elite"] = 1,
			["scale"] = 0.8,
			["values"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 3,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["target"] = {
			["debuffs"] = {
				["enable"] = 1,
				["onlyMine"] = 1,
				["curable"] = 0,
				["size"] = 35,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 80,
			},
			["eliteGfx"] = true,
			["pvpIcon"] = 1,
			["ownDamageOnly"] = 1,
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["elite"] = true,
			["scale"] = 1,
			["values"] = 1,
			["buffs"] = {
				["onlyMine"] = 1,
				["maxrows"] = 2,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 3,
				["size"] = 30,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["raid"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["group"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
				1, -- [6]
				1, -- [7]
				1, -- [8]
				1, -- [9]
			},
			["class"] = {
				{
					["enable"] = 1,
					["name"] = "WARRIOR",
				}, -- [1]
				{
					["enable"] = 1,
					["name"] = "ROGUE",
				}, -- [2]
				{
					["enable"] = 1,
					["name"] = "HUNTER",
				}, -- [3]
				{
					["enable"] = 1,
					["name"] = "MAGE",
				}, -- [4]
				{
					["enable"] = 1,
					["name"] = "WARLOCK",
				}, -- [5]
				{
					["enable"] = 1,
					["name"] = "PRIEST",
				}, -- [6]
				{
					["enable"] = 1,
					["name"] = "DRUID",
				}, -- [7]
				{
					["enable"] = 1,
					["name"] = "SHAMAN",
				}, -- [8]
				{
					["enable"] = 1,
					["name"] = "PALADIN",
				}, -- [9]
				{
					["enable"] = 1,
					["name"] = "DEATHKNIGHT",
				}, -- [10]
			},
			["hideframemanager"] = {
			},
			["titles"] = 1,
			["scale"] = 0.8,
			["healerMode"] = {
				["type"] = 1,
			},
			["spacing"] = 0,
			["anchor"] = "TOP",
			["buffs"] = {
				["castable"] = 0,
				["maxrows"] = 2,
				["right"] = 1,
				["size"] = 20,
				["inside"] = 1,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["ShowTutorials"] = true,
		["colour"] = {
			["classic"] = 1,
			["guildList"] = 1,
			["border"] = {
				["a"] = 1,
				["b"] = 0.5,
				["g"] = 0.5,
				["r"] = 0.5,
			},
			["reaction"] = {
				["tapped"] = {
					["b"] = 0.5,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["none"] = {
					["b"] = 1,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["neutral"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 1,
				},
				["unfriendly"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["friend"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["enemy"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
			},
			["classbarBright"] = 1,
			["frame"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["gradient"] = {
				["enable"] = 1,
				["s"] = {
					["a"] = 1,
					["b"] = 0.25,
					["g"] = 0.25,
					["r"] = 0.25,
				},
				["e"] = {
					["a"] = 0,
					["b"] = 0.1,
					["g"] = 0.1,
					["r"] = 0.1,
				},
			},
			["class"] = 1,
			["bar"] = {
				["rage"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
				["healthFull"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["focus"] = {
					["b"] = 0.25,
					["g"] = 0.5,
					["r"] = 1,
				},
				["runic_power"] = {
					["b"] = 1,
					["g"] = 0.82,
					["r"] = 0,
				},
				["mana"] = {
					["b"] = 1,
					["g"] = 0,
					["r"] = 0,
				},
				["energy"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 1,
				},
				["healthEmpty"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
			},
		},
		["raidpet"] = {
			["hunter"] = 1,
			["warlock"] = 1,
		},
		["targettargettarget"] = {
			["scale"] = 0.84,
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 35,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["mana"] = 1,
			["buffs"] = {
				["onlyMine"] = 1,
				["maxrows"] = 2,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 30,
			},
			["size"] = {
				["width"] = 80,
			},
		},
		["tooltip"] = {
			["enable"] = 1,
			["enableBuffs"] = 1,
			["modifier"] = "all",
		},
		["targettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 35,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["buffs"] = {
				["onlyMine"] = 1,
				["maxrows"] = 2,
				["wrap"] = 1,
				["rows"] = 3,
				["size"] = 30,
			},
			["scale"] = 0.84,
			["size"] = {
				["width"] = 80,
			},
		},
		["player"] = {
			["partyNumber"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 35,
			},
			["portrait"] = 1,
			["scale"] = 1,
			["castBar"] = {
				["enable"] = 1,
				["original"] = 1,
				["inside"] = 1,
			},
			["fullScreen"] = {
				["enable"] = 1,
				["highHP"] = 49,
				["lowHP"] = 30,
			},
			["dockRunes"] = 1,
			["level"] = 1,
			["size"] = {
				["width"] = 80,
			},
			["threat"] = 1,
			["pvpIcon"] = 1,
			["showRunes"] = 1,
			["threatMode"] = "portraitFrame",
			["energyTicker"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["values"] = 1,
			["buffs"] = {
				["count"] = 40,
				["flash"] = 1,
				["wrap"] = 1,
				["rows"] = 2,
				["size"] = 30,
				["maxrows"] = 2,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["focustarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 80,
			},
		},
		["pettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["buffs"] = {
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["wrap"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 80,
			},
		},
		["partypet"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 12,
			},
			["name"] = 1,
			["scale"] = 0.7,
			["buffs"] = {
				["enable"] = 1,
				["maxrows"] = 2,
				["size"] = 12,
				["castable"] = 0,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["size"] = {
				["width"] = 0,
			},
		},
		["highlightDebuffs"] = {
			["enable"] = 1,
			["frame"] = 1,
			["border"] = 1,
			["class"] = 1,
		},
		["transparency"] = {
			["text"] = 1,
			["frame"] = 1,
		},
		["pet"] = {
			["threat"] = 1,
			["portrait"] = 1,
			["scale"] = 0.7,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["buffs"] = {
				["enable"] = 1,
				["maxrows"] = 2,
				["size"] = 18,
			},
			["happiness"] = {
				["enabled"] = 1,
				["flashWhenSad"] = 1,
				["onlyWhenSad"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["hitIndicator"] = 1,
			["values"] = 1,
			["level"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["size"] = {
				["enable"] = 1,
				["size"] = 20,
				["width"] = 80,
			},
		},
		["party"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 1,
				["size"] = 35,
			},
			["values"] = 1,
			["scale"] = 0.97,
			["castBar"] = {
				["enable"] = 1,
				["castTime"] = 1,
			},
			["spacing"] = 23,
			["anchor"] = "TOP",
			["level"] = 1,
			["size"] = {
				["width"] = 100,
			},
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["threatMode"] = "portraitFrame",
			["name"] = 1,
			["hitIndicator"] = 1,
			["target"] = {
				["enable"] = 1,
				["size"] = 169,
				["large"] = 1,
			},
			["buffs"] = {
				["onlyMine"] = 1,
				["maxrows"] = 2,
				["castable"] = 0,
				["enable"] = 1,
				["wrap"] = 1,
				["rows"] = 2,
				["size"] = 21,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["minimap"] = {
			["enable"] = 1,
			["radius"] = 78,
			["pos"] = 92.21745403878236,
		},
		["buffs"] = {
			["countdownStart"] = 60,
		},
		["maximumScale"] = 1.5,
		["optionsColour"] = {
			["b"] = 0.2,
			["g"] = 0.2,
			["r"] = 0.7,
		},
	},
	["savedPositions"] = {
		["Подземье"] = {
			["Ыфввыв"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 498.0000006838724,
					["height"] = 250.0000077961453,
					["left"] = 507.6667394078937,
					["width"] = 350.0000179174567,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 505.9998502319456,
					["height"] = 124.0000051974302,
					["left"] = 86.99990446302647,
					["width"] = 330.0000439046077,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 582.6666682167775,
					["width"] = 200.0000027354896,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 579.6666458541502,
					["width"] = 205.9999949393443,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 707.9999659615413,
					["left"] = 425.6000135636268,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 614.9999624554056,
					["height"] = 149.9999976748339,
					["left"] = 889.9999815354454,
					["width"] = 140.0000106684094,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 919.9999794086123,
					["left"] = 478.6999817196376,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 707.9999659615413,
					["left"] = 182.4000038121677,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 707.9999659615413,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 1067.999977842535,
					["left"] = 22.99999856386797,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 707.9999659615413,
					["left"] = 486.400047514332,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 707.9999659615413,
					["left"] = 243.200023757166,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 1017.699921701449,
					["left"] = 72.09999700091484,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1020.499942525551,
					["left"] = 220.4999977289104,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 707.9999659615413,
					["left"] = 304.0000016850438,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 504.000045409127,
					["height"] = 240.0000032825875,
					["left"] = 432.6667405704768,
					["width"] = 500.0000155922906,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 1069.920059591214,
					["left"] = 495.6000317466538,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 934.5000347862145,
					["left"] = 0,
				},
				["XPerl_Focus"] = {
					["top"] = 919.9999807737734,
					["left"] = 216.8000086468412,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 707.9999659615413,
					["left"] = 364.8000076243353,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 707.9999659615413,
					["left"] = 547.2000534536235,
				},
				["XPerl_Target"] = {
					["top"] = 1067.999977842535,
					["left"] = 271.0000067703367,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 707.9999659615413,
					["left"] = 60.8000059392915,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 707.9999659615413,
					["left"] = 121.600011878583,
				},
			},
			["Роток"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 498.0000006838724,
					["height"] = 250.0000077961453,
					["left"] = 507.6667394078937,
					["width"] = 350.0000179174567,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 602.0000056077537,
					["height"] = 124.0000051974302,
					["left"] = 794.9999736709128,
					["width"] = 330.0000088903411,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 582.6666682167775,
					["width"] = 200.0000027354896,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 579.6666458541502,
					["width"] = 205.9999949393443,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 707.9999659615413,
					["left"] = 425.6000135636268,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 614.9999624554056,
					["height"] = 149.9999976748339,
					["left"] = 889.9999815354454,
					["width"] = 140.0000106684094,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 919.9999794086123,
					["left"] = 478.6999817196376,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 707.9999659615413,
					["left"] = 182.4000038121677,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 707.9999659615413,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 1067.999977842535,
					["left"] = 22.99999856386797,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 707.9999659615413,
					["left"] = 486.400047514332,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 707.9999659615413,
					["left"] = 243.200023757166,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 1017.699921701449,
					["left"] = 72.09999700091484,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1020.499942525551,
					["left"] = 220.4999977289104,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 707.9999659615413,
					["left"] = 304.0000016850438,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 504.000045409127,
					["height"] = 240.0000032825875,
					["left"] = 432.6667405704768,
					["width"] = 500.0000155922906,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 707.9999659615413,
					["left"] = 60.8000059392915,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 934.5000347862145,
					["left"] = 0,
				},
				["XPerl_Focus"] = {
					["top"] = 919.9999807737734,
					["left"] = 216.8000086468412,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 707.9999659615413,
					["left"] = 547.2000534536235,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 707.9999659615413,
					["left"] = 364.8000076243353,
				},
				["XPerl_Target"] = {
					["top"] = 1067.999977842535,
					["left"] = 271.0000067703367,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 1069.920059591214,
					["left"] = 495.6000317466538,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 707.9999659615413,
					["left"] = 121.600011878583,
				},
			},
			["Лафариэль"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 498.0000006838724,
					["height"] = 250.0000077961453,
					["left"] = 507.6667394078937,
					["width"] = 350.0000179174567,
				},
				["XPerl_Focus"] = {
					["top"] = 693.3333578164047,
					["left"] = 216.8000086468412,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 582.6666682167775,
					["width"] = 200.0000027354896,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 579.6666458541502,
					["width"] = 205.9999949393443,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 481.3333990270002,
					["left"] = 425.6000135636268,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 382.1067187052407,
					["left"] = 1491.960015894644,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 675.0000595652856,
					["height"] = 149.9999976748339,
					["left"] = 996.6666730038842,
					["width"] = 140.0000106684094,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 403.0800802714364,
					["left"] = 1359.119971008457,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 693.3333426803894,
					["left"] = 414.6999959399009,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 481.3333990270002,
					["left"] = 182.4000038121677,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 481.3333990270002,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 404.7556081468624,
					["left"] = 587.0334024477571,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 1027.000022362627,
					["height"] = 540.0000686607884,
					["left"] = 384.5000299878045,
					["width"] = 723.0000672246564,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 481.3333990270002,
					["left"] = 486.400047514332,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 481.3333990270002,
					["left"] = 243.200023757166,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 152.3002380678767,
					["left"] = 617.3999348169823,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1079.999992877926,
					["left"] = 233.5000208822798,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 481.3333990270002,
					["left"] = 304.0000016850438,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 504.000045409127,
					["height"] = 240.0000032825875,
					["left"] = 432.6667405704768,
					["width"] = 500.0000155922906,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 481.3333990270002,
					["left"] = 364.8000076243353,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 761.7463610060796,
					["left"] = 1337.448454372134,
				},
				["XPerl_AggroAnchor"] = {
					["top"] = 171.5559356670296,
					["left"] = 1726.221831108001,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 481.3333990270002,
					["left"] = 547.2000534536235,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 124.0000051974302,
					["height"] = 124.0000051974302,
					["left"] = 0,
					["width"] = 330.0000088903411,
				},
				["XPerl_Target"] = {
					["top"] = 404.000000273549,
					["left"] = 1037.000096904718,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 481.3333990270002,
					["left"] = 60.8000059392915,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 481.3333990270002,
					["left"] = 121.600011878583,
				},
			},
			["Эларин"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 498.0000006838724,
					["height"] = 250.0000077961453,
					["left"] = 507.6667394078937,
					["width"] = 350.0000179174567,
				},
				["XPerl_Focus"] = {
					["top"] = 693.3333578164047,
					["left"] = 216.8000086468412,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 582.6666682167775,
					["width"] = 200.0000027354896,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 579.6666458541502,
					["width"] = 205.9999949393443,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 481.3333990270002,
					["left"] = 425.6000135636268,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 382.1067187052407,
					["left"] = 1491.960015894644,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 675.0000595652856,
					["height"] = 149.9999976748339,
					["left"] = 996.6666730038842,
					["width"] = 140.0000106684094,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 312.3200830367108,
					["left"] = 1222.240013781332,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 693.3333426803894,
					["left"] = 414.6999959399009,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 481.3333990270002,
					["left"] = 182.4000038121677,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 481.3333990270002,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 444.7556262010937,
					["left"] = 635.0333050643282,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 950.0000786453254,
					["height"] = 540.0000686607884,
					["left"] = 186.5000421607331,
					["width"] = 822.999972303168,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 481.3333990270002,
					["left"] = 486.400047514332,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 481.3333990270002,
					["left"] = 243.200023757166,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 331.0332707589342,
					["left"] = 756.5444500441201,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1079.999992877926,
					["left"] = 233.5000208822798,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 481.3333990270002,
					["left"] = 304.0000016850438,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 504.000045409127,
					["height"] = 240.0000032825875,
					["left"] = 432.6667405704768,
					["width"] = 500.0000155922906,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 481.3333990270002,
					["left"] = 364.8000076243353,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 761.7463610060796,
					["left"] = 1337.448454372134,
				},
				["XPerl_AggroAnchor"] = {
					["top"] = 171.5559356670296,
					["left"] = 1726.221831108001,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 481.3333990270002,
					["left"] = 547.2000534536235,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 124.0000051974302,
					["height"] = 124.0000051974302,
					["left"] = 0,
					["width"] = 330.0000088903411,
				},
				["XPerl_Target"] = {
					["top"] = 447.9998030447504,
					["left"] = 982.99976440596,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 481.3333990270002,
					["left"] = 60.8000059392915,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 481.3333990270002,
					["left"] = 121.600011878583,
				},
			},
			["Драйн"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 498.0000006838724,
					["height"] = 250.0000077961453,
					["left"] = 507.6667394078937,
					["width"] = 350.0000179174567,
				},
				["XPerl_Focus"] = {
					["top"] = 919.9999807737734,
					["left"] = 216.8000086468412,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 582.6666682167775,
					["width"] = 200.0000027354896,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 579.6666458541502,
					["width"] = 205.9999949393443,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 707.9999659615413,
					["left"] = 425.6000135636268,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 614.9999624554056,
					["height"] = 149.9999976748339,
					["left"] = 889.9999815354454,
					["width"] = 140.0000106684094,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 919.9999794086123,
					["left"] = 478.6999817196376,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 707.9999659615413,
					["left"] = 182.4000038121677,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 707.9999659615413,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 1067.999977842535,
					["left"] = 22.99999856386797,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 707.9999659615413,
					["left"] = 486.400047514332,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 707.9999659615413,
					["left"] = 243.200023757166,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 1017.699921701449,
					["left"] = 72.09999700091484,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 602.0000056077537,
					["height"] = 124.0000051974302,
					["left"] = 794.9999736709128,
					["width"] = 330.0000088903411,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 707.9999659615413,
					["left"] = 304.0000016850438,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 504.000045409127,
					["height"] = 240.0000032825875,
					["left"] = 432.6667405704768,
					["width"] = 500.0000155922906,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 707.9999659615413,
					["left"] = 60.8000059392915,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 934.5000347862145,
					["left"] = 0,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1020.499942525551,
					["left"] = 220.4999977289104,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 707.9999659615413,
					["left"] = 547.2000534536235,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 707.9999659615413,
					["left"] = 364.8000076243353,
				},
				["XPerl_Target"] = {
					["top"] = 1067.999977842535,
					["left"] = 271.0000067703367,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 1069.920059591214,
					["left"] = 495.6000317466538,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 707.9999659615413,
					["left"] = 121.600011878583,
				},
			},
		},
		["Азурегос"] = {
			["Шут"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 498.0000006838724,
					["height"] = 250.0000077961453,
					["left"] = 507.6667394078937,
					["width"] = 350.0000179174567,
				},
				["XPerl_Focus"] = {
					["top"] = 693.3333578164047,
					["left"] = 216.8000086468412,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 424.0000093006645,
					["height"] = 80.00000109419584,
					["left"] = 579.6666458541502,
					["width"] = 205.9999949393443,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 481.3333990270002,
					["left"] = 425.6000135636268,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 382.1067187052407,
					["left"] = 1491.960015894644,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 675.0000595652856,
					["height"] = 149.9999976748339,
					["left"] = 996.6666730038842,
					["width"] = 140.0000106684094,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 400.5867382341156,
					["left"] = 1313.039981900994,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 693.3333426803894,
					["left"] = 414.6999959399009,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 481.3333990270002,
					["left"] = 182.4000038121677,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 481.3333990270002,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 509.1999791282145,
					["left"] = 756.2557072741661,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 749.9999883741693,
					["height"] = 540.0001737035882,
					["left"] = 1203.333619693501,
					["width"] = 764.4443537477678,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 481.3333990270002,
					["left"] = 486.400047514332,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 481.3333990270002,
					["left"] = 243.200023757166,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 331.0332707589342,
					["left"] = 756.5444500441201,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1116.047711949667,
					["left"] = 233.4999963722936,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 481.3333990270002,
					["left"] = 304.0000016850438,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 504.000045409127,
					["height"] = 240.0000032825875,
					["left"] = 432.6667405704768,
					["width"] = 500.0000155922906,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 481.3333990270002,
					["left"] = 364.8000076243353,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 815.8891417677545,
					["left"] = 1410.666776590517,
				},
				["XPerl_AggroAnchor"] = {
					["top"] = 171.5559356670296,
					["left"] = 1726.221831108001,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 481.3333990270002,
					["left"] = 547.2000534536235,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 124.0000051974302,
					["height"] = 124.0000051974302,
					["left"] = 0,
					["width"] = 330.0000439046077,
				},
				["XPerl_Target"] = {
					["top"] = 508.8339399851367,
					["left"] = 1079.333255599838,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 481.3333990270002,
					["left"] = 60.8000059392915,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 481.3333990270002,
					["left"] = 121.600011878583,
				},
			},
		},
		["saved"] = {
			["фак"] = {
				["XPerl_RosterTextAnchor"] = {
					["height"] = 250.0000077961453,
					["top"] = 498.0000006838724,
					["left"] = 507.6667394078937,
					["width"] = 350.0000179174567,
				},
				["XPerl_Focus"] = {
					["top"] = 693.3333578164047,
					["left"] = 216.8000086468412,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["height"] = 80.00000109419584,
					["top"] = 424.0000093006645,
					["left"] = 582.6666682167775,
					["width"] = 200.0000027354896,
				},
				["XPerl_MTList_Anchor"] = {
					["height"] = 80.00000109419584,
					["top"] = 424.0000093006645,
					["left"] = 579.6666458541502,
					["width"] = 205.9999949393443,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 481.3333990270002,
					["left"] = 425.6000135636268,
				},
				["XPerl_AdminFrameAnchor"] = {
					["height"] = 149.9999976748339,
					["top"] = 675.0000595652856,
					["left"] = 996.6666730038842,
					["width"] = 140.0000106684094,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 382.1067187052407,
					["left"] = 1491.960015894644,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 481.3333990270002,
					["left"] = 60.8000059392915,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 693.3333426803894,
					["left"] = 414.6999959399009,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 481.3333990270002,
					["left"] = 182.4000038121677,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 481.3333990270002,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 404.7555731325958,
					["left"] = 587.0334024477571,
				},
				["XPerl_OptionsAnchor"] = {
					["height"] = 540.0000686607884,
					["top"] = 1091.000009232277,
					["left"] = 85.50003333877923,
					["width"] = 722.9999971961232,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 481.3333990270002,
					["left"] = 486.400047514332,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 481.3333990270002,
					["left"] = 243.200023757166,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 152.3002380678767,
					["left"] = 617.3999348169823,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["height"] = 124.0000051974302,
					["top"] = 124.0000051974302,
					["left"] = 0,
					["width"] = 330.0000088903411,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 481.3333990270002,
					["left"] = 304.0000016850438,
				},
				["XPerl_CheckAnchor"] = {
					["height"] = 240.0000032825875,
					["top"] = 504.000045409127,
					["left"] = 432.6667405704768,
					["width"] = 500.0000155922906,
				},
				["XPerl_Raid_Title10"] = {
					["top"] = 481.3333990270002,
					["left"] = 547.2000534536235,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 761.7463610060796,
					["left"] = 1337.448454372134,
				},
				["XPerl_AggroAnchor"] = {
					["top"] = 171.5559356670296,
					["left"] = 1726.221831108001,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 481.3333990270002,
					["left"] = 364.8000076243353,
				},
				["XPerl_PetTarget"] = {
					["top"] = 1079.999992877926,
					["left"] = 233.5000208822798,
				},
				["XPerl_Target"] = {
					["top"] = 404.000000273549,
					["left"] = 1037.000096904718,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 403.0800802714364,
					["left"] = 1359.119971008457,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 481.3333990270002,
					["left"] = 121.600011878583,
				},
			},
		},
	},
	["ConfigVersion"] = "3.1.1",
}
XPerlConfigSavePerCharacter = nil
