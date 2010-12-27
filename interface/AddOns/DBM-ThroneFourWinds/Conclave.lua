local mod	= DBM:NewMod("Conclave", "DBM-ThroneFourWinds", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 4816 $"):sub(12, -3))
mod:SetCreatureID(45870, 45871, 45872)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS"
)

local warnNurture			= mod:NewSpellAnnounce(85422, 3)
local warnSoothingBreeze	= mod:NewSpellAnnounce(86207, 3)	-- using a spellID here with a better description of the spell
local warnSummonTornados	= mod:NewSpellAnnounce(86192, 3)
local warnWindBlast			= mod:NewSpellAnnounce(86193, 3)
local warnSpecial			= mod:NewAnnounce("warnSpecial", 3, "Interface\\Icons\\INV_Enchant_EssenceMagicLarge")--Hurricane/Sleet Storm/Zephyr in single announce

local specWarnSpecial		= mod:NewSpecialWarning("specWarnSpecial")

local timerNurture			= mod:NewCDTimer(114, 85422)--This does NOT cast at same time as hurricane/sleet storm/Zephyr
local timerWindChill		= mod:NewNextTimer(10.5, 84645)
local timerSlicingGale		= mod:NewTargetTimer(45, 93058)
local timerWindBlast		= mod:NewBuffActiveTimer(10, 86193)		-- Cooldown: 1st->2nd = 22sec || 2nd->3rd = 60sec || 3rd->4th = 60sec ?
local timerWindBlastCD		= mod:NewCDTimer(60, 86193)
local timerSpecial			= mod:NewTimer(114, "timerSpecial", "Interface\\Icons\\INV_Enchant_EssenceMagicLarge")--hurricane/Sleet storm/Zephyr share CD
local timerSpecialActive	= mod:NewTimer(16, "timerSpecialActive", "Interface\\Icons\\INV_Enchant_EssenceMagicLarge")

local windBlastCounter = 0
local specialSpam = 0

function mod:OnCombatStart(delay)
	windBlastCounter = 0
	specialSpam = 0
	timerWindBlastCD:Start(30-delay)
	timerNurture:Start(30-delay)
	timerSpecial:Start(90-delay)--hurricane/Sleet storm share CD
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(93057, 93058) then
		timerSlicingGale:Start(args.destName)
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(86205) then
		warnSoothingBreeze:Show()
	elseif args:IsSpellID(96192) then
		warnSummonTornados:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(85422) then
		warnNurture:Show()
		timerNurture:Start()
	elseif (args:IsSpellID(84644, 93135, 93136, 93137) or args:IsSpellID(84638, 93119, 93118, 93117) or args:IsSpellID(84643)) and GetTime() - specialSpam > 3 then
		warnSpecial:Show()
		specWarnSpecial:Show()
		timerSpecial:Start()
		specialSpam = GetTime()--Trigger it off any of 3 spells, but only once.
	elseif args:IsSpellID(84645) then
		timerWindChill:Start()
	elseif args:IsSpellID(86193) then
		windBlastCounter = windBlastCounter + 1
		warnWindBlast:Show()
		timerWindBlast:Start()
		if windBlastCounter == 1 then
			timerWindBlastCD:Start(82)
		else
			timerWindBlastCD:Start()
		end
	end
end