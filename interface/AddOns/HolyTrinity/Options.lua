local M = LibStub("LibSharedMedia-3.0")

local Defaults = {
	profile = {
		AddonEnabled = true,
		squeeze = -104, -- holy power indicator spacing
		squeezey = 0, -- holy power indicator spacing
		spacerx = 98, -- holy power indicator spacing
		spacery = 8, -- holy power indicator spacing
		scale = 0.85, -- recommended from 0.6 to 1.3
		posx = 0,
		posy = -350, -- Frame Placement
		offsetx = 0,
		offsety = 0, -- Cooldown Frame Offset
		squeezeCD = 26, -- Cooldown spacing
		useFade = true, -- Allow fading when out of combat
		lowFade = 0.25, -- Out of combat transparency
		highFade = 1, -- In combat transparency
		cdFlip = false, -- Flip direction of cooldown 'growth'
		enableHP = true, -- enable Holy Power bar
		dynamicSort = true, -- enable dynamic cooldown sorting
		sortByDuration = false, -- enable sorting by duration instead of priority
		useAlert = false,	-- enable alert sound for 3HP
		stringAlert = "Sound\\Spells\\Ulduar_xt002_lightbomb.Wav", -- sound file for 3HP alert
		statusbar = "HolyTrinityBar", -- SharedMedia statusbar texture name
		hpcolor = {
			r = 0.94,
			g = 0.78,
			b = 0
		},
		CooldownList = {
		-- 	Reference:
		--	["SpellName"]	= {"show cooldown", r, g, b, "statusbar texture", "order"}
			[GetSpellInfo(86150)] = {true,0.75,0,0,"HolyTrinityBar",0,0}, -- Guardian of Ancient Kings
			[GetSpellInfo(498)] = {true,0.2,0.5,0.85,"HolyTrinityBar",1}, -- Divine Protection
			[GetSpellInfo(31850)] = {true,0.2,0.5,0.85,"HolyTrinityBar",2}, -- Ardent Defender
			[GetSpellInfo(642)] = {true,0.2,0.5,0.85,"HolyTrinityBar",3}, -- Divine Shield
			[GetSpellInfo(70940)] = {true,0.2,0.5,0.85,"HolyTrinityBar",4}, -- Divine Guardian
			[GetSpellInfo(82327)] = {true,0,1,1,"HolyTrinityBar",6}, -- Holy Radiance
			[GetSpellInfo(31821)] = {true,0,1,1,"HolyTrinityBar",2}, -- Aura Mastery
			[GetSpellInfo(6940)] = {true,0.94,0.78,0,"HolyTrinityBar",7}, -- Hand of Sacrifice
			[GetSpellInfo(1022)] = {true,0.94,0.78,0,"HolyTrinityBar",8}, -- Hand of Protection
			[GetSpellInfo(1038)] = {true,0.94,0.78,0,"HolyTrinityBar",9}, -- Hand of Salvation
			[GetSpellInfo(1044)] = {true,0.94,0.78,0,"HolyTrinityBar",10}, -- Hand of Freedom
			[GetSpellInfo(54428)] = {true,0,1,1,"HolyTrinityBar",11}, -- Divine Plea
			[GetSpellInfo(20066)] = {true,0.75,0,0,"HolyTrinityBar",2}, -- Repentance
			[GetSpellInfo(31884)] = {true,0.75,0,0,"HolyTrinityBar",11}, -- Avenging Wrath
			[GetSpellInfo(85696)] = {true,0.75,0,0,"HolyTrinityBar",4}, -- Zealotry
			[GetSpellInfo(633)] = {true,0,1,1,"HolyTrinityBar",5}, -- Lay on Hands
			[GetSpellInfo(85222)] = {true,0,1,1,"HolyTrinityBar",12}, -- Light of Dawn
			[GetSpellInfo(31842)] = {true,0,1,1,"HolyTrinityBar",13}, -- Divine Favor
			[GetSpellInfo(853)] = {true,0.2,0.5,0.85,"HolyTrinityBar",14}, -- Hammer of Justice
			[GetSpellInfo(20473)] = {false,0,1,1,"HolyTrinityBar",15} -- Holy Shock
		}
	}
}
--[[Option Functions]]--
local function GetToggle(info)
	local self = HolyTrinity.db.profile
	local location,setting,value
	if info.arg[1] and info.arg[2] and info.arg[3] then
		location,setting,value = info.arg[1],info.arg[2],info.arg[3]
		return HolyTrinity.db.profile[location][setting][value]
	elseif info.arg[1] and info.arg[2] and not info.arg[3] then
		location,setting = info.arg[1],info.arg[2]
		return HolyTrinity.db.profile[location][setting]
	elseif info.arg[1] and not info.arg[2] and not info.arg[3] then
		location = info.arg[1]
		return HolyTrinity.db.profile[location]
	end
end

local function SetToggle(info)
	local self = HolyTrinity.db.profile
	local location,setting,value
	if info.arg[1] and info.arg[2] and info.arg[3] then
		location,setting,value = info.arg[1],info.arg[2],info.arg[3]
		HolyTrinity.db.profile[location][setting][value] = not HolyTrinity.db.profile[location][setting][value]
	elseif info.arg[1] and info.arg[2] and not info.arg[3] then
		location,setting = info.arg[1],info.arg[2]
		HolyTrinity.db.profile[location][setting] = not HolyTrinity.db.profile[location][setting]
	elseif info.arg[1] and not info.arg[2] and not info.arg[3] then
		location = info.arg[1]
		HolyTrinity.db.profile[location] = not HolyTrinity.db.profile[location]
	end	
	HT.UpdateAll()
end

local function GetValue(info)
	local val = info.arg[1]
	return HolyTrinity.db.profile[val] 
end

local function SetValue(info, v)
	local val = info.arg[1]
	HolyTrinity.db.profile[val] = v
	HT.UpdateAll()
end

local function GetColor(info)
	local val = info.arg[1]
	local c = HolyTrinity.db.profile[val]
	return c.r,c.g,c.b
end

local function SetColor(info,r,g,b)
	local val = info.arg[1]
	local c = HolyTrinity.db.profile[val]
	c.r,c.g,c.b = r,g,b
	HT.UpdateAll()
end

local function CooldownGetValue(info)
	local spell, val = info.arg[1], info.arg[2]
	return HolyTrinity.db.profile.CooldownList[spell][val]
end

local function CooldownSetValue(info, v)
	local spell, val = info.arg[1], info.arg[2]
	HolyTrinity.db.profile.CooldownList[spell][val] = v
	HT.UpdateAll()
end

local function CooldownGetColor(info)
	local val = info.arg[1]
	local c = HolyTrinity.db.profile.CooldownList[val]
	return c[2],c[3],c[4]
end

local function CooldownSetColor(info,r,g,b)
	local val = info.arg[1]
	local c = HolyTrinity.db.profile.CooldownList[val]
	c[2],c[3],c[4] = r,g,b
	HT.UpdateAll()
end

local function CooldownGetOrder(info)
	local val = info.arg[1]
	local c = HolyTrinity.db.profile.CooldownList[val]
	return c[6]
end

local function CooldownSetOrder(info,neworder)
	local val = info.arg[1]
	local c = HolyTrinity.db.profile.CooldownList[val]
	c[6] = neworder
	HT.UpdateAll()
end

local function AddonToggle()
	if HolyTrinity.db.profile.AddonEnabled then
		HolyTrinity:OnDisable()
	else
		HolyTrinity:OnEnable()
	end
	HolyTrinity.db.profile.AddonEnabled = not HolyTrinity.db.profile.AddonEnabled
end

local function PlayAlert()
	PlaySoundFile(HolyTrinity.db.profile.stringAlert);
end

--[[Create Option Table]]--

local options = {
	type = "group",
	order = 1,
	args = {
		AddOnHeader = {
			type = "header",
			order = 1,
			name = GetAddOnMetadata("HolyTrinity","Title").." v"..GetAddOnMetadata("HolyTrinity","version"),
		},
		Settings = {
			type = "group",
			order = 1,
			name = "Settings",
			args = {
				AddonToggle = {
					type = "toggle",
					order = 1,
					name = "Enable HolyTrinity",
					get = GetValue,
					set = AddonToggle,
					arg = {"AddonEnabled"},
				},
				Header = {
					type = "header",
					order = 2,
					name = "Settings",					
				},
				Posx = {
					type = "range",
					order = 3,
					name = "X",
					get =  GetValue,
					set = SetValue,
					arg = {"posx"},
					min = -2000,
					max = 2000,
					step = 1,
					isPercent = false,
				},
				Posy = {
					type = "range",
					order = 4,
					name = "Y",
					get =  GetValue,
					set = SetValue,
					arg = {"posy"},
					min = -2000,
					max = 2000,
					step = 1,
					isPercent = false,
				},
				Offx = {
					type = "range",
					order = 5,
					name = "X",
					get =  GetValue,
					set = SetValue,
					arg = {"offsetx"},
					min = -2000,
					max = 2000,
					step = 1,
					isPercent = false,
				},
				Offy = {
					type = "range",
					order = 6,
					name = "Y",
					get =  GetValue,
					set = SetValue,
					arg = {"offsety"},
					min = -2000,
					max = 2000,
					step = 1,
					isPercent = false,
				},
				HPColor = {
					type = "color",
					order = 9,
					name = "Holy Power Color",
					get = GetColor,
					set = SetColor,
					arg = {"hpcolor"},
				},
				HPTexture = {
					type = "select",
					order = 10,
					name = "Holy Power Texture",
					dialogControl = "LSM30_Statusbar",
					values = AceGUIWidgetLSMlists.statusbar,
					get = GetValue,
					set = SetValue,
					arg = {"statusbar"},
				},
				HPSpacing = {
					type = "range",
					order = 11,
					name = "Holy Power Spacing (X)",
					min = -256,
					max = 256,
					isPercent = false,
					get = GetValue,
					set = SetValue,
					arg = {"squeeze"},
				},
				HPSpacing2 = {
					type = "range",
					order = 12,
					name = "Holy Power Spacing (Y)",
					min = -256,
					max = 256,
					isPercent = false,
					get = GetValue,
					set = SetValue,
					arg = {"squeezey"},
				},
				HPSpacing3 = {
					type = "range",
					order = 13,
					name = "Holy Power Size (X)",
					min = -512,
					max = 512,
					isPercent = false,
					get = GetValue,
					set = SetValue,
					arg = {"spacerx"},
				},
				HPSpacing4 = {
					type = "range",
					order = 14,
					name = "Holy Power Size (Y)",
					min = -512,
					max = 512,
					isPercent = false,
					get = GetValue,
					set = SetValue,
					arg = {"spacery"},
				},
				CDSpacing = {
					type = "range",
					order = 15,
					name = "Cooldown Spacing",
					min = -50,
					max = 50,
					isPercent = false,
					get = GetValue,
					set = SetValue,
					arg = {"squeezeCD"},
				},
				Scale = {
					type = "range",
					order = 16,
					name = "Scale",
					get = GetValue,
					set = SetValue,
					min = 0.01,
					max = 1.3,
					step = 0.01,
					isPercent = true,
					arg = {"scale"},
				},
				break1 = {
					type = "header",
					order = 17,
					name = "Combat Fade",
				},
				UseFade = {
					type = "toggle",
					order = 18,
					name = "Use Combat Fade",
					get = GetToggle,
					set = SetToggle,
					arg = {"useFade",nil,nil}
				},
				LowFade = {
					type = "range",
					order = 16,
					name = "Low Fade Alpha",
					min = 0,
					max = 1,
					isPercent = true,
					get = GetValue,
					set = SetValue,
					arg = {"lowFade",nil,nil},
				},
				HighFade = {
					type = "range",
					order = 17,
					name = "High Fade Alpha",
					min = 0,
					max = 1,
					isPercent = true,
					get = GetValue,
					set = SetValue,
					arg = {"highFade",nil,nil},
				},
				CDFlip = {
					type = "toggle",
					order = 19,
					name = "Flip Cooldowns",
					get = GetToggle,
					set = SetToggle,
					arg = {"cdFlip",nil,nil}
				},
				ToggleHPBar = {
					type = "toggle",
					order = 20,
					name = "Display Holy Power (Requires ReloadUI)",
					get = GetToggle,
					set = SetToggle,
					arg = {"enableHP",nil,nil}
				},
				break2 = {
					type = "header",
					order = 25,
					name = "Audio Alert (3 Holy Power)",
				},
				UseAudioAlert = {
					type = "toggle",
					order = 26,
					name = "Enable Alert",
					get = GetToggle,
					set = SetToggle,
					arg = {"useAlert",nil,nil}
				},
				AudioAlert = {
					type = "select",
					order = 27,
					name = "Sound File",
					get = GetValue,
					set = SetValue,
					style = "dropdown",
					values = {
						["Sound\\Spells\\Sealofcrusader_impact.Wav"] = "Seal of the Crusader",
						["Sound\\Spells\\Sonichorncast.Wav"] = "Sonic Horn",
						["Sound\\Spells\\Ulduar_mimiron_plasmaball_cast_01.Wav"] = "Plasma Ball",
						["Sound\\Spells\\Ulduar_xt002_lightbomb.Wav"] = "Light Bomb",
						["Sound\\Spells\\Warrior_bloodbath.Wav"] = "Bloodbath",
						["Sound\\Spells\\Netherpowerimpact.Wav"] = "Nether Power",
						["Sound\\Spells\\Scorchimpact.Wav"] = "Scorch"
					},
					arg = {"stringAlert",nil,nil}
				},
				AudioPreview = {
					type = "execute",
					order = 28,
					name = "Preview",
					func = PlayAlert,
				},
				break3 = {
					type = "header",
					order = 30,
					name = "Collapse Cooldowns",
				},
				UseDynamicSort = {
					type = "toggle",
					order = 31,
					name = "Enable Collapsing",
					get = GetToggle,
					set = SetToggle,
					arg = {"dynamicSort",nil,nil}
				},
				UseDurationSort = {
					type = "toggle",
					order = 32,
					name = "Don't Check This Box",
					get = GetToggle,
					set = SetToggle,
					arg = {"sortByDuration",nil,nil}
				},
				[GetSpellInfo(86150)] = { -- Guardian of Ancient Kings
					type = "group",
					order = 1,
					name = GetSpellInfo(86150),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(86150),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(86150)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(86150)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(86150))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(86150)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(498)] = { -- Divine Protection
					type = "group",
					order = 2,
					name = GetSpellInfo(498),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(498),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(498)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(498)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(498))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(498)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(31850)] = { -- Ardent Defender
					type = "group",
					order = 3,
					name = GetSpellInfo(31850),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(31850),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(31850)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(31850)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(31850))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(31850)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(642)] = { -- Divine Shield
					type = "group",
					order = 4,
					name = GetSpellInfo(642),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(642),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(642)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(642)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(642))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(642)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(70940)] = { -- Divine Guardian
					type = "group",
					order = 5,
					name = GetSpellInfo(70940),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(70940),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(70940)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(70940)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(70940))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(70940)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(82327)] = { -- Holy Radiance
					type = "group",
					order = 6,
					name = GetSpellInfo(82327),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(82327),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(82327)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(82327)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(82327))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(82327)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(31821)] = { -- Aura Mastery
					type = "group",
					order = 7,
					name = GetSpellInfo(31821),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(31821),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(31821)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(31821)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(31821))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(31821)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(6940)] = { -- Hand of Sacrifice
					type = "group",
					order = 8,
					name = GetSpellInfo(6940),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(6940),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(6940)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(6940)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(6940))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(6940)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(1022)] = { -- Hand of Protection
					type = "group",
					order = 9,
					name = GetSpellInfo(1022),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(1022),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(1022)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(1022)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(1022))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(1022)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(1038)] = { -- Hand of Salvation
					type = "group",
					order = 10,
					name = GetSpellInfo(1038),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(1038),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(1038)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(1038)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(1038))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(1038)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(1044)] = { -- Hand of Freedom
					type = "group",
					order = 11,
					name = GetSpellInfo(1044),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(1044),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(1044)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(1044)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(1044))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(1044)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(54428)] = { -- Divine Plea
					type = "group",
					order = 12,
					name = GetSpellInfo(54428),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(54428),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(54428)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(54428)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(54428))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(54428)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(20066)] = { -- Repentance
					type = "group",
					order = 13,
					name = GetSpellInfo(20066),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(20066),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(20066)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(20066)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(20066))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(20066)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(31884)] = { -- Avenging Wrath
					type = "group",
					order = 14,
					name = GetSpellInfo(31884),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(31884),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(31884)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(31884)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(31884))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(31884)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(85696)] = { -- Zealotry
					type = "group",
					order = 15,
					name = GetSpellInfo(85696),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(85696),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(85696)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(85696)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(85696))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(85696)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(633)] = { -- Lay on Hands
					type = "group",
					order = 16,
					name = GetSpellInfo(633),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(633),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(633)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(633)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(633))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(633)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(85222)] = { -- Light of Dawn
					type = "group",
					order = 17,
					name = GetSpellInfo(85222),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(85222),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(85222)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(85222)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(85222))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(85222)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(31842)] = { -- Divine Favor
					type = "group",
					order = 18,
					name = GetSpellInfo(31842),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(31842),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(31842)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(31842)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(31842))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(31842)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(853)] = { -- Hammer of Justice
					type = "group",
					order = 19,
					name = GetSpellInfo(853),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(853),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(853)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(853)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(853))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(853)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},
				[GetSpellInfo(20473)] = { -- Holy Shock
					type = "group",
					order = 20,
					name = GetSpellInfo(20473),
					args = {
						Header = {
							type = "header",
							order = 1,
							name = GetSpellInfo(20473),
						},
						Enable = {
							type = "toggle",
							order = 2,
							name = "Enable Cooldown",
							get = GetToggle,
							set = SetToggle,
							arg = {"CooldownList",(GetSpellInfo(20473)),1}
						},
						Texture = {
							type = "select",
							order = 3,
							name = "Texture",
							dialogControl = "LSM30_Statusbar",
							values = AceGUIWidgetLSMlists.statusbar,
							get = CooldownGetValue,
							set = CooldownSetValue,
							arg = {(GetSpellInfo(20473)),5}
						},
						Color = {
							type = "color",
							order = 4,
							name = "Color",
							get = CooldownGetColor,
							set = CooldownSetColor,
							arg = {(GetSpellInfo(20473))},							
						},
						DisplayOrder = {
							type = "range",
							order = 5,
							name = "Display Order",
							get = CooldownGetOrder,
							set = CooldownSetOrder,
							arg = {(GetSpellInfo(20473)),6},
							min = 0,
							max = 20,
							step = 1,
							isPercent = false,
						},
					},
				},

			},
		},
		
		
		
		About = {
			type = "group",
			order = 3,
			name = "About",
			args = {
				Header = {
					type = "header",
					order = 1,
					name = "About",
				},
				Description = {
					type = "description",
					order = 2,
					name = "A lightweight Holy Power tool based on Suicidal Katt's SoulBurned.\n\nCurrently in testing phases for Cataclysm.\n\nEmail psiven@gmail.com for help, bug reporting, and suggestions.\n\nCommands:\n   /holytrinity",
				},
			},
		},
	},
}
function HolyTrinity:RegisterOptions()
	local db = LibStub('AceDB-3.0'):New('HolyTrinityDB', Defaults, 'Default')
	self.db = db
	
	function HolyTrinity:Update()
		HT:UpdateAll()
	end
	
	local RegisterCallback = db.RegisterCallback
	
	RegisterCallback(self, 'OnProfileChanged', 'Update')
	RegisterCallback(self, 'OnProfileCopied', 'Update')
	RegisterCallback(self, 'OnProfileReset', 'Update')
	
	local profile = LibStub('AceDBOptions-3.0'):GetOptionsTable(self.db)
	local AceConfig = LibStub('AceConfigRegistry-3.0')
	local dialog = LibStub('AceConfigDialog-3.0')
	
	AceConfig:RegisterOptionsTable("HolyTrinity Options", options)
	AceConfig:RegisterOptionsTable("HolyTrinity Profiles",  profile)
	self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("HolyTrinity Options", "HolyTrinity Options")
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("HolyTrinity Profiles", 'Profiles', "HolyTrinity Options")
	
	self:RegisterChatCommand("holytrinity", function () InterfaceOptionsFrame_OpenToCategory(self.optionsFrame) end)
end
