local mod	= DBM:NewMod("FoeReaper", "DBM-Party-Cataclysm", 2)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 4518 $"):sub(12, -3))
mod:SetCreatureID(43778)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
)