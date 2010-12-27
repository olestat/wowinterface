-- Definition of buff impact types
VUHDO_BUFF_TARGET_SELF = 1;
VUHDO_BUFF_TARGET_SINGLE = 2;
VUHDO_BUFF_TARGET_UNIQUE = 3;
VUHDO_BUFF_TARGET_OWN_GROUP = 4;
VUHDO_BUFF_TARGET_TOTEM = 7;
VUHDO_BUFF_TARGET_AURA = 8;
VUHDO_BUFF_TARGET_HOSTILE = 9;
VUHDO_BUFF_TARGET_RAID = 10;
VUHDO_BUFF_TARGET_ENCHANT = 11;


--
VUHDO_GROUPS_BUFFS = {
	[VUHDO_BUFF_TARGET_OWN_GROUP] = true,
	[VUHDO_BUFF_TARGET_TOTEM] = true,
	[VUHDO_BUFF_TARGET_AURA] = true,
	[VUHDO_BUFF_TARGET_RAID] = true,
};



--
VUHDO_MULTICAST_BUFFS = {
	[VUHDO_I18N_BUFFC_FIRE_TOTEM] = {
		["SLOT"] = 133,
		[VUHDO_SPELL_ID_BUFF_FLAMETONGUE_TOTEM] = 8227,
		[VUHDO_SPELL_ID_BUFF_SEARING_TOTEM] = 3599,
		[VUHDO_SPELL_ID_BUFF_FIRE_ELEMENTAL_TOTEM] = 2894,
		[VUHDO_SPELL_ID_BUFF_MAGMA_TOTEM] = 8190,
		[VUHDO_SPELL_ID_BUFF_TOTEM_OF_WRATH] = 57658,
	},
	[VUHDO_I18N_BUFFC_EARTH_TOTEM] = {
		["SLOT"] = 134,
		[VUHDO_SPELL_ID_BUFF_EARTHBIND_TOTEM] = 2484,
		[VUHDO_SPELL_ID_BUFF_STRENGTH_OF_EARTH_TOTEM] = 8075,
		[VUHDO_SPELL_ID_BUFF_STONESKIN_TOTEM] = 8071,
		[VUHDO_SPELL_ID_BUFF_STONECLAW_TOTEM] = 5730,
		[VUHDO_SPELL_ID_BUFF_EARTH_ELEMENTAL_TOTEM] = 2062,
		[VUHDO_SPELL_ID_BUFF_TREMOR_TOTEM] = 8143,
	},
	[VUHDO_I18N_BUFFC_WATER_TOTEM] = {
		["SLOT"] = 135,
		[VUHDO_SPELL_ID_BUFF_MANA_SPRING_TOTEM] = 5675,
		[VUHDO_SPELL_ID_BUFF_HEALING_STREAM_TOTEM] = 5394,
		[VUHDO_SPELL_ID_BUFF_TOTEM_OF_TRANQUIL_MIND] = 87718,
		[VUHDO_SPELL_ID_BUFF_ELEMENTAL_RESISTANCE_TOTEM] = 8184,
		[VUHDO_SPELL_ID_BUFF_MANA_TIDE_TOTEM] = 16190,
	},
	[VUHDO_I18N_BUFFC_AIR_TOTEM] = {
		["SLOT"] = 136,
		[VUHDO_SPELL_ID_BUFF_GROUNDING_TOTEM] = 8177,
		[VUHDO_SPELL_ID_BUFF_WINDFURY_TOTEM] = 8512,
		[VUHDO_SPELL_ID_BUFF_WRATH_OF_AIR_TOTEM] = 3738,
	}
}


--
-- Buffs per Class
-- Class => BUff-disjunctive-Group => Buff-Overwriting-Group => BuffName, Target type
--
VUHDO_CLASS_BUFFS = {
	-- Priest
	["PRIEST"] = {
		[VUHDO_SPELL_ID_BUFFC_FORTITUDE] = { -- 01
			{
				{ VUHDO_SPELL_ID_BUFF_POWER_WORD_FORTITUDE, VUHDO_BUFF_TARGET_RAID, VUHDO_SPELL_ID_BLOOD_PAKT },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_SHADOW_PROTECTION] = { -- 02
			{
				{ VUHDO_SPELL_ID_BUFF_SHADOW_PROTECTION, VUHDO_BUFF_TARGET_RAID },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_FEAR_WARD] = { -- 03
			{
				{ VUHDO_SPELL_ID_BUFF_FEAR_WARD, VUHDO_BUFF_TARGET_UNIQUE },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_INNER_FIRE] = { -- 04
			{
				{ VUHDO_SPELL_ID_BUFF_INNER_FIRE, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_INNER_WILL, VUHDO_BUFF_TARGET_SELF },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_SHADOW_FIEND] = { -- 05
			{
				{ VUHDO_SPELL_ID_BUFF_SHADOWFIEND, VUHDO_BUFF_TARGET_HOSTILE },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_POWER_INFUSION] = { -- 06
			{
				{ VUHDO_SPELL_ID_BUFF_POWER_INFUSION, VUHDO_BUFF_TARGET_UNIQUE },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_VAMPIRIC_EMBRACE] = { -- 07
			{
				{ VUHDO_SPELL_ID_BUFF_VAMPIRIC_EMBRACE, VUHDO_BUFF_TARGET_SELF },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_LEVITATE] = { -- 09
			{
				{ VUHDO_SPELL_ID_BUFF_LEVITATE, VUHDO_BUFF_TARGET_SINGLE },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_PAIN_SUPPRESSION] = { -- 10
			{
				{ VUHDO_SPELL_ID_PAIN_SUPPRESSION, VUHDO_BUFF_TARGET_UNIQUE },
			}
		},
	},

	-- Shaman
	["SHAMAN"] = {
		[VUHDO_I18N_BUFFC_FIRE_TOTEM] = { -- 01
			{
				{ VUHDO_SPELL_ID_BUFF_FLAMETONGUE_TOTEM, VUHDO_BUFF_TARGET_TOTEM }, -- @okcata
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEARING_TOTEM, VUHDO_BUFF_TARGET_TOTEM },-- @okcata
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FIRE_ELEMENTAL_TOTEM, VUHDO_BUFF_TARGET_TOTEM },-- @okcata
			},
			{
				{ VUHDO_SPELL_ID_BUFF_MAGMA_TOTEM, VUHDO_BUFF_TARGET_TOTEM }, -- @okcata
			},
			{
				{ VUHDO_SPELL_ID_BUFF_TOTEM_OF_WRATH, VUHDO_BUFF_TARGET_TOTEM },
			},
		},
		[VUHDO_I18N_BUFFC_AIR_TOTEM] = { -- 02
			{
				{ VUHDO_SPELL_ID_BUFF_GROUNDING_TOTEM, VUHDO_BUFF_TARGET_TOTEM }, -- @okcata
			},
			{
				{ VUHDO_SPELL_ID_BUFF_WINDFURY_TOTEM, VUHDO_BUFF_TARGET_TOTEM }, -- @okcata
			},
			{
				{ VUHDO_SPELL_ID_BUFF_WRATH_OF_AIR_TOTEM, VUHDO_BUFF_TARGET_TOTEM }, -- okcata
			},
		},
		[VUHDO_I18N_BUFFC_EARTH_TOTEM] = { -- 03
			{
				{VUHDO_SPELL_ID_BUFF_EARTHBIND_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_STRENGTH_OF_EARTH_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_STONESKIN_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_STONECLAW_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_EARTH_ELEMENTAL_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_TREMOR_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
		},
		[VUHDO_I18N_BUFFC_WATER_TOTEM] = { -- 04
			{
				{ VUHDO_SPELL_ID_BUFF_MANA_SPRING_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_HEALING_STREAM_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_TOTEM_OF_TRANQUIL_MIND, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ELEMENTAL_RESISTANCE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_MANA_TIDE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_MANA_TIDE_TOTEM] = { -- 05
			{
				{ VUHDO_SPELL_ID_BUFF_MANA_TIDE_TOTEM, VUHDO_BUFF_TARGET_TOTEM },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_HEROISM] = { -- 06
			{
				{ VUHDO_SPELL_ID_BUFF_HEROISM, VUHDO_BUFF_TARGET_OWN_GROUP },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_BLOODLUST] = { -- 07
			{
				{ VUHDO_SPELL_ID_BUFF_BLOODLUST, VUHDO_BUFF_TARGET_OWN_GROUP },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_EARTH_SHIELD] ={ -- 08
			{
				{ VUHDO_SPELL_ID_BUFF_EARTH_SHIELD, VUHDO_BUFF_TARGET_UNIQUE },
			},
		},
		[VUHDO_I18N_BUFFC_WEAPON_ENCHANT] = { -- 09
			{
				{ VUHDO_SPELL_ID_BUFF_ROCKBITER_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FLAMETONGUE_WEAPON, VUHDO_BUFF_TARGET_ENCHANT },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FROSTBRAND_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_WINDFURY_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_EARTHLIVING_WEAPON,  VUHDO_BUFF_TARGET_ENCHANT },
			},
		},
		[VUHDO_I18N_BUFFC_SHIELDS] = { -- 10
			{
				{ VUHDO_SPELL_ID_BUFF_LIGHTNING_SHIELD, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_WATER_SHIELD,  VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_TIDAL_FORCE] = { -- 11
			{
				{ VUHDO_SPELL_ID_BUFF_TIDAL_FORCE, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_NATURES_SWIFTNESS] = { -- 12
			{
				{ VUHDO_SPELL_ID_BUFF_NATURES_SWIFTNESS, VUHDO_BUFF_TARGET_SELF },
			},
		},
	},

	["PALADIN"] = {
		[VUHDO_I18N_BUFFC_BLESSING] = {
			{
				{ VUHDO_SPELL_ID_BUFF_BLESSING_OF_MIGHT, VUHDO_BUFF_TARGET_RAID },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_BLESSING_OF_THE_KINGS, VUHDO_BUFF_TARGET_RAID, VUHDO_SPELL_ID_BUFF_MARK_OF_THE_WILD },
			},
		},
		[VUHDO_I18N_BUFFC_AURA] = {
			{
				{ VUHDO_SPELL_ID_BUFF_DEVOTION_AURA, VUHDO_BUFF_TARGET_AURA },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_RETRIBUTION_AURA, VUHDO_BUFF_TARGET_AURA },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_CONCENTRATION_AURA, VUHDO_BUFF_TARGET_AURA },
			},
			{
				{ VUHDO_SPELL_ID_RESISTANCE_AURA, VUHDO_BUFF_TARGET_AURA },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_CRUSADER_AURA, VUHDO_BUFF_TARGET_AURA },
			},
		},
		[VUHDO_I18N_BUFFC_SEAL] = {
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_JUSTICE, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_INSIGHT, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_TRUTH, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_SEAL_OF_RIGHTEOUSNESS, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_BEACON_OF_LIGHT] = {
			{
				{ VUHDO_SPELL_ID_BUFF_BEACON_OF_LIGHT, VUHDO_BUFF_TARGET_UNIQUE },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_RIGHTEOUS_FURY] = {
			{
				{ VUHDO_SPELL_ID_BUFF_RIGHTEOUS_FURY, VUHDO_BUFF_TARGET_SELF },
			},
		},
	},

	["DRUID"] = {
		[VUHDO_SPELL_ID_BUFFC_MARK_OF_THE_WILD] = {
			{
				{ VUHDO_SPELL_ID_BUFF_MARK_OF_THE_WILD, VUHDO_BUFF_TARGET_RAID, VUHDO_SPELL_ID_BUFF_BLESSING_OF_THE_KINGS },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_THORNS] = {
			{
				{ VUHDO_SPELL_ID_BUFF_THORNS, VUHDO_BUFF_TARGET_UNIQUE },
			},
		},
	},

	["WARLOCK"] = {
		[VUHDO_I18N_BUFFC_SKIN] = {
			{
				{ VUHDO_SPELL_ID_BUFF_DEMON_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FEL_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_SOUL_LINK] = {
			{
				{ VUHDO_SPELL_ID_BUFF_SOUL_LINK, VUHDO_BUFF_TARGET_SELF },
			},
		},
	},

	["MAGE"] = {
		[VUHDO_SPELL_ID_BUFFC_ARCANE_BRILLIANCE] = { -- 1
			{
				{ VUHDO_SPELL_ID_BUFF_ARCANE_BRILLIANCE, VUHDO_BUFF_TARGET_RAID, VUHDO_SPELL_ID_BUFF_DALARAN_BRILLIANCE },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_ICE_BLOCK] = { -- 2
			{
				{ VUHDO_SPELL_ID_BUFF_ICE_BLOCK, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_I18N_BUFFC_ARMOR_MAGE] = { -- 3
			{
				{ VUHDO_SPELL_ID_BUFF_FROST_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_MOLTEN_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ICE_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_MAGE_ARMOR, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_FOCUS_MAGIC] = { -- 4
			{
				{ VUHDO_SPELL_ID_BUFF_FOCUS_MAGIC, VUHDO_BUFF_TARGET_UNIQUE },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_COMBUSTION] = { -- 5
			{
				{ VUHDO_SPELL_ID_BUFF_COMBUSTION, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_SLOW_FALL] = { -- 8
			{
				{ VUHDO_SPELL_ID_BUFF_SLOW_FALL, VUHDO_BUFF_TARGET_SINGLE },
			},
		},
	},

	-- Death Knight
	["DEATHKNIGHT"] = {
		[VUHDO_SPELL_ID_BUFFC_HORN_OF_WINTER] = {
			{
				{VUHDO_SPELL_ID_BUFF_HORN_OF_WINTER , VUHDO_BUFF_TARGET_SELF },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_BONE_SHIELD] = {
			{
				{ VUHDO_SPELL_ID_BUFF_BONE_SHIELD, VUHDO_BUFF_TARGET_SELF },
			}
		},
		[VUHDO_SPELL_ID_BUFFC_PRESENCE] = {
			{
				{ VUHDO_SPELL_ID_BUFF_BLOOD_PRESENCE, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_FROST_PRESENCE, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_UNHOLY_PRESENCE, VUHDO_BUFF_TARGET_SELF },
			},
		},
	},

	-- Warrior
	["WARRIOR"] = {
		[VUHDO_I18N_BUFFC_SHOUT] = {
			{
				{ VUHDO_SPELL_ID_BUFF_BATTLE_SHOUT, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_COMMANDING_SHOUT, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_SPELL_ID_BUFFC_VIGILANCE] = {
			{
				{ VUHDO_SPELL_ID_BUFF_VIGILANCE, VUHDO_BUFF_TARGET_UNIQUE },
			},
		},
	},

	-- Hunter
	["HUNTER"] = {
		[VUHDO_SPELL_ID_BUFFC_TRUESHOT_AURA] = {
			{
				{ VUHDO_SPELL_ID_BUFF_TRUESHOT_AURA, VUHDO_BUFF_TARGET_SELF },
			},
		},
		[VUHDO_I18N_BUFFC_ASPECT] = {
			{
				{ VUHDO_SPELL_ID_BUFF_ASPECT_OF_THE_HAWK, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ASPECT_OF_THE_PACK, VUHDO_BUFF_TARGET_SELF },
			},
			{
				{ VUHDO_SPELL_ID_BUFF_ASPECT_OF_THE_WILD, VUHDO_BUFF_TARGET_SELF },
			},
		},
	},
};



VUHDO_CAST_ICON_DIFF = {
	[VUHDO_SPELL_ID_BUFF_EARTHLIVING_WEAPON] = "Interface\\Icons\\Spell_Shaman_GiftEarthmother",
	--[VUHDO_SPELL_ID_ANCESTRAL_HEALING] = "Interface\\Icons\\Spell_Shaman_GiftEarthmother",
	["OTHER"] = "Interface\\Icons\\achievement_bg_tophealer_soa",
};



VUHDO_BUFF_FILTER_COMBO_TABLE = {
	{ VUHDO_ID_ALL, VUHDO_I18N_BUFF_ALL },

	{ VUHDO_ID_MAINTANKS, VUHDO_HEADER_TEXTS[VUHDO_ID_MAINTANKS] },
	{ VUHDO_ID_MAIN_ASSISTS, VUHDO_HEADER_TEXTS[VUHDO_ID_MAIN_ASSISTS] },
	{ VUHDO_ID_PRIVATE_TANKS, VUHDO_HEADER_TEXTS[VUHDO_ID_PRIVATE_TANKS] },
	{ VUHDO_ID_SELF, VUHDO_HEADER_TEXTS[VUHDO_ID_SELF] },

	{ VUHDO_ID_GROUP_OWN, VUHDO_I18N_OWN_GROUP_LONG },

	{ VUHDO_ID_MELEE_TANK, VUHDO_HEADER_TEXTS[VUHDO_ID_MELEE_TANK] },
	{ VUHDO_ID_MELEE_DAMAGE, VUHDO_HEADER_TEXTS[VUHDO_ID_MELEE_DAMAGE] },
	{ VUHDO_ID_RANGED_DAMAGE, VUHDO_HEADER_TEXTS[VUHDO_ID_RANGED_DAMAGE] },
	{ VUHDO_ID_RANGED_HEAL, VUHDO_HEADER_TEXTS[VUHDO_ID_RANGED_HEAL] },
};

