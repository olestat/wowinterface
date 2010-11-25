VUHDO_CURR_SPELL_MODIFIER = "";


local tComponents = { };
local tNum;
local tModel;
local tPanel, tBox, tComp;
function VUHDO_newOptionsSpellSetModifier(aModifier)
	VUHDO_CURR_SPELL_MODIFIER = aModifier;

	table.wipe(tComponents);
	tComponents = { VuhDoNewOptionsSpellMouseKeyPanelScrollPanelChild:GetChildren() };

	for _, tPanel in pairs(tComponents) do
		local tNum = VUHDO_getNumbersFromString(tPanel:GetName(), 1)[1];
		if (tNum ~= nil) then
			tBox = VUHDO_GLOBAL[tPanel:GetName() .. "EditBox"];
			tModel = "VUHDO_SPELL_ASSIGNMENTS." .. aModifier .. tNum .. ".##3";
			tBox:SetAttribute("model", tModel);
			tBox:Hide();
			tBox:Show();
		end
	end

	table.wipe(tComponents);
	tComponents = { VuhDoNewOptionsSpellMouseWheelPanel:GetChildren() };

	for _, tComp in pairs(tComponents) do
		if (tComp:IsObjectType("EditBox")) then
			tNum = VUHDO_getComponentPanelNum(tComp);
			tModel = "VUHDO_SPELLS_KEYBOARD.WHEEL." .. aModifier .. tNum .. ".##3";
			tComp:SetAttribute("model", tModel);
			tComp:Hide();
			tComp:Show();
		end
	end

end



--
local tActionLowerName;
local function VUHDO_isActionValid(anActionName, anIsResolveId)

	if ((anActionName or "") == "") then
		return nil;
	end

	tActionLowerName = strlower(anActionName);

	if (VUHDO_SPELL_KEY_ASSIST == tActionLowerName
	 or VUHDO_SPELL_KEY_FOCUS == tActionLowerName
	 or VUHDO_SPELL_KEY_MENU == tActionLowerName
	 or VUHDO_SPELL_KEY_TELL == tActionLowerName
	 or VUHDO_SPELL_KEY_TARGET == tActionLowerName
	 or VUHDO_SPELL_KEY_DROPDOWN == tActionLowerName) then
		return "Command", 0.8, 1, 0.8;
	end

	if (GetMacroIndexByName(anActionName) ~= 0) then
		return "Macro", 0.8, 0.8, 1;
	end

	if (VUHDO_isSpellKnown(anActionName)) then
		return "Spell", 1, 0.8, 0.8;
	end

	if (IsUsableItem(anActionName)) then
		return "Item", 1, 1, 0.8;
	end

	return nil;
end



--
local tText, tLabel, tR, tG, tB;
function VUHDO_newOptionsSpellEditBoxCheckSpell(anEditBox, anIsResolveId)
	tText, tR, tG, tB = VUHDO_isActionValid(anEditBox:GetText(), anIsResolveId);
	tLabel = VUHDO_GLOBAL[anEditBox:GetName() .. "Hint"];
	if (tText ~= nil) then
		anEditBox:SetTextColor(1, 1, 1, 1);
		tLabel:SetText(tText);
		tLabel:SetTextColor(tR, tG, tB, 1);
	else
		anEditBox:SetTextColor(0.8, 0.8, 1, 1);
		tLabel:SetText("");
	end
end



--
local VUHDO_BUTTON_TEXTS = {
	VUHDO_I18N_LEFT_BUTTON,
	VUHDO_I18N_RIGHT_BUTTON,
	VUHDO_I18N_MIDDLE_BUTTON,
	VUHDO_I18N_BUTTON_4,
	VUHDO_I18N_BUTTON_5,
	VUHDO_I18N_BUTTON_6,
	VUHDO_I18N_BUTTON_7,
	VUHDO_I18N_BUTTON_8,
	VUHDO_I18N_BUTTON_9,
	VUHDO_I18N_BUTTON_10,
	VUHDO_I18N_BUTTON_11,
	VUHDO_I18N_BUTTON_12,
	VUHDO_I18N_BUTTON_13,
	VUHDO_I18N_BUTTON_14,
	VUHDO_I18N_BUTTON_15,
	VUHDO_I18N_BUTTON_16,
}



--
local function VUHDO_addSpellEditBox(aScrollPanel, anIndex)
	local tFrame = CreateFrame("Frame", aScrollPanel:GetName() .. "E" .. anIndex, aScrollPanel, "VuhDoNewOptionsSpellMouseEditBoxTemplate");
	tFrame:SetPoint("TOPLEFT", aScrollPanel:GetName(), "TOPLEFT", 23, -(anIndex - 1) * tFrame:GetHeight() - 7);
	VUHDO_GLOBAL[tFrame:GetName() .. "LabelLabel"]:SetText(VUHDO_BUTTON_TEXTS[anIndex] or ("<Button " .. anIndex .. ">"));
	return tFrame;
end



--
function VUHDO_newOptionsSpellMouseScrollPanelOnLoad(aScrollPanel)
	local tCnt;
	local tFrame;
	for tCnt = 1, VUHDO_NUM_MOUSE_BUTTONS do
		tFrame = VUHDO_addSpellEditBox(aScrollPanel, tCnt);
	end

	aScrollPanel:SetHeight(VUHDO_NUM_MOUSE_BUTTONS * tFrame:GetHeight() + 18);
end
