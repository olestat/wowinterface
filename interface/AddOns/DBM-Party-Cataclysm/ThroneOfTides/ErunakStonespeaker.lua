local mod	= DBM:NewMod("ErunakStonespeaker", "DBM-Party-Cataclysm", 9)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 4544 $"):sub(12, -3))
mod:SetCreatureID(40825, 40788)		-- 40788 = Mindbender Ghur'sha
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS"
)

local warnLavaBolt		= mod:NewCastAnnounce(76171, 2)
local warnMagmaSplash		= mod:NewTargetAnnounce(76170, 3)
local warnEmberstrike		= mod:NewTargetAnnounce(76165, 3)
local warnEarthShards		= mod:NewSpellAnnounce(84931, 2)
local warnPhase2		= mod:NewPhaseAnnounce(2)
local warnEnslave		= mod:NewTargetAnnounce(76207, 2)
local warnAbsorbMagic		= mod:NewSpellAnnounce(76307, 4)
local warnMindFog		= mod:NewSpellAnnounce(76234, 3)
local warnAgony			= mod:NewTargetAnnounce(76339, 3)

local timerLavaBolt		= mod:NewCastTimer(2, 76171)
local timerMagmaSplash		= mod:NewTargetTimer(10, 76170)
local timerEmberstrike		= mod:NewTargetTimer(10, 76165)
local timerAbsorbMagic		= mod:NewBuffActiveTimer(3, 76307)
local timerMindFog		= mod:NewBuffActiveTimer(20, 76234)
local timerAgony		= mod:NewTargetTimer(10, 76339)

local specWarnLavaBolt		= mod:NewSpecialWarningInterupt(76171)
local specWarnAbsorbMagic	= mod:NewSpecialWarningCast(76307)	-- should be Stop all damage now!  instead of Stop casting

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(76170) then
		warnMagmaSplash:Show(args.destName)
		timerMagmaSplash:Start(args.destName)
	elseif args:IsSpellID(76165) then
		warnEmberstrike:Show(args.destName)
		timerMagmaSplash:Start(args.destName)
	elseif args:IsSpellID(76207, 91413) then
		warnEnslave:Show(args.destName)
	elseif args:IsSpellID(76307, 91492) then
		timerAbsorbMagic:Start()
	elseif args:IsSpellID(76339) then
		warnAgony:Show(args.destName)
		timerAgony:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(76170) then
		timerMagmaSplash:Cancel(args.destName)
	elseif args:IsSpellID(76165) then
		timerMagmaSplash:Cancel(args.destName)
	elseif args:IsSpellID(76339) then
		timerAgony:Cancel(args.destName)
	elseif args:IsSpellID(76616) then
		if args.destName == L.name then
			warnPhase2:Show(2)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(76171, 91412) then
		warnLavaBolt:Show()
		timerLavaBolt:Start()
		specWarnLavaBolt:Show()
	elseif args:IsSpellID(84931) then
		warnEarthShards:Show()
	elseif args:IsSpellID(76307, 91492) then
		warnAbsorbMagic:Show(76307)
		specWarnAbsorbMagic:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(76234) then
		warnMindFog:Show()
		timerMindFog:Start()
	end
end