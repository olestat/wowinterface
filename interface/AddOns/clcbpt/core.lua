-- get beacon and ss buff names from the spells
local buffBoL = GetSpellInfo(53563)
local buffJotP = GetSpellInfo(53655)

local layoutPlayerBars = { "jotp", "bol" }

local clcbpt = LibStub("AceAddon-3.0"):NewAddon("clcbpt", "AceEvent-3.0", "AceConsole-3.0")
local Media = LibStub("LibSharedMedia-3.0", true)

DEFAULT_LSM_FONT = Media:GetDefault("font")
DEFAULT_LSM_TEXTURE = 'Minimalist'
DEFAULT_LSM_SOUND = 'BellTollNightElf'

-- register the sound I used so far
if not Media:IsValid('sound', 'BellTollNightElf') then
	Media:Register('sound', 'BellTollNightElf', 'Sound\\Doodad\\BellTollNightElf.wav')
end
-- there seems to be no sound in LSM without other addons, so set the bell default
if DEFAULT_LSM_SOUND == "None" then
	DEFAULT_LSM_SOUND = 'BellTollNightElf'
end

-- register the minimalist texture too
if not Media:IsValid('statusbar', 'Minimalist') then
	Media:Register('statusbar', 'Minimalist', 'Interface\\AddOns\\clcbpt\\textures\\minimalist')
end

local bgtex = 'Interface\\AddOns\\clcbpt\\textures\\minimalist'

local db
local scanDelay

local GetTime = GetTime

-- default options
-- default values
local defaults = {
	char = {
		performance = {
			barFPS = 20,
			scanFrequency = 2,
		},
		player = {
			growth = "normal",
			x = 400,
			y = 400,
			width = 200,
			height = 9,
			font = 9,
			fontName = DEFAULT_LSM_FONT,
			bars = {
				bol = {
					color = {1, 0, 0, 1},
					texture = DEFAULT_LSM_TEXTURE,
					sound = DEFAULT_LSM_SOUND,
					soundWarn = true,
					pulseWarn = true,
					enabled = true,
					warnTimer = 0,
				},
				jotp = {
					color = {1, 1, 0, 1},
					texture = DEFAULT_LSM_TEXTURE,
					sound = DEFAULT_LSM_SOUND,
					soundWarn = true,
					pulseWarn = true,
					enabled = true,
					warnTimer = 0,
				},
			},
		},		
		warn = {
			sound = true,
			pulse = true,
			pulseDuration = 2,
			timer = 3,
			pulseMin = 100,
			pulseMax = 150,
			x = 0,
			y = 0,
		},
	}
}

local options = {
	type = "group",
	args = {
		-- anchors
		anchors = {
			type = "execute",
			name = "Anchors",
			func = function()
				clcbpt:ToggleAnchors()
			end,
		},
		
		-- scan frequency
		scans = {
			type = "range",
			name = "Scans per second",
			min = 1,
			max = 10,
			step = 1,
			get = function(info) return db.performance.scanFrequency end,
			set = function(info, val)
				db.performance.scanFrequency = val
				scanDelay = 1 / db.performance.scanFrequency
			end,
		},
		
		-- warnings
		warnings = {
			type = "group",
			name = "Warnings",
			order = 3,
			args = {
				soundToggle = {
					type = "toggle",
					name = "Sound Warnings",
					get = function(info) return db.warn.sound end,
					set = function(info, val) db.warn.sound = val end,
			
				},
				pulseToggle = {
					type = "toggle",
					name = "Pulse Warnings",
					get = function(info) return db.warn.pulse end,
					set = function(info, val) db.warn.pulse = val end,
			
				},
				warnTimer = {
					type = "range",
					name = "Warn Time",
					min = 1,
					max = 60,
					step = 1,
					bigStep = 1,
					get = function(info) return db.warn.timer end,
					set = function(info, val)
						db.warn.timer = val
						clcbpt:UpdateWarnTimers()
					end,
				},
				pulseDuration = {
					type = "range",
					name = "Pulse Duration",
					min = 1,
					max = 10,
					step = 1,
					bigStep = 1,
					get = function(info) return db.warn.pulseDuration end,
					set = function(info, val) db.warn.pulseDuration = val end,
				},
				pulseSizeMin = {
					type = "range",
					name = "Pulse Size Min",
					min = 10,
					max = 400,
					step = 1,
					bigStep = 10,
					get = function(info) return db.warn.pulseMin end,
					set = function(info, val)
						db.warn.pulseMin = val
						clcbpt:NewPulse("Interface\\Icons\\ability_paladin_beaconoflight")
					end,
				},
				pulseSizeMax = {
					type = "range",
					name = "Pulse Size Max",
					min = 15,
					max = 500,
					step = 1,
					bigStep = 10,
					get = function(info) return db.warn.pulseMax end,
					set = function(info, val)
						db.warn.pulseMax = val
						clcbpt:NewPulse("Interface\\Icons\\ability_paladin_beaconoflight")
					end,
				},
				pulsePosX = {
					type = "range",
					name = "Pulse Position Horizontal",
					min = -2000,
					max = 2000,
					step = 1,
					bigStep = 10,
					get = function(info) return db.warn.x end,
					set = function(info, val)
						db.warn.x = val
						clcbpt:NewPulse("Interface\\Icons\\ability_paladin_beaconoflight")
					end,
				},
				pulsePosY = {
					type = "range",
					name = "Pulse Position Vertical",
					min = -2000,
					max = 2000,
					step = 1,
					bigStep = 10,
					get = function(info) return db.warn.y end,
					set = function(info, val)
						db.warn.y = val
						clcbpt:NewPulse("Interface\\Icons\\ability_paladin_beaconoflight")
					end,
				},
			}
		}, 
		
		-- bars
		player = {
			type = "group",
			name = "Player",
			order = 1,
			args = {
				growth = {
					order = 1,
					type = "select",
					name = "Growth",
					get = function(info) return db.player.growth end,
					set = function(info, val) db.player.growth = val end,
					values = { normal = "Normal", reverse1 = "Reverse", reverse2 = "Reverse and keep order" }
				},
				width = {
					type = "range",
					name = "Width",
					min = 10,
					max = 400,
					step = 1,
					bigStep = 10,
					order = 5,
					get = function(info) return db.player.width end,
					set = function(info, val)
						db.player.width = val
						clcbpt:PlayerBarsUpdateLayout()
					end,
				},
				height = {
					type = "range",
					name = "Height",
					min = 5,
					max = 100,
					step = 1,
					bigStep = 5,
					order = 6,
					get = function(info) return db.player.height end,
					set = function(info, val)
						db.player.height = val
						clcbpt:PlayerBarsUpdateLayout()
					end,
				},
				font = {
					type = "range",
					name = "Font",
					min = 5,
					max = 50,
					step = 1,
					bigStep = 1,
					order = 10,
					get = function(info) return db.player.font end,
					set = function(info, val)
						db.player.font = val
						clcbpt:PlayerBarsUpdateLayout()
					end,
				},
				fontName = {
					name = "Font Family",
					type = "select",
					order = 11,
					get = function()
						return db.player.fontName
					end,
					set = function(info, value)
						db.player.fontName = value
						clcbpt:PlayerBarsUpdateLayout()
					end,
					values = Media:HashTable('font'),
					dialogControl = 'LSM30_Font',
				},
			},
		},
	}
}

function clcbpt:AddPlayerBarsOptions()
	for _, name in ipairs(layoutPlayerBars) do
		options.args.player.args[name] = {
			type = "group",
			name = name,
			order = 2,
			args = {
				enabled = {
					type = "toggle",
					name = "Enabled",
					order = 1,
					get = function(info) return db.player.bars[name].enabled end,
					set = function(info, val)
						db.player.bars[name].enabled = val
					end,
				},
				color = {
					type = "color",
					name = "color",
					order = 2,
					hasAlpha = true,
					get = function(info) return unpack(db.player.bars[name].color) end,
					set = function(info, r, g, b, a)
						db.player.bars[name].color = {r, g, b, a}
						clcbpt:PlayerBarUpdateLayout(name)
					end,
				},
				texture = {
					name = "texture",
					type = "select",
					order = 3,
					get = function()
						return db.player.bars[name].texture
					end,
					set = function(info, value)
						db.player.bars[name].texture = value
						clcbpt:PlayerBarUpdateLayout(name)
					end,
					values = Media:HashTable('statusbar'),
					dialogControl = 'LSM30_Statusbar',
				},
				sound = {
					name = "sound",
					type = "select",
					order = 4,
					get = function()
						return db.player.bars[name].sound
					end,
					set = function(info, value)
						db.player.bars[name].sound = value
					end,
					values = Media:HashTable('sound'),
					dialogControl = 'LSM30_Sound',
				},
				pulseWarn = {
					type = "toggle",
					name = "Pulse Warning",
					order = 5,
					get = function(info) return db.player.bars[name].pulseWarn end,
					set = function(info, val)
						db.player.bars[name].pulseWarn = val
					end,
				},
				soundWarn = {
					type = "toggle",
					name = "Sound Warning",
					order = 6,
					get = function(info) return db.player.bars[name].soundWarn end,
					set = function(info, val)
						db.player.bars[name].soundWarn = val
					end,
				},
				warnTimer = {
					order = 10,
					type = "range",
					name = "Warn Time (0 to use global value)",
					min = 0,
					max = 120,
					step = 1,
					get = function(info) return db.player.bars[name].warnTimer end,
					set = function(info, val)
						db.player.bars[name].warnTimer = val
						clcbpt:UpdateWarnTimers()
					end
				},
			}
		}
	end
end

local roster = { "player" }

local playerBars = {}
local orderPlayerBars
local totalPlayerBars

local updateStepBars
local scanDelay

local showAnchors = false

local pulse


local throttleCheckAuras = 0
local throttleBarsUpdate = 0
local function OnUpdate(self, elapsed)
	clcbpt:PulseUpdate()

	throttleBarsUpdate = throttleBarsUpdate + elapsed
	if throttleBarsUpdate > 0.1 then
		clcbpt:PlayerBarsUpdate()
		throttleBarsUpdate = 0
	end

	throttleCheckAuras = throttleCheckAuras + elapsed
	if throttleCheckAuras > scanDelay then
		clcbpt:CheckAuras()
		throttleCheckAuras = 0
	end
end


function clcbpt:OnInitialize()
	-- SAVEDVARS
	self.db = LibStub("AceDB-3.0"):New("clcbptDB", defaults)
	db = self.db.char
	
	-- throttles
	updateStepBars = 1 / db.performance.barFPS
	scanDelay = 1 / db.performance.scanFrequency
	
	player = UnitName("player")
	
	-- options
	self:AddPlayerBarsOptions()
	
	local AceConfig = LibStub("AceConfig-3.0")
	AceConfig:RegisterOptionsTable("clcbpt", options)
	
	local AceConfigDialog = LibStub("AceConfigDialog-3.0")
	AceConfigDialog:AddToBlizOptions("clcbpt")
	
	-- register chat commands
	-- self:RegisterChatCommand("rl", ReloadUI)
	self:RegisterChatCommand("clcbpt", function() InterfaceOptionsFrame_OpenToCategory("clcbpt") end)
	
	-- roster
	self:RegisterEvent("PARTY_MEMBERS_CHANGED", "UpdateRoster")
	self:RegisterEvent("RAID_ROSTER_UPDATE", "UpdateRoster")
	self:RegisterEvent("ADDON_LOADED")
	
	
	-- create anchors
	self:CreateAnchor("Player", db.player.width, db.player.height, db.player.x, db.player.y)
	
	self:CreatePulse()
	self:SetupPlayerBars()
	self:PlayerBarsUpdateLayout()
	self:UpdateWarnTimers()
	
	-- update frame
	self.uf = CreateFrame("Frame")
	self.uf:SetScript("OnUpdate", OnUpdate)
end


function clcbpt:UpdateWarnTimers()
	for _, name in ipairs(layoutPlayerBars) do
		if db.player.bars[name].warnTimer > 0 then
			playerBars[name].warnTimer = db.player.bars[name].warnTimer
		else
			playerBars[name].warnTimer = db.warn.timer
		end
	end
end


-- update the textures
function clcbpt:ADDON_LOADED()
	self:PlayerBarsUpdateLayout()
end


function clcbpt:CreatePulse()
	local frame = CreateFrame("Frame", "clcPulse", UIParent)
	frame.icon = frame:CreateTexture(nil, "BACKGROUND")
	frame.icon:SetAllPoints()
	frame.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
	frame:Hide()
	
	pulse = frame
	pulse.start = 0
	pulse.duration = 0
end
function clcbpt:NewPulse(icon)
	-- update position too, for the "interactive" options
	local opt = db.warn
	pulse:SetPoint("CENTER", UIParent, opt.x, opt.y)
	pulse.start = GetTime()
	pulse.duration = opt.pulseDuration

	pulse.icon:SetTexture(icon)
	pulse:SetWidth(opt.pulseMax)
	pulse:SetHeight(opt.pulseMax)
	pulse:SetAlpha(1)
	
	pulse:Show()
end
function clcbpt:PulseUpdate()
	local current = GetTime() - pulse.start
	if current > pulse.duration then
		pulse:Hide()
		return
	end
	
	-- last 1s pulse
	---[[
	local opt = db.warn
	if (pulse.duration - current) < 1 then
		current = pulse.duration - current
		local size = opt.pulseMin + (opt.pulseMax - opt.pulseMin) * current
		pulse:SetWidth(size)
		pulse:SetHeight(size)
		pulse:SetAlpha(current)
	end
end

-- warning function
function clcbpt:Warn(name)
	local bar = playerBars[name]
	local opt = db.player.bars[name]

	if db.warn.sound and opt.soundWarn then
		PlaySoundFile(Media:Fetch('sound', opt.sound))
	end
	
	if db.warn.pulse and opt.pulseWarn then
		self:NewPulse(bar.optIcon)
	end
end


function clcbpt:UpdateRoster()
	local xr = { "boss1", "boss2", "boss3", "boss4", "boss5" } -- roster
	
	local unit, pet
	if GetNumRaidMembers() > 0 then
		for i = 1, 40 do 
			unit = "raid" .. i
			pet = unit .. "pet"
			if UnitExists(unit) then table.insert(xr, unit) end
			if UnitExists(pet) then table.insert(xr, pet) end
		end
	else
		table.insert(xr, "player")
		if GetNumPartyMembers() > 0 then
			for i = 1, 4 do 
				unit = "party" .. i
				pet = unit .. "pet"
				if UnitExists(unit) then table.insert(xr, unit) end
				if UnitExists(pet) then table.insert(xr, pet) end
			end
		end
	end
			
	roster = xr
end


function clcbpt:CheckAuras()
	local name, icon, duration, expirationTime, caster, targetName
	
	-- total number of playerBars
	totalPlayerBars = 0
	
	-- jotp check
	if db.player.bars["jotp"].enabled then
		name, _, _, _, _, duration, expirationTime = UnitBuff("player", buffJotP, nil, "PLAYER")
		self:UpdatePlayerBarData("jotp", duration or 0, expirationTime or 0, "JotP")
		if duration then
			totalPlayerBars = 1
		end
	end
	
	local nobol = true

	---[[
	local i
	for _, unit in ipairs(roster) do
		if UnitExists(unit) then
			-- check BoL
			if db.player.bars["bol"].enabled then
				if nobol then
					name, _, _, _, _, duration, expirationTime = UnitBuff(unit, buffBoL, nil, "PLAYER")
					if name then
						nobol = false
						self:UpdatePlayerBarData("bol", duration, expirationTime, UnitName(unit))
					end
				end
			end
		end
	end
	
	if db.player.bars["bol"].enabled then
		if nobol then
			self:UpdatePlayerBarData("bol", 0, 0, "")
		else
			totalPlayerBars = totalPlayerBars + 1
		end
	end
end


function clcbpt:UpdatePlayerBarData(name, duration, expirationTime, targetName)
	local bar = playerBars[name]
	bar.oldExpirationTime = bar.expirationTime
	bar.expirationTime = expirationTime
	bar.duration = duration
	
	-- buff refresh
	if bar.oldExpirationTime < bar.expirationTime then
		bar.warn = true
	end
	
	-- title of the bar
	if bar.targetName ~= targetName then
		bar.targetName = targetName
		bar.label:SetText(targetName)
	end
end


function clcbpt:SetupPlayerBars()
	-- jotp, bol, ss bars
	self:CreatePlayerBar("jotp", "Interface\\Icons\\ability_paladin_judgementofthepure")
	self:CreatePlayerBar("bol", "Interface\\Icons\\ability_paladin_beaconoflight")
end


-- player bars update
----------------------------------------------------------------------------
function clcbpt:PlayerBarsUpdate()
	orderPlayerBars = 1
	-- jotp, bol
	for _, name in ipairs(layoutPlayerBars) do
		self:PlayerBarUpdate(name)
	end
	orderPlayerBars = orderPlayerBars - 1
end
function clcbpt:PlayerBarUpdate(name)
	if not db.player.bars[name].enabled then
		playerBars[name]:Hide()
		return
	end

	local bar = playerBars[name]
	local opt = db.player
	local optBar = db.player.bars[name]

	local xtime = GetTime()
	remaining = bar.expirationTime - xtime
	if remaining <= 0 then
		if bar.warn then
			bar.warn = false
			self:Warn(name)
		end
		bar:Hide()
		return
	end
	
	bar:Show()
	
	-- check for warn
	if remaining <= bar.warnTimer and bar.warn then
		bar.warn = false -- only do it one time
		self:Warn(name)
	end
	
	local width, height
	width = opt.width - opt.height
	height = opt.height
	
	bar:SetWidth(width)
	bar:SetHeight(height)
	bar.icon:SetWidth(height)
	bar.icon:SetHeight(height)
	
	local progress = width * remaining / bar.duration - width
	local texture = bar.texture
	texture:SetPoint("RIGHT", bar, "RIGHT", progress, 0)
	
	local spark = bar.spark
	spark:SetPoint("TOP", texture, "TOPRIGHT", 0, 7)
	spark:SetPoint("BOTTOM", texture, "BOTTOMRIGHT", 0, -7)
	
	bar.labelTimer:SetText(floor(remaining + 0.5))
	
	if db.player.growth == "reverse1" then
		bar:SetPoint("TOPLEFT", "clcbptAnchorsPlayer", "TOPLEFT", opt.height, -opt.height * (orderPlayerBars - 1)) 
	elseif db.player.growth == "reverse2" then
		bar:SetPoint("TOPLEFT", "clcbptAnchorsPlayer", "BOTTOMLEFT", opt.height, opt.height * orderPlayerBars - totalPlayerBars * opt.height) 
	else
		bar:SetPoint("TOPLEFT", "clcbptAnchorsPlayer", "BOTTOMLEFT", opt.height, opt.height * orderPlayerBars) 
	end
	orderPlayerBars = orderPlayerBars + 1
end
----------------------------------------------------------------------------

-- update the look of the player bars
----------------------------------------------------------------------------
function clcbpt:PlayerBarsUpdateLayout()
	for name, _ in pairs(playerBars) do
		self:PlayerBarUpdateLayout(name)
	end
	
	-- adjust width and height for anchor
	clcbptAnchorsPlayer:SetWidth(db.player.width)
	clcbptAnchorsPlayer:SetHeight(db.player.height)
end
function clcbpt:PlayerBarUpdateLayout(name)
	local bar = playerBars[name]
	local opt = db.player
	local optBar = db.player.bars[name]
	
	-- color
	bar.texture:SetVertexColor(unpack(optBar.color))
	-- texture
	bar.texture:SetTexture(Media:Fetch('statusbar', optBar.texture))
	-- font size and family
	local _, _, fontFlags = bar.label:GetFont()
	local fontName = Media:Fetch("font", opt.fontName)
	bar.label:SetFont(fontName, opt.font, fontFlags)
	bar.labelTimer:SetFont(fontName, opt.font, fontFlags)
	-- normal update
	-- self:PlayerBarUpdate(name)
end
----------------------------------------------------------------------------



function clcbpt:CreateBarFrame(name)
	local frame = CreateFrame("Frame", "clcbpt"..name, UIParent)
	frame.texture = frame:CreateTexture(nil, "ARTWORK")
	
	frame.bgtexture = frame:CreateTexture(nil, "BACKGROUND")
	frame.bgtexture:SetAllPoints()
	frame.bgtexture:SetVertexColor(0, 0, 0, 0.5)
	frame.bgtexture:SetTexture(bgtex)
	
	local spark = frame:CreateTexture(nil, "OVERLAY")
	spark:SetTexture([[Interface\CastingBar\UI-CastingBar-Spark]])
	spark:SetWidth(10)
	spark:SetHeight(10)
	spark:SetBlendMode("ADD")
	spark:SetTexCoord(0, 1, 0, 1)
	frame.spark = spark
	
	frame.label = frame:CreateFontString(nil, "OVERLAY", "ChatFontNormal")
	frame.label:ClearAllPoints()
	frame.label:SetPoint("LEFT", frame, "LEFT", 3, 0)
	
	frame.labelTimer = frame:CreateFontString(nil, "OVERLAY", "ChatFontNormal")
	frame.labelTimer:ClearAllPoints()
	frame.labelTimer:SetPoint("RIGHT", frame, "RIGHT", -3, 0)
	
	frame.icon = frame:CreateTexture(nil, "OVERLAY")
	frame.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)

	return frame
end


function clcbpt:CreatePlayerBar(name, icon)
	playerBars[name] = self:CreateBarFrame(name)
	local bar = playerBars[name]
	
	-- options
	bar.optIcon = icon
	bar.duration = 0
	bar.expirationTime = 0
	bar.oldExpirationTime = 0
	bar.warn = false
	bar.targetName = ""
	
	local texture = bar.texture
	texture:SetAllPoints()
	
	local iconTex = bar.icon
	iconTex:SetTexture(icon)
	iconTex:SetPoint("RIGHT", bar, "LEFT", 0, 0)
	iconTex:SetTexCoord(0.07, 0.93, 0.07, 0.93)
	
	bar:Hide()
end



function clcbpt:AnchorsStopMovingOrSizing()
	db.player.x = clcbptAnchorsPlayer:GetLeft()
	db.player.y = clcbptAnchorsPlayer:GetBottom()
end

-- create an anchor frame
function clcbpt:CreateAnchor(name, width, height, x, y)
	local frame = CreateFrame("Frame", "clcbptAnchors" .. name, UIParent)
	frame:Hide()

	frame:SetWidth(width)
	frame:SetHeight(height)
	frame:SetPoint("BOTTOMLEFT", UIParent, x, y)
	
	local texture = frame:CreateTexture(nil, "BACKGROUND")
	texture:SetAllPoints()
	texture:SetTexture(bgtex)
	texture:SetVertexColor(0, 0, 0, 1)

	frame:EnableMouse(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetMovable(true)
	frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		clcbpt:AnchorsStopMovingOrSizing()
	end)

	local cheader = frame:CreateFontString(nil, "OVERLAY")
	cheader:ClearAllPoints()
	cheader:SetWidth(150)
	cheader:SetHeight(30)
	cheader:SetPoint("BOTTOM", frame, "TOP", 10, 0)
	cheader:SetFont("Fonts\\FRIZQT__.TTF", 12)
	cheader:SetJustifyH("LEFT")
	cheader:SetText(name)
	cheader:SetShadowOffset(.8, -.8)
	cheader:SetShadowColor(0, 0, 0, 1)

	return frame
end


function clcbpt:ToggleAnchors()
	if showAnchors then
		showAnchors = false
		clcbptAnchorsPlayer:Hide()
	else
		showAnchors = true
		clcbptAnchorsPlayer:Show()
	end
end
