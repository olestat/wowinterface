HolyTrinity = LibStub("AceAddon-3.0"):NewAddon("HolyTrinity", "AceConsole-3.0", "AceEvent-3.0");

local M = LibStub("LibSharedMedia-3.0")
local art = "Interface\\AddOns\\HolyTrinity\\art\\"
local empty = art.."empty"
local db

local SetPoint = SetPoint
local GetTime = GetTime
local SetWidth = SetWidth
local SetValue, GetValue = SetValue, GetValue
local Show, Hide = Show, Hide
local pairs = pairs
local frames = {}
local throttle = 0.1

local respecprimary = GetSpellInfo(63645);
local respecsecondary = GetSpellInfo(63644);

local aspells = {
		["PALADIN"] = {
			86150,
			498,
			31850,
			642,
			70940,
			82327,
			31821,
			6940,
			1022,
			1038,
			1044,
			54428,
			20066,
			31884,
			85696,
			633,
			85222,
			31842,
			853,
			20473
		},
	}
	
local spells = aspells[select(2, UnitClass("player"))]

function HolyTrinity_OnInitialize()
	self = HolyTrinity
	self:RegisterOptions()
	db = self.db.profile
	
	HT = CreateFrame("frame", "* ", UIParent)
	
	if db.enableHP then

		--Bar 1
		HT.hopo1bg = HT:CreateTexture(nil, "OVERLAY")
		HT.hopo1bg:SetTexture(empty)

		HT.hopo1 = HT:CreateTexture(nil, "OVERLAY")

		--Bar 2
		HT.hopo2bg = HT:CreateTexture(nil, "OVERLAY")
		HT.hopo2bg:SetTexture(empty)

		HT.hopo2 = HT:CreateTexture(nil, "OVERLAY")

		--Bar 3
		HT.hopo3bg = HT:CreateTexture(nil, "OVERLAY")
		HT.hopo3bg:SetTexture(empty)

		HT.hopo3 = HT:CreateTexture(nil, "OVERLAY")

		HT:SetPoint("CENTER", UIParent, "CENTER")
		HT:RegisterEvent("UNIT_POWER");
		HT:RegisterEvent("PLAYER_ENTERING_WORLD");
		HT:RegisterEvent("UNIT_DISPLAYPOWER");
		HT:RegisterEvent("PLAYER_REGEN_ENABLED")
		HT:RegisterEvent("PLAYER_REGEN_DISABLED")
	
	end
	
	function HT.UpdateHP()
		-- SS 1
		HT.hopo1bg:SetPoint("CENTER",HT,"CENTER", (db.squeeze), (db.squeezey))
		HT.hopo1:SetPoint("CENTER",HT,"CENTER", (db.squeeze), (db.squeezey))
		-- SS 2
		HT.hopo2bg:SetPoint("CENTER",HT,"CENTER", 0, 0)
		HT.hopo2:SetPoint("CENTER",HT,"CENTER", 0, 0)
		-- SS 3
		HT.hopo3bg:SetPoint("CENTER",HT,"CENTER", (-db.squeeze), (-db.squeezey))
		HT.hopo3:SetPoint("CENTER",HT,"CENTER", (-db.squeeze), (-db.squeezey))
		-- SS Colors
		HT:Update()
	end
		
	function HT.UpdatePos()
		HT:SetPoint("CENTER",UIParent,"CENTER",db.posx,db.posy)
		HT:SetWidth(db.spacerx+2*db.squeeze)
		HT:SetHeight(db.spacery+2*db.squeezey)
		HT.hopo1bg:SetWidth(db.spacerx*128/98)
		HT.hopo1bg:SetHeight(db.spacery*16)
		HT.hopo1:SetWidth(db.spacerx)
		HT.hopo1:SetHeight(db.spacery)
		HT.hopo2bg:SetWidth(db.spacerx*128/98)
		HT.hopo2bg:SetHeight(db.spacery*16)
		HT.hopo2:SetWidth(db.spacerx)
		HT.hopo2:SetHeight(db.spacery)
		HT.hopo3bg:SetWidth(db.spacerx*128/98)
		HT.hopo3bg:SetHeight(db.spacery*16)
		HT.hopo3:SetWidth(db.spacerx)
		HT.hopo3:SetHeight(db.spacery)
	end
	
	function HT.UpdateScale()
		HT:ClearAllPoints()
		HT:SetScale(db.scale)
		HT.UpdatePos()
	end
	
	function HT.UpdateAlpha()
		if db.useFade then
			if InCombatLockdown() then
				HT:SetAlpha(db.highFade)
			else
				HT:SetAlpha(db.lowFade)
			end
		else
			HT:SetAlpha(db.highFade)
		end
	end
	
	function HT.UNIT_DISPLAYPOWER(self,event)
		HT:Update()
	end
	
	function HT:Update()
		local holypower = UnitPower("player", 9)
		if (holypower == 3 and db.useAlert) then
			PlaySoundFile(db.stringAlert);
		end
		for i=1,3 do
			local index = "hopo"..i
			if i <= holypower then
				HT[index]:SetTexture(M:Fetch("statusbar", db.statusbar))
				HT[index]:SetVertexColor(db.hpcolor.r,db.hpcolor.g,db.hpcolor.b)
			else
				HT[index]:SetTexture(nil)
			end
		end
	end
	
	function HT.PLAYER_ENTERING_WORLD(self,event)
		local _,class = UnitClass("player")
		if class ~= "PALADIN" then
			HT:Hide()
			HT:UnregisterAllEvents();
		end
		
	--	Is this hiding the default shard bar? No idea what the Holy Power default frame is called.
	--	LoadAddOn("ShardBar")
	--	ShardBarFrame:Hide()
	--	ShardBarFrame:SetScript("OnUpdate", nil)
	--	ShardBarFrame:SetScript("OnEvent", nil)
	--	ShardBarFrame:UnregisterAllEvents()
	
		if db.useFade then
			HT:SetAlpha(db.lowFade)
		end
	end
	
	function HT.PLAYER_REGEN_ENABLED(self,event)
		if db.useFade then
			HT:SetAlpha(db.lowFade)
		end
	end

	function HT.PLAYER_REGEN_DISABLED(self,event)
		if db.useFade then
			HT:SetAlpha(db.highFade)
		end
	end

	function HT.UNIT_POWER(self,event,arg1,arg2)
		if (arg1 == "player" ) then
			if ( arg2 == "HOLY_POWER" ) then
				HT:Update()
			end
		end
	end	
	
	HT:SetScript("OnEvent", function(self, event, ...)
		self[event](self, event, ...)
	end)
	
	function HT:UpdateCooldownFrames()
	
		local i = 0
		local olist = {}
		
		
		if db.dynamicSort then
		
			for k,v in pairs(frames) do
				local frame = frames[k]
				local index = HolyTrinity.db.profile.CooldownList[frame.spellname]
				local duration = GetSpellCooldown(frame.spell)
				if duration and duration > 1.5 then
					if index[1] then
						if db.sortByDuration then
							table.insert(olist,duration);
						else
							table.insert(olist,index[6]);
						end
					end
				end
			end
			
			table.sort(olist)
		
			for k,v in pairs(frames) do
				local frame = frames[k]
				local index = HolyTrinity.db.profile.CooldownList[frame.spellname]
				local start, duration = GetSpellCooldown(frame.spell)
				if duration and duration > 1.5 then
					frame.start = start
					frame.duration = duration
					if index[1] then
						frame.bar:SetValue((frame.start - (GetTime() - frame.duration))/frame.duration)
						frame.tdur:SetText(string.format('%0.1f',(frame.start - (GetTime() - frame.duration))))
						frame.ttexture:SetTexture(GetSpellTexture(GetSpellInfo(frame.spell)))
						frame.bar:SetStatusBarTexture(M:Fetch('statusbar', index[5]))
						frame.bar:GetStatusBarTexture():SetVertexColor(index[2],index[3],index[4]);
						local j = 1;
						while olist[j] do
							if db.sortByDuration then
								-- We need a .1 sec slop here since we've taken the duration twice now
								if ((duration > olist[j]) and (duration - .1 < olist[j])) then
									i = j-1;
								end
							else
								if (index[6] == olist[j]) then
									i = j-1;
								end
							end
							j = j+1
						end
						if db.cdFlip then
							frame:SetPoint("CENTER", HT, "CENTER", db.offsetx, db.offsety+(db.squeezeCD*(i+1)))
						else
							frame:SetPoint("CENTER", HT, "CENTER", db.offsetx, db.offsety+(-(db.squeezeCD)*(i+1)))
						end
						frame:Show()
						i = i+1
					else
						frame:Hide()
					end
				end
			end
			
			
		else -- Cooldowns display in static positions
		
			for k,v in pairs(frames) do
				local frame = frames[k]
				local index = HolyTrinity.db.profile.CooldownList[frame.spellname]
				local start, duration = GetSpellCooldown(frame.spell)
				if duration and duration > 1.5 then
					frame.start = start
					frame.duration = duration
					if index[1] then
						frame.bar:SetValue((frame.start - (GetTime() - frame.duration))/frame.duration)
						frame.tdur:SetText(string.format('%0.1f',(frame.start - (GetTime() - frame.duration))))
						frame.ttexture:SetTexture(GetSpellTexture(GetSpellInfo(frame.spell)))
						frame.bar:SetStatusBarTexture(M:Fetch('statusbar', index[5]))
						frame.bar:GetStatusBarTexture():SetVertexColor(index[2],index[3],index[4]);
						if db.cdFlip then
							frame:SetPoint("CENTER", HT, "CENTER", db.offsetx, db.offsety+(db.squeezeCD*(index[6]+1)))
						else
							frame:SetPoint("CENTER", HT, "CENTER", db.offsetx, db.offsety+(-(db.squeezeCD)*(index[6]+1)))
						end
						frame:Show()
					else
						frame:Hide()
					end
				end
			end
		end
	end
	
	local function Timer(self, elapsed)
		self.lastupdate = self.lastupdate + elapsed
		local index = HolyTrinity.db.profile.CooldownList[self.spellname]
		if (self.duration == nil or self.duration == 0) then
			self.duration = .01
		end
		if self.lastupdate > throttle and index[1] then
			local p = (self.start - (GetTime() - self.duration))/self.duration
			self.bar:SetValue(p)
			self.tdur:SetText(string.format('%0.1f',(self.start - (GetTime() - self.duration))))
			if self.bar:GetValue() < 0.01 then
				self:Hide()
				HT.UpdateCooldownFrames()
			end
		local _, ddur = GetSpellCooldown(self.spell)
		if ddur == 0 then
			self:Hide()
			HT.UpdateCooldownFrames()
		end

		self.lastupdate = 0
	end
	end
	
	local function CreateFrames(spell)
		local spellname = GetSpellInfo(spell)
		--print("Frame created for "..spellname..".")
		local db = HolyTrinity.db.profile.CooldownList[spellname]
		-- Background
		local frame = CreateFrame("Frame", nil, HT)
		frame:SetHeight(128)
		frame:SetWidth(512)
		frame.texture = frame:CreateTexture("texture", "OVERLAY")
		frame.texture:SetAllPoints(frame)
		frame.texture:SetTexture(art.."ebar")
		-- Text Timer
		local tdur = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		--tdur:SetFont(vfont, 12, "OUTLINE")
		tdur:SetShadowColor(0,0,0,1)
		tdur:SetText("")
		tdur:SetJustifyH("RIGHT")
		tdur:SetPoint("RIGHT", frame, "RIGHT", -102, -12)
		-- Spell Name Text
		local sname = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		--tdur:SetFont(vfont, 12, "OUTLINE")
		sname:SetShadowColor(0,0,0,1)
		sname:SetText(spellname)
		sname:SetJustifyH("LEFT")
		sname:SetPoint("LEFT", frame, "LEFT", 102, -12)	
		-- Status Bar Timer
		local bar = CreateFrame("StatusBar", nil, frame, "TextStatusBar")
		bar:SetStatusBarTexture(M:Fetch('statusbar', db[5]))
		bar:GetStatusBarTexture():SetVertexColor(db[2],db[3],db[4]);
		bar:SetPoint("LEFT", frame, "LEFT", 102, 0)
		bar:SetHeight(8)
		bar:SetWidth(308)
		bar:SetMinMaxValues(0, 1)	
		-- Cooldown Texture
		local texture = frame:CreateTexture("texture", "BACKGROUND")
		texture:SetPoint("CENTER", bar, "CENTER", -170, -7)
		texture:SetTexture(GetSpellTexture(GetSpellInfo(spell)))
		texture:SetTexCoord(0.08,0.92,0.08,0.92)
		texture:SetHeight(24)
		texture:SetWidth(24)
		-- Cooldown Icon Border
		local border = frame:CreateTexture("texture", "OVERLAY")
		border:SetPoint("CENTER", texture, "CENTER")
		border:SetTexture(art.."border")
		border:SetHeight(24)
		border:SetWidth(24)
		-- Set Frame Variables
		frame.bar = bar
		frame.tdur = tdur
		frame.ttexture = texture
		frame.lastupdate = 0
		frame:SetScript("OnUpdate", Timer)
	
		frame.spell = spell
		frame.spellname = spellname
	
		frame:Show()
	
		return frame
	end
	
	local spellcast = CreateFrame("frame")
	spellcast:SetScript("OnEvent", function(self,event,arg1,arg2) 
		if event == "UNIT_SPELLCAST_SUCCEEDED" then
			if (arg1 == "player") then
				--if (arg2 == respecprimary or arg2 == respecsecondary) then
				--	print("Detected dual spec.")
				--end
				for k, v in pairs(spells) do
					if GetSpellInfo(v) == arg2 then
						frames[v] = frames[v] or CreateFrames(spells[k])
					end
				end
			end
		end
		if event == "SPELL_UPDATE_COOLDOWN" then
			HT.UpdateCooldownFrames()
		end
	end)
	spellcast:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	spellcast:RegisterEvent("SPELL_UPDATE_COOLDOWN")
			
	function HT.UpdateAll()
		db = self.db.profile
		HT.UpdatePos()
		HT.UpdateScale()
		HT.UpdateHP()
		HT.UpdateAlpha()
		HT.UpdateCooldownFrames()
	end
	
	HT.UpdateAll()
	
	function HolyTrinity:OnEnable()
		HT:Show()
		HT.UpdateAll()
		HT:RegisterEvent("PLAYER_ENTERING_WORLD");
		if db.enableHP then
			HT:RegisterEvent("UNIT_POWER");
			HT:RegisterEvent("UNIT_DISPLAYPOWER");
		end
		HT:RegisterEvent("PLAYER_REGEN_ENABLED")
		HT:RegisterEvent("PLAYER_REGEN_DISABLED")
	end

	function HolyTrinity:OnDisable()
		HT:Hide()
		HT.UpdateAll()
		HT:UnregisterEvent("UNIT_POWER");
		HT:UnregisterEvent("PLAYER_ENTERING_WORLD");
		HT:UnregisterEvent("UNIT_DISPLAYPOWER");
		HT:UnregisterEvent("PLAYER_REGEN_ENABLED")
		HT:UnregisterEvent("PLAYER_REGEN_DISABLED")
	end
	
	if not HolyTrinity.db.profile.AddonEnabled then HolyTrinity:OnDisable() end
	
end

local start = CreateFrame("frame")
start:SetScript("OnEvent", function(self,event,arg1,arg2)
	if event == "ADDON_LOADED" then
		if arg1 == "HolyTrinity" then
			local _,class = UnitClass("player")
			if class == "PALADIN" then
				HolyTrinity_OnInitialize()
			end
			--print("HolyTrinity Loaded")			
		end
	else
	end
 end)
start:RegisterEvent("ADDON_LOADED")
