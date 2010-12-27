﻿local AtlasLoot = _G.AtlasLoot
--Invoke libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

local GREY = "|cff999999";
local RED = "|cffff0000";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";

local options, moduleOptions = nil, {}
local getOptions

do
 	local function getOpt(info)
		return AtlasLoot.db.profile[info[#info]]
	end
	
	local function setOpt(info, value)
		AtlasLoot.db.profile[info[#info]] = value
		return AtlasLoot.db.profile[info[#info]]
	end
	
	local function resetButton(info)
		AtlasLoot:Reset(info[#info])
	end

	function getOptions()
		if not options then
			options = {
				type = "group",
				args = {
					general = {
						type = "group",
						inline = true,
						name = "",
						args = {
							all = {						
								type = "group",
								inline = true,
								name = "",
								order = 10,
								args = {
									LoadAllLoDStartup = {
										type = "toggle",
										name = AL["Load Loot Modules at Startup"],
										--desc = ,
										order = 10,
										get = getOpt,
										set = setOpt,
										width = "full",
									},
									HideMiniMapButton = {
										type = "toggle",
										name = AL["Minimap Button"],
										--desc = ,
										order = 20,
										get = function() return not AtlasLoot.db.profile.MiniMapButton.hide end,
										set = AtlasLoot.MiniMapButtonHideShow,
									},
									
								},
							},
							itemButton = {						
								type = "group",
								inline = true,
								name = AL["Item Buttons"],
								order = 30,
								args = {
									ItemIDs = {
										type = "toggle",
										name = AL["Show itemIDs"],
										desc = AL["Show itemIDs at all times"],
										order = 10,
										get = getOpt,
										set = setOpt,
									},
									DropRate = {
										type = "toggle",
										name = AL["Show Droprates"],
										--desc = ,
										order = 20,
										get = getOpt,
										set = setOpt,
									},
									SafeLinks = {
										type = "toggle",
										name = AL["Safe Chat Links"],
										--desc = ,
										order = 30,
										get = getOpt,
										set = setOpt,
									},
									EquipCompare = {
										type = "toggle",
										name = AL["Comparison TT"],
										desc = AL["Show Comparison Tooltips"],
										order = 40,
										get = getOpt,
										set = AtlasLoot.OptionsComparisonTT,
									},
									ItemSpam = {
										type = "toggle",
										name = AL["Supress item query text"],
										--desc = ,
										order = 50,
										get = getOpt,
										set = setOpt,
										width = "full",
									},
									ShowPriceAndDesc = {
										type = "toggle",
										name = AL["Show price and slot if possible"],
										--desc = ,
										order = 60,
										get = getOpt,
										set = setOpt,
										width = "full",
									},
									UseGameTooltip = {
										type = "toggle",
										name = AL["Use GameTooltip"],
										desc = AL["Use the standard GameTooltip instead of the custom AtlasLoot tooltip"],
										order = 70,
										get = getOpt,
										set = function(info, value)
											setOpt(info, value)
											AtlasLoot:SetupTooltip()
											return value
										end,
										width = "full",
									},
								},
							},
							
							lootTable = {						
								type = "group",
								inline = true,
								name = AL["Loot Table"],
								order = 30,
								args = {
									--[[
									Opaque = {
										type = "toggle",
										name = AL["Opaque"],
										desc = AL["Make Loot Table Opaque"],
										order = 10,
										get = getOpt,
										set = setOpt,
									},
									]]
									CraftingLink = {
										type = "select",
										name = AL["Treat Crafted Items:"],
										--desc = ,
										values = { AL["As Crafting Spells"], AL["As Items"] },
										order = 20,
										get = getOpt,
										set = setOpt,
									},
								},
							},


							defaultFrameScale = {
								type = "group",
								inline = true,
								name = AL["Default Frame"],
								order = 40,
								args = {
									LootBrowserScale = {
										type = "range",
										name = AL["Scale:"],
										--desc = ,
										min = 0.50, max = 1.5, bigStep = 0.01,
										get = getOpt,
										set = function(info, value)
											setOpt(info, value)
											if AtlasLoot.DefaultFrame_RefreshScale then AtlasLoot:DefaultFrame_RefreshScale() end
										end,
										order = 1,
										width = "full",
									},
									LootBrowserAlpha = {
										type = "range",
										name = AL["Alpha:"],
										--desc = ,
										min = 0.25, max = 1, bigStep = 0.01,
										get = getOpt,
										set = function(info, value)
											setOpt(info, value)
											if AtlasLoot.DefaultFrame_RefreshAlpha then AtlasLoot:DefaultFrame_RefreshAlpha() end
										end,
										order = 2,
										width = "full",
									},
									--[[
									LootBrowserAlphaOnLeave = {
										type = "toggle",
										name = AL["Only change alpha on leave frame"],
										--desc = ,
										order = 3,
										get = getOpt,
										set = setOpt,
										width = "full",
									},
									]]--
								},
							},

							resetButtons = {
								type = "group",
								inline = true,
								name = "",
								order = 100,
								args = {
									--[[wishlist = {
										type = "execute",
										name = AL["Reset Wishlist"],
										--desc = ,
										func = resetButton,
										order = 1,
									},]]
									frames = {
										type = "execute",
										name = AL["Reset Frames"],
										--desc = ,
										func = resetButton,
										order = 2,
									},
									quicklooks = {
										type = "execute",
										name = AL["Reset Quicklooks"],
										--desc = ,
										func = resetButton,
										order = 3,
									},
								},
							},
						},
					},	
					
					Help = {
						type = "group",
						name = AL["Help"],
						order = 600,
						childGroups = "tab",
						args = {
							websiteLink = {
								type = "description",
								name = GREY..AL["For further help, see our website and forums: "]..GREEN.."http://www.atlasloot.net",
								order = 500,
							},
						},
					},	
				},

			}
			-- Create help
			for k,v in ipairs(AtlasLoot.AddonInfo.help) do
				options.args.Help.args[tostring(k)] = {
					type = "description",
					name = string.format("%s%s\n%s%s", ORANGE, v[1] or "?", WHITE, v[2] or "?"),
					order = k,
				}
			end
			AtlasLoot.AddonInfo.help = nil
		end
		for k,v in pairs(moduleOptions) do
			options.args[k] = (type(v) == "function") and v() or v
		end
		return options

	end

end

--[[
AtlasLoot:OptionsInitialize()
]]
function AtlasLoot:OptionsInitialize()
	if self.optFrames then return end
	self.optFrames = {}
	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("AtlasLoot", getOptions)
	--LibStub("AceConfigRegistry-3.0"):NotifyChange("AtlasLoot")
	self.optFrames.AtlasLoot = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("AtlasLoot", "AtlasLoot", nil, "general")
	self:RegisterModuleOptions("Profiles", LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db), AL["Profiles"])
	self.optFrames.Help = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("AtlasLoot", AL["Help"], "AtlasLoot", "Help")
end

--- Adds a OptionsSubCat 
-- @param name the name of the option
-- @param optFunc the funtion that returns the options table
-- @param displayName the displayed options name
-- @usage AtlasLoot:RegisterModuleOptions(name, optFunc, displayName)
function AtlasLoot:RegisterModuleOptions(name, optFunc, displayName)
	if not self.optFrames then self:OptionsInitialize() end
	if moduleOptions[name] then self:RefreshModuleOptions() return end
	moduleOptions[name] = optFunc
	self.optFrames[name] = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("AtlasLoot", displayName or name, "AtlasLoot", name)
end

function AtlasLoot:OpenModuleOptions(module)
	LibStub("AceConfigDialog-3.0"):Open("AtlasLoot", nil, module)
end

function AtlasLoot:RefreshModuleOptions()
	LibStub("AceConfigRegistry-3.0"):NotifyChange("AtlasLoot")
end

--
function AtlasLoot:OptionsComparisonTT()
	if(AtlasLoot.db.profile.EquipCompare) then
		AtlasLoot.db.profile.EquipCompare = false;
		if (EquipCompare_UnregisterTooltip) then
			EquipCompare_UnregisterTooltip(AtlasLootTooltip);
		end
	else
		AtlasLoot.db.profile.EquipCompare = true;
		if (EquipCompare_RegisterTooltip) then
			EquipCompare_RegisterTooltip(AtlasLootTooltip);
		end
	end
end

--- Shows the AtlasLoot Options
function AtlasLoot:OptionsToggle()
	InterfaceOptionsFrame_OpenToCategory("AtlasLoot")
end
-- Hides the AtlasLoot Panel
function AtlasLoot:OptionsHidePanel()
	if AtlasLoot.db.profile.HidePanel then
		AtlasLoot.db.profile.HidePanel = false;
		AtlasLootPanel:Show()
	else
		AtlasLoot.db.profile.HidePanel = true;
		AtlasLootPanel:Hide()
	end
end

do
	local Authors = {}
	local Friends = {}
	
	for k,v in pairs(AtlasLoot.AddonInfo.authors) do
		if v.ingame then
			for _,name in ipairs(v.ingame) do
				local a,b = string.split("@", name)
				if a and b then
					Authors[a] = b
				end
			end
			v.ingame = nil
		end
		if v.friends then
			for _,name in ipairs(v.friends) do
				local a,b = string.split("@", name)
				if a and b then
					Friends[a] = b
				end
			end
			v.friends = nil
		end
	end

	function AtlasLoot:HookUnitTarget()
		local name = GameTooltip:GetUnit()
		if UnitName("mouseover") == name then 
			local _, realm = UnitName("mouseover")
			if not realm then 
				realm = GetRealmName()
			end
			if name and ( Authors[name] or Friends[name] ) then
				if Authors[name] == realm then
					GameTooltip:AddLine("AtlasLoot Author |T"..AtlasLoot.imagePath.."gold:0|t", 0, 1, 0 )
				elseif Friends[name] == realm then
					GameTooltip:AddLine("AtlasLoot Friend |T"..AtlasLoot.imagePath.."silver:0|t", 0, 1, 0 )
				end
			end
		end
	end
	GameTooltip:HookScript("OnTooltipSetUnit", AtlasLoot.HookUnitTarget)
end
