local L

----------------
--  Argaloth  --
----------------
L = DBM:GetModLocalization("Argaloth")

L:SetGeneralLocalization({
	name = "Argaloth"
})

L:SetWarningLocalization({
	WarnFirestormSoon		= "Fel Firestorm soon"
})

L:SetTimerLocalization({
})

L:SetMiscLocalization({
})

L:SetOptionLocalization({
	WarnFirestormSoon		= "Show pre-warning for $spell:88972 ",
	SetIconOnConsuming		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(88954)
})
