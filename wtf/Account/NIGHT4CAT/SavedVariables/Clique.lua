
CliqueDB = {
	["char"] = {
	},
	["profileKeys"] = {
		["Эларин - Подземье"] = "Эларин - Подземье",
		["Лафариэль - Подземье"] = "Лафариэль - Подземье",
		["Шут - Азурегос"] = "Шут - Азурегос",
	},
	["profiles"] = {
		["Эларин - Подземье"] = {
		},
		["Лафариэль - Подземье"] = {
			["clicksets"] = {
				["Стандартный"] = {
					["Alt-1"] = {
						["type"] = "spell",
						["modifier"] = "Alt-",
						["button"] = "1",
						["delete"] = true,
						["arg1"] = "Священный щит",
						["texture"] = "Interface\\Icons\\Ability_Paladin_BlessedMending",
					},
					["3"] = {
						["type"] = "spell",
						["modifier"] = "",
						["button"] = "3",
						["arg1"] = "Длань защиты",
						["texture"] = "Interface\\Icons\\Spell_Holy_SealOfProtection",
					},
					["2"] = {
						["type"] = "spell",
						["modifier"] = "",
						["button"] = "2",
						["delete"] = true,
						["arg1"] = "Вспышка Света",
						["texture"] = "Interface\\Icons\\Spell_Holy_FlashHeal",
					},
					["Shift-2"] = {
						["type"] = "spell",
						["modifier"] = "Shift-",
						["button"] = "2",
						["delete"] = true,
						["arg1"] = "Свет небес",
						["texture"] = "Interface\\Icons\\Spell_Holy_HolyBolt",
					},
					["Alt-2"] = {
						["type"] = "spell",
						["modifier"] = "Alt-",
						["button"] = "2",
						["delete"] = true,
						["arg1"] = "Частица Света",
						["texture"] = "Interface\\Icons\\Ability_Paladin_BeaconofLight",
					},
					["Shift-1"] = {
						["type"] = "spell",
						["modifier"] = "Shift-",
						["button"] = "1",
						["delete"] = true,
						["arg1"] = "Шок небес",
						["texture"] = "Interface\\Icons\\Spell_Holy_SearingLight",
					},
				},
			},
			["blacklist"] = {
				["XPerl_Player_PetnameFrame"] = true,
				["XPerl_PlayernameFrame"] = true,
				["XPerl_TargetTargetnameFrame"] = true,
				["XPerl_PetTargetnameFrame"] = true,
				["XPerl_TargetnameFrame"] = true,
			},
		},
		["Шут - Азурегос"] = {
		},
	},
}
CliqueDB3 = {
	["char"] = {
		["Эларин - Подземье"] = {
			["alerthidden"] = true,
		},
		["Лафариэль - Подземье"] = {
			["downclick"] = true,
			["alerthidden"] = true,
			["sec_profileKey"] = "Лафариэль - Подземье",
			["pri_profileKey"] = "Лафариэль - Подземье",
			["fastooc"] = false,
			["specswap"] = false,
		},
	},
	["profileKeys"] = {
		["Эларин - Подземье"] = "Эларин - Подземье",
		["Роток - Подземье"] = "Роток - Подземье",
		["Лафариэль - Подземье"] = "Лафариэль - Подземье",
		["Ыфввыв - Подземье"] = "Ыфввыв - Подземье",
		["Драйн - Подземье"] = "Драйн - Подземье",
	},
	["profiles"] = {
		["Эларин - Подземье"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Роток - Подземье"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Лафариэль - Подземье"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["spell"] = "Частица Света",
					["key"] = "Q",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = "Interface\\Icons\\Ability_Paladin_BeaconofLight",
					["type"] = "spell",
				}, -- [2]
				{
					["spell"] = "Шок небес",
					["key"] = "SHIFT-BUTTON1",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = "Interface\\Icons\\Spell_Holy_SearingLight",
					["type"] = "spell",
				}, -- [3]
				{
					["spell"] = "Свет небес",
					["key"] = "SHIFT-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = "Interface\\Icons\\Spell_Holy_HolyBolt",
					["type"] = "spell",
				}, -- [4]
				{
					["spell"] = "Вспышка Света",
					["key"] = "ALT-BUTTON1",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = "Interface\\Icons\\Spell_Holy_FlashHeal",
					["type"] = "spell",
				}, -- [5]
				{
					["spell"] = "Торжество",
					["key"] = "W",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = "INTERFACE\\ICONS\\inv_helmet_96",
					["type"] = "spell",
				}, -- [6]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [7]
				{
					["spell"] = "Божественный свет",
					["key"] = "ALT-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = "Interface\\Icons\\Spell_Holy_SurgeOfLight",
					["type"] = "spell",
				}, -- [8]
				{
					["spell"] = "Длань защиты",
					["key"] = "BUTTON3",
					["sets"] = {
						["friend"] = true,
						["default"] = true,
					},
					["icon"] = "Interface\\Icons\\Spell_Holy_SealOfProtection",
					["type"] = "spell",
				}, -- [9]
			},
		},
		["Ыфввыв - Подземье"] = {
			["bindings"] = {
				{
					["sets"] = {
						["default"] = true,
					},
					["type"] = "target",
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
		["Драйн - Подземье"] = {
			["bindings"] = {
				{
					["type"] = "target",
					["sets"] = {
						["default"] = true,
					},
					["key"] = "BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
			},
		},
	},
}
