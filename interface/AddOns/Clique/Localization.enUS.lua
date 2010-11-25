local addonName, addon = ...
local baseLocale = {
	["A binding that belongs to the 'default' binding-set will always be active on your unit frames, unless you override it with another binding."] = "A binding that belongs to the 'default' binding-set will always be active on your unit frames, unless you override it with another binding.",
	["A binding that belongs to the 'enemy' binding-set will always be active when clicking on unit frames that display enemy units, i.e. those you can attack. If you click on a unit that you cannot attack, nothing will happen."] = "A binding that belongs to the 'enemy' binding-set will always be active when clicking on unit frames that display enemy units, i.e. those you can attack. If you click on a unit that you cannot attack, nothing will happen.",
	["A binding that belongs to the 'frield' binding-set will only be active when clicking on unit frames that display friendly units, i.e. those you can heal and assist. If you click on a unit that you cannot heal or assist, nothing will happen."] = "A binding that belongs to the 'frield' binding-set will only be active when clicking on unit frames that display friendly units, i.e. those you can heal and assist. If you click on a unit that you cannot heal or assist, nothing will happen.",
	["A binding that belongs to the 'global' binding-set is always active. If the spell requires a target, you will be given the 'casting hand', otherwise the spell will be cast. If the spell is an AOE spell, then you will be given the ground targeting circle."] = "A binding that belongs to the 'global' binding-set is always active. If the spell requires a target, you will be given the 'casting hand', otherwise the spell will be cast. If the spell is an AOE spell, then you will be given the ground targeting circle.",
	["A binding that belongs to the 'hovercast' binding-set is active whenever the mouse is over a unit frame, or a character in the 3D world. This allows you to use 'hovercasting', where you hover over a unit in the world and press a key to cast a spell on them. THese bindings are also active over unit frames."] = "A binding that belongs to the 'hovercast' binding-set is active whenever the mouse is over a unit frame, or a character in the 3D world. This allows you to use 'hovercasting', where you hover over a unit in the world and press a key to cast a spell on them. THese bindings are also active over unit frames.",
	["A binding that belongs to the 'ooc' binding-set will only be active when the player is out-of-combat. As soon as the player enters combat, these bindings will no longer be active, so be careful when choosing this binding-set for any spells you use frequently."] = "A binding that belongs to the 'ooc' binding-set will only be active when the player is out-of-combat. As soon as the player enters combat, these bindings will no longer be active, so be careful when choosing this binding-set for any spells you use frequently.",
	["Accept"] = "Accept",
	["Action"] = "Action",
	["Add new profile"] = "Add new profile",
	["Alt"] = "Alt",
	["Arena enemy frames"] = "Arena enemy frames",
	["Bind other"] = "Bind other",
	["Bind spell"] = "Bind spell",
	["Binding"] = "Binding",
	["Blizzard frame integration options"] = "Blizzard frame integration options",
	["Boss target frames"] = "Boss target frames",
	["Cancel"] = "Cancel",
	["Cast %s"] = "Cast %s",
	["Change binding"] = "Change binding",
	["Change binding: %s"] = "Change binding: %s",
	["Clique Binding Configuration"] = "Clique Binding Configuration",
	["Clique binding configuration"] = "Clique binding configuration",
	["Clique general options"] = "Clique general options",
	["Clique: 'default' binding-set"] = "Clique: 'default' binding-set",
	["Clique: 'enemy' binding-set"] = "Clique: 'enemy' binding-set",
	["Clique: 'friend' binding-set"] = "Clique: 'friend' binding-set",
	["Clique: 'global' binding-set"] = "Clique: 'global' binding-set",
	["Clique: 'hovercast' binding-set"] = "Clique: 'hovercast' binding-set",
	["Clique: 'ooc' binding-set"] = "Clique: 'ooc' binding-set",
	["Compact party frames"] = "Compact party frames",
	["Compact raid frames"] = "Compact raid frames",
	["Configure binding: '%s'"] = "Configure binding: '%s'",
	["Ctrl"] = "Ctrl",
	["Current: "] = "Current: ",
	["Default"] = "Default",
	["Delete binding"] = "Delete binding",
	["Delete profile '%s'"] = "Delete profile '%s'",
	["Delete profile: %s"] = "Delete profile: %s",
	["Disable out of combat clicks when party members enter combat"] = "Disable out of combat clicks when party members enter combat",
	["Edit macro"] = "Edit macro",
	["Enable/Disable binding-sets"] = "Enable/Disable binding-sets",
	["Enemy"] = "Enemy",
	["Frame blacklist"] = "Frame blacklist",
	["Frame name"] = "Frame name",
	["Friend"] = "Friend",
	["Global bindings (no target)"] = "Global bindings (no target)",
	["Hovercast bindings (target required)"] = "Hovercast bindings (target required)",
	["In order to specify a binding, move your mouse over the button labelled 'Set binding' and either click with your mouse or press a key on your keyboard. You can modify the binding by holding down a combination of the alt, control and shift keys on your keyboard."] = "In order to specify a binding, move your mouse over the button labelled 'Set binding' and either click with your mouse or press a key on your keyboard. You can modify the binding by holding down a combination of the alt, control and shift keys on your keyboard.",
	["LAlt"] = "LAlt",
	["LCtrl"] = "LCtrl",
	["LShift"] = "LShift",
	["LeftButton"] = "LeftButton",
	["MiddleButton"] = "MiddleButton",
	["MousewheelDown"] = "MousewheelDown",
	["MousewheelUp"] = "MousewheelUp",
	["No binding set"] = "No binding set",
	["Open unit menu"] = "Open unit menu",
	["Options"] = "Options",
	["Out-of-combat only"] = "Out-of-combat only",
	["Party member frames"] = "Party member frames",
	["Player frame"] = "Player frame",
	["Player's focus frame"] = "Player's focus frame",
	["Player's pet frame"] = "Player's pet frame",
	["Player's target frame"] = "Player's target frame",
	["Primary talent spec profile:"] = "Primary talent spec profile:",
	["Profile Management:"] = "Profile Management:",
	["RAlt"] = "RAlt",
	["RCtrl"] = "RCtrl",
	["RShift"] = "RShift",
	["RightButton"] = "RightButton",
	["Run custom macro"] = "Run custom macro",
	["Run macro"] = "Run macro",
	["Run macro '%s'"] = "Run macro '%s'",
	["Save"] = "Save",
	["Secondary talent spec profile:"] = "Secondary talent spec profile:",
	["Select All"] = "Select All",
	["Select None"] = "Select None",
	["Select a binding type"] = "Select a binding type",
	["Select an options category"] = "Select an options category",
	["Select profile: %s"] = "Select profile: %s",
	["Set binding"] = "Set binding",
	["Set binding: %s"] = "Set binding: %s",
	["Shift"] = "Shift",
	["Show unit menu"] = "Show unit menu",
	["Swap profiles based on talent spec"] = "Swap profiles based on talent spec",
	["Target clicked unit"] = "Target clicked unit",
	["Target of focus frame"] = "Target of focus frame",
	["Target of target frame"] = "Target of target frame",
	["These options control whether or not Clique auotmatically registers certain Blizzard-created frames for binding. Changes made to these settings will not take effect until the user interface is reloaded."] = "These options control whether or not Clique auotmatically registers certain Blizzard-created frames for binding. Changes made to these settings will not take effect until the user interface is reloaded.",
	["This binding is DISABLED"] = "This binding is DISABLED",
	["This binding is invalid, please delete"] = "This binding is invalid, please delete",
	["This panel allows you to blacklist certain frames from being included for Clique bindings. Any frames that are selected in this list will not be registered, although you may have to reload your user interface to have them return to their original bindings."] = "This panel allows you to blacklist certain frames from being included for Clique bindings. Any frames that are selected in this list will not be registered, although you may have to reload your user interface to have them return to their original bindings.",
	["Trigger bindings on the 'down' portion of the click (experimental)"] = "Trigger bindings on the 'down' portion of the click (experimental)",
	["Unknown"] = "Unknown",
	["Unknown binding type '%s'"] = "Unknown binding type '%s'",
	["When both the Clique binding configuration window and the spellbook are open, you can set new bindings simply by performing them on the spell icon in your spellbook. Simply move your mouse over a spell and then click or press a key on your keyboard along with any combination of the alt, control, and shift keys. The new binding will be added to your binding configuration."] = "When both the Clique binding configuration window and the spellbook are open, you can set new bindings simply by performing them on the spell icon in your spellbook. Simply move your mouse over a spell and then click or press a key on your keyboard along with any combination of the alt, control, and shift keys. The new binding will be added to your binding configuration.",
	["You are in Clique binding mode"] = "You are in Clique binding mode",
	["You can use this page to create a custom macro to be run when activating a binding on a unit. When creating this macro you should keep in mind that you will need to specify the target of any actions in the macro by using the 'mouseover' unit, which is the unit you are clicking on. For example, you can do any of the following:\n\n/cast [target=mouseover] Regrowth\n/cast [@mouseover] Regrowth\n/cast [@mouseovertarget] Taunt\n\nHover over the 'Set binding' button below and either click or press a key with any modifiers you would like included. Then edit the box below to contain the macro you would like to have run when this binding is activated."] = "You can use this page to create a custom macro to be run when activating a binding on a unit. When creating this macro you should keep in mind that you will need to specify the target of any actions in the macro by using the 'mouseover' unit, which is the unit you are clicking on. For example, you can do any of the following:\n\n/cast [target=mouseover] Regrowth\n/cast [@mouseover] Regrowth\n/cast [@mouseovertarget] Taunt\n\nHover over the 'Set binding' button below and either click or press a key with any modifiers you would like included. Then edit the box below to contain the macro you would like to have run when this binding is activated.",
}

addon:RegisterLocale('enUS', baseLocale)
