local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

AtlasLoot_TextParsing = {

	-- Classes
	{ "#c1#", LOCALIZED_CLASS_NAMES_MALE["DRUID"] },
	{ "#c2#", LOCALIZED_CLASS_NAMES_MALE["HUNTER"] },
	{ "#c3#", LOCALIZED_CLASS_NAMES_MALE["MAGE"] },
	{ "#c4#", LOCALIZED_CLASS_NAMES_MALE["PALADIN"] },
	{ "#c5#", LOCALIZED_CLASS_NAMES_MALE["PRIEST"] },
	{ "#c6#", LOCALIZED_CLASS_NAMES_MALE["ROGUE"] },
	{ "#c7#", LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] },
	{ "#c8#", LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] },
	{ "#c9#", LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] },
	{ "#c10#", LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] },

	-- Professions
	{ "#p1#", GetSpellInfo(2259) },		-- Alchemy
	{ "#p2#", GetSpellInfo(2018) },		-- Blacksmithing
	{ "#p3#", GetSpellInfo(2550) },		-- Cooking
	{ "#p4#", GetSpellInfo(7411) },		-- Enchanting
	{ "#p5#", GetSpellInfo(4036) },		-- Engineering
	{ "#p6#", GetSpellInfo(3273) },		-- First Aid
	{ "#p7#", GetSpellInfo(2108) },		-- Leatherworking
	{ "#p8#", GetSpellInfo(3908) },		-- Tailoring
	{ "#p9#", GetSpellInfo(10656) },	-- Dragonscale Leatherworking
	{ "#p10#", GetSpellInfo(10660) },	-- Tribal Leatherworking
	{ "#p11#", GetSpellInfo(10658) },	-- Elemental Leatherworking
	{ "#p12#", GetSpellInfo(25229) },	-- Jewelcrafting
	{ "#p13#", GetSpellInfo(9788) },	-- Armorsmith
	{ "#p14#", GetSpellInfo(17041) },	-- Master Axesmith
	{ "#p15#", GetSpellInfo(17039) },	-- Master Swordsmith
	{ "#p16#", GetSpellInfo(9787) },	-- Weaponsmith
	{ "#p17#", GetSpellInfo(20220) },	-- Gnomish Engineering
	{ "#p18#", GetSpellInfo(20221) },	-- Goblin Engineering
	{ "#p19#", GetSpellInfo(26798) },	-- Mooncloth Tailoring
	{ "#p20#", GetSpellInfo(26801) },	-- Shadoweave Tailoring
	{ "#p21#", GetSpellInfo(26797) },	-- Spellfire Tailoring
	{ "#p22#", GetSpellInfo(17040) },	-- Master Hammersmith
	{ "#p23#", GetSpellInfo(2575) },	-- Mining
	{ "#p24#", GetSpellInfo(63275) },	-- Fishing
	{ "#p25#", GetSpellInfo(78670) },	-- Archaeology
	
	-- Reputation
	{ "#r1#", BabbleFaction["Neutral"] },
	{ "#r2#", BabbleFaction["Friendly"] },
	{ "#r3#", BabbleFaction["Honored"] },
	{ "#r4#", BabbleFaction["Revered"] },
	{ "#r5#", BabbleFaction["Exalted"] },

	-- Armour Class
	{ "#a1#", BabbleInventory["Cloth"] },
	{ "#a2#", BabbleInventory["Leather"] },
	{ "#a3#", BabbleInventory["Mail"] },
	{ "#a4#", BabbleInventory["Plate"] },

	-- Body Slot
	{ "#s1#", BabbleInventory["Head"] },
	{ "#s2#", BabbleInventory["Neck"] },
	{ "#s3#", BabbleInventory["Shoulder"] },
	{ "#s4#", BabbleInventory["Back"] },
	{ "#s5#", BabbleInventory["Chest"] },
	{ "#s6#", BabbleInventory["Shirt"] },
	{ "#s7#", BabbleInventory["Tabard"] },
	{ "#s8#", BabbleInventory["Wrist"] },
	{ "#s9#", BabbleInventory["Hands"] },
	{ "#s10#", BabbleInventory["Waist"] },
	{ "#s11#", BabbleInventory["Legs"] },
	{ "#s12#", BabbleInventory["Feet"] },
	{ "#s13#", BabbleInventory["Ring"] },
	{ "#s14#", BabbleInventory["Trinket"] },
	{ "#s15#", BabbleInventory["Held in Off-Hand"] },
	{ "#s16#", BabbleInventory["Relic"] },

	-- Weapon Weilding
	{ "#h1#", BabbleInventory["One-Hand"] },
	{ "#h2#", BabbleInventory["Two-Hand"] },
	{ "#h3#", BabbleInventory["Main Hand"] },
	{ "#h4#", BabbleInventory["Off Hand"] },

	-- Weapon Type
	{ "#w1#", BabbleInventory["Axe"] },
	{ "#w2#", BabbleInventory["Bow"] },
	{ "#w3#", BabbleInventory["Crossbow"] },
	{ "#w4#", BabbleInventory["Dagger"] },
	{ "#w5#", BabbleInventory["Gun"] },
	{ "#w6#", BabbleInventory["Mace"] },
	{ "#w7#", BabbleInventory["Polearm"] },
	{ "#w8#", BabbleInventory["Shield"] },
	{ "#w9#", BabbleInventory["Staff"] },
	{ "#w10#", BabbleInventory["Sword"] },
	{ "#w11#", BabbleInventory["Thrown"] },
	{ "#w12#", BabbleInventory["Wand"] },
	{ "#w13#", BabbleInventory["Fist Weapon"] },

	-- Misc Inventory related words
	{ "#e1#", BabbleInventory["Bag"] },
	{ "#e2#", BabbleInventory["Potion"] },
	{ "#e3#", BabbleInventory["Food"] },
	{ "#e4#", BabbleInventory["Drink"] },
	{ "#e5#", BabbleInventory["Bandage"] },
	{ "#e6#", BabbleInventory["Trade Goods"] },
	{ "#e7#", BabbleInventory["Gem"] },
	{ "#e8#", BabbleInventory["Reagent"] },
	{ "#e9#", BabbleInventory["Key"] },
	{ "#e10#", BabbleInventory["Book"] },
	{ "#e11#", AL["Scope"] },
	{ "#e12#", BabbleInventory["Mount"] },
	{ "#e13#", AL["Companion"] },
	{ "#e14#", AL["Banner"] },
	{ "#e15#", AL["Token"] },
	{ "#e16#", AL["Darkmoon Faire Card"] },
	{ "#e17#", AL["Enchant"] },
	{ "#e18#", AL["Skinning Knife"] },
	{ "#e20#", BabbleInventory["Fishing Pole"] },
	{ "#e21#", AL["Fish"] },
	{ "#e22#", AL["Combat Pet"] },
	{ "#e23#", AL["Fireworks"] },
	{ "#e24#", AL["Fishing Lure"] },
	{ "#e25#", AL["Transformation Item"] },
	{ "#e26#", AL["Ground Mount"] },
	{ "#e27#", AL["Flying Mount"] },

	-- Labels for Loot Descriptions
	{ "#m1#", AL["Classes:"] },
	{ "#m2#", AL["This Item Begins a Quest"] },
	{ "#m3#", AL["Quest Item"] },
	{ "#m4#", AL["Quest Reward"] },
	{ "#m5#", AL["Shared"] },
	{ "#m6#", BabbleFaction["Horde"] },
	{ "#m7#", BabbleFaction["Alliance"] },
	{ "#m8#", AL["Unique"] },
	{ "#m9#", AL["Right Half"] },
	{ "#m10#", AL["Left Half"] },
	{ "#m11#", AL["28 Slot Soul Shard"] },--Is this still an item?
	{ "#m12#", AL["10 Slot"] },
	{ "#m13#", AL["16 Slot"] },
	{ "#m14#", AL["18 Slot"] },
	{ "#m15#", AL["20 Slot"] },
	{ "#m17#", AL["Currency"] },
	{ "#m20#", AL["Misc"] },
	{ "#m21#", AL["Tier 4"] },
	{ "#m22#", AL["Tier 5"] },
	{ "#m23#", AL["Tier 6"] },
	{ "#m24#", AL["Card Game Item"] },
	{ "#m26#", AL["Conjured Item"] },
	{ "#m27#", AL["Used to summon boss"] },
	{ "#m28#", AL["Feast of Winter Veil"] },
	{ "#m29#", AL["Tradable for sunmote + item above"] },
	{ "#m30#", AL["Tier 1"] },
	{ "#m31#", AL["Tier 2"] },
	{ "#m32#", AL["Achievement Reward"] },
	{ "#m34#", AL["Old Quest Reward"] },
	{ "#m35#", AL["Tier 3"] },
	{ "#m36#", AL["NOT AVAILABLE ANYMORE"]},

	-- Misc
	{ "#j1#", AL["Normal Mode"] },
	{ "#j2#", AL["Raid"] },
	{ "#j3#", AL["Heroic Mode"] },
	{ "#j6#", AL["Dungeon Set 1"] },
	{ "#j7#", AL["Dungeon Set 2"] },
	{ "#j8#", AL["Token Hand-Ins"] },
	{ "#j9#", AL["Level 60"] },
	{ "#j10#", AL["Level 70"] },
	{ "#j11#", AL["Fire Resistance Gear"] },
	{ "#j12#", AL["Arcane Resistance Gear"] },
	{ "#j13#", AL["Nature Resistance Gear"] },
	{ "#j16#", AL["Phase 1"] },
	{ "#j17#", AL["Phase 2"] },
	{ "#j18#", AL["Phase 3"] },
	{ "#j19#", AL["Fire"] },
	{ "#j20#", AL["Water"] },
	{ "#j21#", AL["Wind"] },
	{ "#j22#", AL["Earth"] },
	{ "#j23#", AL["Master Angler"] },
	{ "#j24#", AL["First Prize"] },
	{ "#j25#", AL["Rare Fish Rewards"] },
	{ "#j26#", AL["Rare Fish"] },
	{ "#j27#", AL["Additional Heroic Loot"] },
	{ "#j28#", AL["Entrance"] },
	{ "#j30#", AL["Mounts"] },
	{ "#j37#", AL["10 Man"] },
	{ "#j38#", AL["25 Man"] },
	{ "#j46#", AL["Hard Mode"] },
	{ "#j53#", AL["Hard Mode"] },
	{ "#j54#", AL["Level 80"] },

	-- Upper Deck Card Game
	{ "#ud1#", AL["Loot Card Items"] },

	-- ZG Tokens
	{ "#zgt1#", AL["Primal Hakkari Kossack"] },
	{ "#zgt2#", AL["Primal Hakkari Shawl"] },
	{ "#zgt3#", AL["Primal Hakkari Bindings"] },
	{ "#zgt4#", AL["Primal Hakkari Sash"] },
	{ "#zgt5#", AL["Primal Hakkari Stanchion"] },
	{ "#zgt6#", AL["Primal Hakkari Aegis"] },
	{ "#zgt7#", AL["Primal Hakkari Girdle"] },
	{ "#zgt8#", AL["Primal Hakkari Armsplint"] },
	{ "#zgt9#", AL["Primal Hakkari Tabard"] },

	-- AQ20 Tokens
	{ "#aq20t1#", AL["Qiraji Ornate Hilt"] },
	{ "#aq20t2#", AL["Qiraji Martial Drape"] },
	{ "#aq20t3#", AL["Qiraji Magisterial Ring"] },
	{ "#aq20t4#", AL["Qiraji Ceremonial Ring"] },
	{ "#aq20t5#", AL["Qiraji Regal Drape"] },
	{ "#aq20t6#", AL["Qiraji Spiked Hilt"] },

	-- AQ40 Tokens
	{ "#aq40t1#", AL["Qiraji Bindings of Dominance"] },
	{ "#aq40t2#", AL["Vek'nilash's Circlet"] },
	{ "#aq40t3#", AL["Ouro's Intact Hide"] },
	{ "#aq40t4#", AL["Husk of the Old God"] },
	{ "#aq40t5#", AL["Qiraji Bindings of Command"] },
	{ "#aq40t6#", AL["Vek'lor's Diadem"] },
	{ "#aq40t7#", AL["Skin of the Great Sandworm"] },
	{ "#aq40t8#", AL["Carapace of the Old God"] },

	-- Battleground Factions
	{ "#b1#", BabbleFaction["Stormpike Guard"] },
	{ "#b2#", BabbleFaction["Frostwolf Clan"] },
	{ "#b3#", BabbleFaction["Silverwing Sentinels"] },
	{ "#b4#", BabbleFaction["Warsong Outriders"] },
	{ "#b5#", BabbleFaction["The League of Arathor"] },
	{ "#b6#", BabbleFaction["The Defilers"] },

	-- BRD Arena Mini Bosses
	{ "#brd1#", BabbleBoss["Anub'shiah"] },
	{ "#brd2#", BabbleBoss["Eviscerator"] },
	{ "#brd3#", BabbleBoss["Gorosh the Dervish"] },
	{ "#brd4#", BabbleBoss["Grizzle"] },
	{ "#brd5#", BabbleBoss["Hedrum the Creeper"] },
	{ "#brd6#", BabbleBoss["Ok'thor the Breaker"] },

	-- Chests, Boxes, etc.
	{ "#x1#", AL["Timed Reward Chest 4"] },

	-- NPC Names
	{ "#n1#", BabbleBoss["Lord Cobrahn"] },
	{ "#n2#", BabbleBoss["Lady Anacondra"] },
	{ "#n3#", BabbleBoss["Lord Serpentis"] },
	{ "#n4#", AL["Druid of the Fang"] },
	{ "#n5#", BabbleBoss["Lord Pythas"] },
	{ "#n6#", BabbleBoss["Edwin VanCleef"] },--Might not be in Deadmines anymore
	{ "#n7#", BabbleBoss["Captain Greenskin"] },
	{ "#n8#", AL["Defias Strip Miner"] },
	{ "#n9#", AL["Defias Overseer/Taskmaster"] },
	{ "#n10#", AL["Scarlet Defender/Myrmidon"] },
	{ "#n11#", AL["Trash Mobs"] },
	{ "#n12#", AL["Scarlet Champion"] },
	{ "#n13#", AL["Scarlet Centurion"] },
	{ "#n14#", AL["Herod/Mograine"] },
	{ "#n15#", AL["Scarlet Protector/Guardsman"] },
	{ "#n16#", BabbleBoss["Lord Valthalak"] },
	{ "#n17#", AL["Theldren"] },
	{ "#n18#", AL["Sothos and Jarien"] },
	{ "#n19#", BabbleBoss["Halycon"] },
	{ "#n20#", BabbleBoss["Isalien"] },
	{ "#n21#", BabbleBoss["Mor Grayhoof"] },
	{ "#n22#", BabbleBoss["Kormok"] },
	{ "#n23#", BabbleBoss["The Beast"] },
	{ "#n24#", BabbleBoss["Postmaster Malown"] },
	{ "#n28#", BabbleBoss["High Priest Thekal"] },
	{ "#n29#", BabbleBoss["High Priestess Mar'li"] },
	{ "#n30#", BabbleBoss["High Priestess Arlokk"] },
	{ "#n31#", BabbleBoss["High Priestess Jeklik"] },
	{ "#n32#", BabbleBoss["High Priest Venoxis"] },
	{ "#n33#", BabbleBoss["Bloodlord Mandokir"] },
	{ "#n34#", BabbleBoss["Hakkar"] },
	{ "#n35#", BabbleBoss["Ragnaros"] },
	{ "#n36#", BabbleBoss["Onyxia"] },
	--{ "#n37#", AL["Highlord Kruul"] },--Do we use him anymore?
	{ "#n38#", BabbleBoss["Magmadar"] },
	{ "#n39#", BabbleBoss["Azuregos"] },--Azuregos is not a raid boss anymore
	{ "#n40#", BabbleBoss["Warchief Rend Blackhand"] },
	{ "#n41#", BabbleBoss["Crystal Fang"] },
	{ "#n42#", BabbleBoss["Mother Smolderweb"] },
	{ "#n43#", AL["Scarlet Trainee"] },
	{ "#n44#", AL["Shadowforge Flame Keeper"] },
	{ "#n45#", BabbleBoss["Baelog"] },--Might not be in Uldaman anymore
	--{ "#n46#", AL["Eric 'The Swift'"] },--Might not be in Uldaman anymore
	--{ "#n47#", AL["Olaf"] },--Might not be in Uldaman anymore
	{ "#n48#", BabbleBoss["Hurley Blackbreath"] },
	{ "#n49#", BabbleBoss["Phalanx"] },
	{ "#n50#", BabbleBoss["Ribbly Screwspigot"] },
	{ "#n51#", BabbleBoss["Plugger Spazzring"] },
	{ "#n54#", AL["Nexus Stalker"] },
	{ "#n55#", AL["Auchenai Monk"] },
	{ "#n56#", AL["Cabal Fanatic"] },
	{ "#n57#", AL["Unchained Doombringer"] },
	{ "#n60#", AL["Crimson Sorcerer"] },
	{ "#n61#", AL["Thuzadin Shadowcaster"] },
	{ "#n62#", AL["Crimson Inquisitor"] },
	{ "#n63#", AL["Crimson Battle Mage"] },
	{ "#n64#", AL["Ghoul Ravener"] },
	{ "#n65#", AL["Spectral Citizen"] },
	{ "#n66#", AL["Spectral Researcher"] },
	{ "#n67#", AL["Scholomance Adept"] },
	{ "#n68#", AL["Scholomance Dark Summoner"] },
	{ "#n69#", AL["Blackhand Elite"] },
	{ "#n71#", AL["Firebrand Pyromancer"] },
	{ "#n72#", AL["Firebrand Invoker"] },
	{ "#n75#", AL["Firebrand Grunt"] },
	{ "#n76#", AL["Firebrand Legionnaire"] },
	{ "#n73#", AL["Spirestone Warlord"] },
	{ "#n74#", AL["Spirestone Mystic"] },
	{ "#n75#", AL["Anvilrage Captain"] },
	{ "#n76#", AL["Anvilrage Marshal"] },
	{ "#n77#", AL["Doomforge Arcanasmith"] },
	{ "#n78#", AL["Weapon Technician"] },
	{ "#n79#", AL["Doomforge Craftsman"] },
	{ "#n82#", AL["Raging Skeleton"] },
	{ "#n83#", AL["Ethereal Priest"] },
	{ "#n84#", AL["Sethekk Ravenguard"] },
	{ "#n85#", AL["Time-Lost Shadowmage"] },
	{ "#n86#", AL["Coilfang Sorceress"] },
	{ "#n87#", AL["Coilfang Oracle"] },
	{ "#n88#", AL["Shattered Hand Centurion"] },
	{ "#n89#", AL["Eredar Deathbringer"] },
	{ "#n90#", AL["Arcatraz Sentinel"] },
	{ "#n91#", AL["Gargantuan Abyssal"] },
	{ "#n92#", AL["Sunseeker Botanist"] },
	{ "#n93#", AL["Sunseeker Astromage"] },
	{ "#n94#", AL["Durnholde Rifleman"] },
	{ "#n95#", AL["Rift Keeper/Rift Lord"] },
	{ "#n96#", AL["Crimson Templar"] },
	{ "#n97#", AL["Azure Templar"] },
	{ "#n98#", AL["Hoary Templar"] },
	{ "#n99#", AL["Earthen Templar"] },
	{ "#n100#", AL["The Duke of Cynders"] },
	{ "#n101#", AL["The Duke of Fathoms"] },
	{ "#n102#", AL["The Duke of Zephyrs"] },
	{ "#n103#", AL["The Duke of Shards"] },
	{ "#n104#", BabbleBoss["Prince Skaldrenox"] },
	{ "#n105#", BabbleBoss["Lord Skwol"] },
	{ "#n106#", BabbleBoss["High Marshal Whirlaxis"] },
	{ "#n107#", BabbleBoss["Baron Kazum"] },
	{ "#n108#", BabbleBoss["Baron Charr"] },
	{ "#n109#", BabbleBoss["Princess Tempestria"] },
	{ "#n110#", BabbleBoss["Avalanchion"] },
	{ "#n111#", BabbleBoss["The Windreaver"] },
	{ "#n112#", AL["Aether-tech Assistant"] },
	{ "#n113#", AL["Aether-tech Adept"] },
	{ "#n114#", AL["Aether-tech Master"] },
	{ "#n115#", BabbleBoss["Lord Kri"] },
	{ "#n116#", BabbleBoss["Vem"] },
	{ "#n117#", BabbleBoss["Princess Yauj"] },
	{ "#n118#", AL["Trelopades"] },
	{ "#n119#", AL["King Dorfbruiser"] },
	{ "#n120#", AL["Gorgolon the All-seeing"] },
	{ "#n121#", AL["Matron Li-sahar"] },
	{ "#n122#", AL["Solus the Eternal"] },
	{ "#n129#", AL["Smokywood Pastures Vendor"] },
	{ "#n131#", AL["Barleybrew Brewery"] },
	{ "#n132#", AL["Thunderbrew Brewery"] },
	{ "#n133#", AL["Gordok Brewery"] },
	{ "#n134#", AL["Drohn's Distillery"] },
	{ "#n135#", AL["T'chali's Voodoo Brewery"] },
	{ "#n136#", BabbleBoss["Headless Horseman"] },
	{ "#n137#", BabbleBoss["Illidan Stormrage"] },
	{ "#n138#", BabbleBoss["Vexallus"] },
	{ "#n139#", BabbleBoss["Aeonus"] },
	{ "#n150#", BabbleBoss["Coren Direbrew"] },

	-- Zone Names
	{ "#z1#", BabbleZone["The Deadmines"] },
	{ "#z2#", BabbleZone["Wailing Caverns"] },
	{ "#z3#", BabbleZone["Scarlet Monastery"] },
	{ "#z4#", BabbleZone["Blackrock Depths"] },
	{ "#z5#", BabbleZone["Scholomance"] },
	{ "#z6#", BabbleZone["Stratholme"] },
	{ "#z7#", AL["Various Locations"] },
	{ "#z8#", BabbleZone["Zul'Gurub"] },
	{ "#z9#", BabbleZone["Upper Blackrock Spire"] },
	{ "#z10#", BabbleZone["Lower Blackrock Spire"] },
	{ "#z12#", BabbleZone["Karazhan"] },
	{ "#z13#", BabbleZone["Dire Maul (East)"] },
	{ "#z14#", BabbleZone["Molten Core"] },
	{ "#z15#", BabbleZone["Onyxia's Lair"] },
	{ "#z17#", AL["World Drop"] },
	{ "#z18#", BabbleZone["Black Temple"] },
	{ "#z20#", BabbleZone["Un'Goro Crater"] },
	{ "#z21#", BabbleZone["Winterspring"] },
	{ "#z22#", BabbleZone["Azshara"] },
	{ "#z23#", BabbleZone["Silithus"] },
	{ "#z24#", BabbleZone["Azeroth"] },
	{ "#z25#", BabbleZone["Outland"] },
	{ "#z29#", BabbleZone["Zul'Aman"] },
	{ "#z30#", BabbleZone["Magisters' Terrace"] },
	{ "#z31#", BabbleZone["Shattrath City"] },
	{ "#z32#", BabbleZone["Isle of Quel'Danas"] },
	{ "#z33#", BabbleZone["The Black Morass"] },
	{ "#z34#", BabbleZone["Hyjal Summit"] },
	{ "#z38#", BabbleZone["The Obsidian Sanctum"] },
	{ "#z40#", BabbleZone["Northrend"] },

	-- Factions
	{ "#f1#", BabbleFaction["Lower City"] },
	{ "#f2#", BabbleFaction["The Sha'tar"] },
	{ "#f4#", BabbleFaction["Honor Hold"] },
	{ "#f5#", BabbleFaction["Keepers of Time"] },
	{ "#f6#", BabbleFaction["Cenarion Expedition"] },

	-- Blacksmithing Crafted Mail Sets
	{ "#craftbm1#", AL["Bloodsoul Embrace"] },
	{ "#craftbm2#", AL["Fel Iron Chain"] },

	-- Blacksmithing Crafted Plate Sets
	{ "#craftbp1#", AL["Imperial Plate"] },
	{ "#craftbp2#", AL["The Darksoul"] },
	{ "#craftbp3#", AL["Fel Iron Plate"] },
	{ "#craftbp4#", AL["Adamantite Battlegear"] },
	{ "#craftbp5#", AL["Flame Guard"] },
	{ "#craftbp6#", AL["Enchanted Adamantite Armor"] },
	{ "#craftbp7#", AL["Khorium Ward"] },
	{ "#craftbp8#", AL["Faith in Felsteel"] },
	{ "#craftbp9#", AL["Burning Rage"] },
	{ "#craftbp10#", AL["Ornate Saronite Battlegear"] },
	{ "#craftbp11#", AL["Savage Saronite Battlegear"] },

	-- Leatherworking Crafted Leather Sets
	{ "#craftlwl1#", AL["Volcanic Armor"] },
	{ "#craftlwl2#", AL["Ironfeather Armor"] },
	{ "#craftlwl3#", AL["Stormshroud Armor"] },
	{ "#craftlwl4#", AL["Devilsaur Armor"] },
	{ "#craftlwl5#", AL["Blood Tiger Harness"] },
	{ "#craftlwl6#", AL["Primal Batskin"] },
	{ "#craftlwl7#", AL["Wild Draenish Armor"] },
	{ "#craftlwl8#", AL["Thick Draenic Armor"] },
	{ "#craftlwl9#", AL["Fel Skin"] },
	{ "#craftlwl10#", AL["Strength of the Clefthoof"] },
	{ "#craftlwe1#", AL["Primal Intent"] },
	{ "#craftlwt1#", AL["Windhawk Armor"] },
	{ "#craftlwl11#", AL["Borean Embrace"] },
	{ "#craftlwl12#", AL["Iceborne Embrace"] },
	{ "#craftlwl13#", AL["Eviscerator's Battlegear"] },
	{ "#craftlwl14#", AL["Overcaster Battlegear"] },

	-- Leatherworking Crafted Mail Sets
	{ "#craftlwm1#", AL["Green Dragon Mail"] },
	{ "#craftlwm2#", AL["Blue Dragon Mail"] },
	{ "#craftlwm3#", AL["Black Dragon Mail"] },
	{ "#craftlwm4#", AL["Scaled Draenic Armor"] },
	{ "#craftlwm5#", AL["Felscale Armor"] },
	{ "#craftlwm6#", AL["Felstalker Armor"] },
	{ "#craftlwm7#", AL["Fury of the Nether"] },
	{ "#craftlwd1#", AL["Netherscale Armor"] },
	{ "#craftlwd2#", AL["Netherstrike Armor"] },
	{ "#craftlwm8#", AL["Frostscale Binding"] },
	{ "#craftlwm9#", AL["Nerubian Hive"] },
	{ "#craftlwm10#", AL["Stormhide Battlegear"] },
	{ "#craftlwm11#", AL["Swiftarrow Battlefear"] },

	-- Tailoring Crafted Sets
	{ "#craftt1#", AL["Bloodvine Garb"] },
	{ "#craftt2#", AL["Netherweave Vestments"] },
	{ "#craftt3#", AL["Imbued Netherweave"] },
	{ "#craftt4#", AL["Arcanoweave Vestments"] },
	{ "#craftt5#", AL["The Unyielding"] },
	{ "#craftt6#", AL["Whitemend Wisdom"] },
	{ "#craftt7#", AL["Spellstrike Infusion"] },
	{ "#craftt8#", AL["Battlecast Garb"] },
	{ "#craftt9#", AL["Soulcloth Embrace"] },
	{ "#crafttm1#", AL["Primal Mooncloth"] },
	{ "#crafttsh1#", AL["Shadow's Embrace"] },
	{ "#crafttsf1#", AL["Wrath of Spellfire"] },
	{ "#craftt10#", AL["Frostwoven Power"] },
	{ "#craftt11#", AL["Duskweaver"] },
	{ "#craftt12#", AL["Frostsavage Battlegear"] },

	-- Vanilla WoW Sets
	{ "#pre60s1#", AL["Defias Leather"] },
	{ "#pre60s2#", AL["Embrace of the Viper"] },
	{ "#pre60s3#", AL["Chain of the Scarlet Crusade"] },
	{ "#pre60s4#", AL["The Gladiator"] },
	{ "#pre60s5#", AL["Ironweave Battlesuit"] },
	{ "#pre60s6#", AL["Necropile Raiment"] },
	{ "#pre60s7#", AL["Cadaverous Garb"] },
	{ "#pre60s8#", AL["Bloodmail Regalia"] },
	{ "#pre60s9#", AL["Deathbone Guardian"] },
	{ "#pre60s10#", AL["The Postmaster"] },
	{ "#pre60s15#", AL["Shard of the Gods"] },
	{ "#pre60s16#", AL["Major Mojo Infusion"] },
	{ "#pre60s17#", AL["Overlord's Resolution"] },
	{ "#pre60s18#", AL["Prayer of the Primal"] },
	{ "#pre60s19#", AL["Zanzil's Concentration"] },
	{ "#pre60s20#", AL["Spirit of Eskhandar"] },
	{ "#pre60s21#", AL["The Twin Blades of Hakkari"] },
	{ "#pre60s22#", AL["Primal Blessing"] },
	{ "#pre60s23#", AL["Dal'Rend's Arms"] },
	{ "#pre60s24#", AL["Spider's Kiss"] },

	-- The Burning Crusade Sets
	{ "#bcs1#", AL["The Twin Stars"] },
	{ "#bcs2#", AL["The Twin Blades of Azzinoth"] },
	{ "#bcs3#", AL["Latro's Flurry"] },
	{ "#bcs4#", AL["The Fists of Fury"] },

	-- Wrath Of The Lich King Sets
	{ "#wotlk1#", AL["Raine's Revenge"] },
	{ "#wotlk2#", AL["Purified Shard of the Gods"] },
	{ "#wotlk3#", AL["Shiny Shard of the Gods"] },

	-- ZG Sets
	{ "#zgs1#", AL["Haruspex's Garb"] },
	{ "#zgs2#", AL["Predator's Armor"] },
	{ "#zgs3#", AL["Illusionist's Attire"] },
	{ "#zgs4#", AL["Freethinker's Armor"] },
	{ "#zgs5#", AL["Confessor's Raiment"] },
	{ "#zgs6#", AL["Madcap's Outfit"] },
	{ "#zgs7#", AL["Augur's Regalia"] },
	{ "#zgs8#", AL["Demoniac's Threads"] },
	{ "#zgs9#", AL["Vindicator's Battlegear"] },

	-- AQ20 Sets
	{ "#aq20s1#", AL["Symbols of Unending Life"] },
	{ "#aq20s2#", AL["Trappings of the Unseen Path"] },
	{ "#aq20s3#", AL["Trappings of Vaulted Secrets"] },
	{ "#aq20s4#", AL["Battlegear of Eternal Justice"] },
	{ "#aq20s5#", AL["Finery of Infinite Wisdom"] },
	{ "#aq20s6#", AL["Emblems of Veiled Shadows"] },
	{ "#aq20s7#", AL["Gift of the Gathering Storm"] },
	{ "#aq20s8#", AL["Implements of Unspoken Names"] },
	{ "#aq20s9#", AL["Battlegear of Unyielding Strength"] },

	-- AQ40 Sets
	{ "#aq40s1#", AL["Genesis Raiment"] },
	{ "#aq40s2#", AL["Striker's Garb"] },
	{ "#aq40s3#", AL["Enigma Vestments"] },
	{ "#aq40s4#", AL["Avenger's Battlegear"] },
	{ "#aq40s5#", AL["Garments of the Oracle"] },
	{ "#aq40s6#", AL["Deathdealer's Embrace"] },
	{ "#aq40s7#", AL["Stormcaller's Garb"] },
	{ "#aq40s8#", AL["Doomcaller's Attire"] },
	{ "#aq40s9#", AL["Conqueror's Battlegear"] },

	-- Dungeon 1 Sets
	{ "#t0s1#", AL["Wildheart Raiment"] },
	{ "#t0s2#", AL["Beaststalker Armor"] },
	{ "#t0s3#", AL["Magister's Regalia"] },
	{ "#t0s4#", AL["Lightforge Armor"] },
	{ "#t0s5#", AL["Vestments of the Devout"] },
	{ "#t0s6#", AL["Shadowcraft Armor"] },
	{ "#t0s7#", AL["The Elements"] },
	{ "#t0s8#", AL["Dreadmist Raiment"] },
	{ "#t0s9#", AL["Battlegear of Valor"] },

	-- Dungeon 2 Sets
	{ "#t05s1#", AL["Feralheart Raiment"] },
	{ "#t05s2#", AL["Beastmaster Armor"] },
	{ "#t05s3#", AL["Sorcerer's Regalia"] },
	{ "#t05s4#", AL["Soulforge Armor"] },
	{ "#t05s5#", AL["Vestments of the Virtuous"] },
	{ "#t05s6#", AL["Darkmantle Armor"] },
	{ "#t05s7#", AL["The Five Thunders"] },
	{ "#t05s8#", AL["Deathmist Raiment"] },
	{ "#t05s9#", AL["Battlegear of Heroism"] },

	-- Dungeon 3 Sets
	{ "#ds3s1#", AL["Hallowed Raiment"] },
	{ "#ds3s2#", AL["Incanter's Regalia"] },
	{ "#ds3s3#", AL["Mana-Etched Regalia"] },
	{ "#ds3s4#", AL["Oblivion Raiment"] },
	{ "#ds3s5#", AL["Assassination Armor"] },
	{ "#ds3s6#", AL["Moonglade Raiment"] },
	{ "#ds3s7#", AL["Wastewalker Armor"] },
	{ "#ds3s8#", AL["Beast Lord Armor"] },
	{ "#ds3s9#", AL["Desolation Battlegear"] },
	{ "#ds3s10#", AL["Tidefury Raiment"] },
	{ "#ds3s11#", AL["Bold Armor"] },
	{ "#ds3s12#", AL["Doomplate Battlegear"] },
	{ "#ds3s13#", AL["Righteous Armor"] },

	-- Tier 1 Sets
	{ "#t1s1#", AL["Cenarion Raiment"] },
	{ "#t1s2#", AL["Giantstalker Armor"] },
	{ "#t1s3#", AL["Arcanist Regalia"] },
	{ "#t1s4#", AL["Lawbringer Armor"] },
	{ "#t1s5#", AL["Vestments of Prophecy"] },
	{ "#t1s6#", AL["Nightslayer Armor"] },
	{ "#t1s7#", AL["The Earthfury"] },
	{ "#t1s8#", AL["Felheart Raiment"] },
	{ "#t1s9#", AL["Battlegear of Might"] },

	-- Tier 2 Sets
	{ "#t2s1#", AL["Stormrage Raiment"] },
	{ "#t2s2#", AL["Dragonstalker Armor"] },
	{ "#t2s3#", AL["Netherwind Regalia"] },
	{ "#t2s4#", AL["Judgement Armor"] },
	{ "#t2s5#", AL["Vestments of Transcendence"] },
	{ "#t2s6#", AL["Bloodfang Armor"] },
	{ "#t2s7#", AL["The Ten Storms"] },
	{ "#t2s8#", AL["Nemesis Raiment"] },
	{ "#t2s9#", AL["Battlegear of Wrath"] },

	-- Tier 3 Sets
	{ "#t3s1#", AL["Dreamwalker Raiment"] },
	{ "#t3s2#", AL["Cryptstalker Armor"] },
	{ "#t3s3#", AL["Frostfire Regalia"] },
	{ "#t3s4#", AL["Redemption Armor"] },
	{ "#t3s5#", AL["Vestments of Faith"] },
	{ "#t3s6#", AL["Bonescythe Armor"] },
	{ "#t3s7#", AL["The Earthshatterer"] },
	{ "#t3s8#", AL["Plagueheart Raiment"] },
	{ "#t3s9#", AL["Dreadnaught's Battlegear"] },

	-- Tier 4 Sets
	{ "#t4s1_1#", AL["Malorne Harness"] },
	{ "#t4s1_2#", AL["Malorne Raiment"] },
	{ "#t4s1_3#", AL["Malorne Regalia"] },
	{ "#t4s2#", AL["Demon Stalker Armor"] },
	{ "#t4s3#", AL["Aldor Regalia"] },
	{ "#t4s4_1#", AL["Justicar Armor"] },
	{ "#t4s4_2#", AL["Justicar Battlegear"] },
	{ "#t4s4_3#", AL["Justicar Raiment"] },
	{ "#t4s5_1#", AL["Incarnate Raiment"] },
	{ "#t4s5_2#", AL["Incarnate Regalia"] },
	{ "#t4s6#", AL["Netherblade Set"] },
	{ "#t4s7_1#", AL["Cyclone Harness"] },
	{ "#t4s7_2#", AL["Cyclone Raiment"] },
	{ "#t4s7_3#", AL["Cyclone Regalia"] },
	{ "#t4s8#", AL["Voidheart Raiment"] },
	{ "#t4s9_1#", AL["Warbringer Armor"] },
	{ "#t4s9_2#", AL["Warbringer Battlegear"] },

	-- Tier 5 Sets
	{ "#t5s1_1#", AL["Nordrassil Harness"] },
	{ "#t5s1_2#", AL["Nordrassil Raiment"] },
	{ "#t5s1_3#", AL["Nordrassil Regalia"] },
	{ "#t5s2#", AL["Rift Stalker Armor"] },
	{ "#t5s3#", AL["Tirisfal Regalia"] },
	{ "#t5s4_1#", AL["Crystalforge Armor"] },
	{ "#t5s4_2#", AL["Crystalforge Battlegear"] },
	{ "#t5s4_3#", AL["Crystalforge Raiment"] },
	{ "#t5s5_1#", AL["Avatar Raiment"] },
	{ "#t5s5_2#", AL["Avatar Regalia"] },
	{ "#t5s6#", AL["Deathmantle Set"] },
	{ "#t5s7_1#", AL["Cataclysm Harness"] },
	{ "#t5s7_2#", AL["Cataclysm Raiment"] },
	{ "#t5s7_3#", AL["Cataclysm Regalia"] },
	{ "#t5s8#", AL["Corruptor Raiment"] },
	{ "#t5s9_1#", AL["Destroyer Armor"] },
	{ "#t5s9_2#", AL["Destroyer Battlegear"] },

	-- Tier 6 Sets
	{ "#t6s1_1#", AL["Thunderheart Harness"] },
	{ "#t6s1_2#", AL["Thunderheart Raiment"] },
	{ "#t6s1_3#", AL["Thunderheart Regalia"] },
	{ "#t6s2#", AL["Gronnstalker's Armor"] },
	{ "#t6s3#", AL["Tempest Regalia"] },
	{ "#t6s4_1#", AL["Lightbringer Armor"] },
	{ "#t6s4_2#", AL["Lightbringer Battlegear"] },
	{ "#t6s4_3#", AL["Lightbringer Raiment"] },
	{ "#t6s5_1#", AL["Vestments of Absolution"] },
	{ "#t6s5_2#", AL["Absolution Regalia"] },
	{ "#t6s6#", AL["Slayer's Armor"] },
	{ "#t6s7_1#", AL["Skyshatter Harness"] },
	{ "#t6s7_2#", AL["Skyshatter Raiment"] },
	{ "#t6s7_3#", AL["Skyshatter Regalia"] },
	{ "#t6s8#", AL["Malefic Raiment"] },
	{ "#t6s9_1#", AL["Onslaught Armor"] },
	{ "#t6s9_2#", AL["Onslaught Battlegear"] },

	-- Tier 7 Sets
	{ "#t7s1_1#", AL["Dreamwalker Garb"] },
	{ "#t7s1_2#", AL["Dreamwalker Battlegear"] },
	{ "#t7s1_3#", AL["Dreamwalker Regalia"] },
	{ "#t7s2#", AL["Cryptstalker Battlegear"] },
	{ "#t7s3#", AL["Frostfire Garb"] },
	{ "#t7s4_1#", AL["Redemption Regalia"] },
	{ "#t7s4_2#", AL["Redemption Battlegear"] },
	{ "#t7s4_3#", AL["Redemption Plate"] },
	{ "#t7s5_1#", AL["Regalia of Faith"] },
	{ "#t7s5_2#", AL["Garb of Faith"] },
	{ "#t7s6#", AL["Bonescythe Battlegear"] },
	{ "#t7s7_1#", AL["Earthshatter Garb"] },
	{ "#t7s7_2#", AL["Earthshatter Battlegear"] },
	{ "#t7s7_3#", AL["Earthshatter Regalia"] },
	{ "#t7s8#", AL["Plagueheart Garb"] },
	{ "#t7s9_1#", AL["Dreadnaught Battlegear"] },
	{ "#t7s9_2#", AL["Dreadnaught Plate"] },
	{ "#t7s10_1#", AL["Scourgeborne Battlegear"] },
	{ "#t7s10_2#", AL["Scourgeborne Plate"] },

	-- Tier 8 Sets
	{ "#t8s1_1#", AL["Nightsong Garb"] },
	{ "#t8s1_2#", AL["Nightsong Battlegear"] },
	{ "#t8s1_3#", AL["Nightsong Regalia"] },
	{ "#t8s2#", AL["Scourgestalker Battlegear"] },
	{ "#t8s3#", AL["Kirin Tor Garb"] },
	{ "#t8s4_1#", AL["Aegis Regalia"] },
	{ "#t8s4_2#", AL["Aegis Battlegear"] },
	{ "#t8s4_3#", AL["Aegis Plate"] },
	{ "#t8s5_1#", AL["Sanctification Regalia"] },
	{ "#t8s5_2#", AL["Sanctification Garb"] },
	{ "#t8s6#", AL["Terrorblade Battlegear"] },
	{ "#t8s7_1#", AL["Worldbreaker Garb"] },
	{ "#t8s7_2#", AL["Worldbreaker Battlegear"] },
	{ "#t8s7_3#", AL["Worldbreaker Regalia"] },
	{ "#t8s8#", AL["Deathbringer Garb"] },
	{ "#t8s9_1#", AL["Siegebreaker Battlegear"] },
	{ "#t8s9_2#", AL["Siegebreaker Plate"] },
	{ "#t8s10_1#", AL["Darkruned Battlegear"] },
	{ "#t8s10_2#", AL["Darkruned Plate"] },

	-- Tier 9 Sets
	{ "#t9s1_1a#", AL["Malfurion's Garb"] },
	{ "#t9s1_1h#", AL["Runetotem's Garb"] },
	{ "#t9s1_2a#", AL["Malfurion's Battlegear"] },
	{ "#t9s1_2h#", AL["Runetotem's Battlegear"] },
	{ "#t9s1_3a#", AL["Malfurion's Regalia"] },
	{ "#t9s1_3h#", AL["Runetotem's Regalia"] },
	{ "#t9s2_a#", AL["Windrunner's Battlegear"] },
	{ "#t9s2_h#", AL["Windrunner's Pursuit"] },
	{ "#t9s3_a#", AL["Khadgar's Regalia"] },
	{ "#t9s3_h#", AL["Sunstrider's Regalia"] },
	{ "#t9s4_1a#", AL["Turalyon's Garb"] },
	{ "#t9s4_1h#", AL["Liadrin's Garb"] },
	{ "#t9s4_2a#", AL["Turalyon's Battlegear"] },
	{ "#t9s4_2h#", AL["Liadrin's Battlegear"] },
	{ "#t9s4_3a#", AL["Turalyon's Plate"] },
	{ "#t9s4_3h#", AL["Liadrin's Plate"] },
	{ "#t9s5_1a#", AL["Velen's Regalia"] },
	{ "#t9s5_1h#", AL["Zabra's Regalia"] },
	{ "#t9s5_2a#", AL["Velen's Raiment"] },
	{ "#t9s5_2h#", AL["Zabra's Raiment"] },
	{ "#t9s6_a#", AL["VanCleef's Battlegear"] },
	{ "#t9s6_h#", AL["Garona's Battlegear"] },
	{ "#t9s7_1a#", AL["Nobundo's Garb"] },
	{ "#t9s7_1h#", AL["Thrall's Garb"] },
	{ "#t9s7_2a#", AL["Nobundo's Battlegear"] },
	{ "#t9s7_2h#", AL["Thrall's Battlegear"] },
	{ "#t9s7_3a#", AL["Nobundo's Regalia"] },
	{ "#t9s7_3h#", AL["Thrall's Regalia"] },
	{ "#t9s8_a#", AL["Kel'Thuzad's Regalia"] },
	{ "#t9s8_h#", AL["Gul'dan's Regalia"] },
	{ "#t9s9_1a#", AL["Wrynn's Battlegear"] },
	{ "#t9s9_1h#", AL["Hellscream's Battlegear"] },
	{ "#t9s9_2a#", AL["Wrynn's Plate"] },
	{ "#t9s9_2h#", AL["Hellscream's Plate"] },
	{ "#t9s10_1a#", AL["Thassarian's Plate"] },
	{ "#t9s10_1h#", AL["Koltira's Plate"] },
	{ "#t9s10_2a#", AL["Thassarian's Battlegear"] },
	{ "#t9s10_2h#", AL["Koltira's Battlegear"] },

	-- Tier 10 Sets
	{ "#t10s1_1#", AL["Lasherweave's Garb"] },
	{ "#t10s1_2#", AL["Lasherweave's Battlegear"] },
	{ "#t10s1_3#", AL["Lasherweave's Regalia"] },
	{ "#t10s2#", AL["Ahn'Kahar Blood Hunter's Battlegear"] },
	{ "#t10s3#", AL["Bloodmage's Regalia"] },
	{ "#t10s4_1#", AL["Lightsworn Garb"] },
	{ "#t10s4_2#", AL["Lightsworn Plate"] },
	{ "#t10s4_3#", AL["Lightsworn Battlegear"] },
	{ "#t10s5_1#", AL["Crimson Acolyte's Regalia"] },
	{ "#t10s5_2#", AL["Crimson Acolyte's Raiment"] },
	{ "#t10s6#", AL["Shadowblade's Battlegear"] },
	{ "#t10s7_1#", AL["Frost Witch's Garb"] },
	{ "#t10s7_2#", AL["Frost Witch's Battlegear"] },
	{ "#t10s7_3#", AL["Frost Witch's Regalia"] },
	{ "#t10s8#", AL["Dark Coven's Garb"] },
	{ "#t10s9_1#", AL["Ymirjar Lord's Battlegear"] },
	{ "#t10s9_2#", AL["Ymirjar Lord's Plate"] },
	{ "#t10s10_1#", AL["Scourgelord's Battlegear"] },
	{ "#t10s10_2#", AL["Scourgelord's Plate"] },

	-- Tier 11 Sets
	{ "#t11s1_1#", AL["Stormrider's Vestments"] },
	{ "#t11s1_2#", AL["Stormrider's Battlegarb"] },
	{ "#t11s1_3#", AL["Stormrider's Regalia"] },
	{ "#t11s2#", AL["Lightning-Charged Battlegear"] },
	{ "#t11s3#", AL["Firelord's Vestments"] },
	{ "#t11s4_1#", AL["Reinforced Sapphirium Regalia"] },
	{ "#t11s4_2#", AL["Reinforced Sapphirium Battlearmor"] },
	{ "#t11s4_3#", AL["Reinforced Sapphirium Battleplate"] },
	{ "#t11s5_1#", AL["Mercurial Regalia"] },
	{ "#t11s5_2#", AL["Mercurial Vestments"] },
	{ "#t11s6#", AL["Wind Dancer's Regalia"] },
	{ "#t11s7_1#", AL["Vestments of the Raging Elements"] },
	{ "#t11s7_2#", AL["Battlegear of the Raging Elements"] },
	{ "#t11s7_3#", AL["Regalia of the Raging Elements"] },
	{ "#t11s8#", AL["Shadowflame Regalia"] },
	{ "#t11s9_1#", AL["Earthen Warplate"] },
	{ "#t11s9_2#", AL["Earthen Battleplate"] },
	{ "#t11s10_1#", AL["Magma Plated Battlegear"] },
	{ "#t11s10_2#", AL["Magma Plated Battlearmor"] },

	-- Arathi Basin Sets - Alliance
	{ "#absa1#", AL["The Highlander's Intent"] },
	{ "#absa2#", AL["The Highlander's Purpose"] },
	{ "#absa3#", AL["The Highlander's Will"] },
	{ "#absa4#", AL["The Highlander's Determination"] },
	{ "#absa5#", AL["The Highlander's Fortitude"] },
	{ "#absa6#", AL["The Highlander's Resolution"] },
	{ "#absa7#", AL["The Highlander's Resolve"] },

	-- Arathi Basin Sets - Horde
	{ "#absh1#", AL["The Defiler's Intent"] },
	{ "#absh2#", AL["The Defiler's Purpose"] },
	{ "#absh3#", AL["The Defiler's Will"] },
	{ "#absh4#", AL["The Defiler's Determination"] },
	{ "#absh5#", AL["The Defiler's Fortitude"] },
	{ "#absh6#", AL["The Defiler's Resolution"] },

	-- PvP Level 60 Rare Sets - Alliance 
	{ "#pvpra1#", AL["Lieutenant Commander's Refuge"] },
	{ "#pvpra2#", AL["Lieutenant Commander's Pursuance"] },
	{ "#pvpra3#", AL["Lieutenant Commander's Arcanum"] },
	{ "#pvpra4#", AL["Lieutenant Commander's Redoubt"] },
	{ "#pvpra5#", AL["Lieutenant Commander's Investiture"] },
	{ "#pvpra6#", AL["Lieutenant Commander's Guard"] },
	{ "#pvpra7#", AL["Lieutenant Commander's Dreadgear"] },
	{ "#pvpra8#", AL["Lieutenant Commander's Battlearmor"] },
	{ "#pvpra9#", AL["Lieutenant Commander's Stormcaller"] },

	-- PvP Level 60 Rare Sets - Horde
	{ "#pvprh1#", AL["Champion's Refuge"] },
	{ "#pvprh2#", AL["Champion's Pursuance"] },
	{ "#pvprh3#", AL["Champion's Arcanum"] },
	{ "#pvprh4#", AL["Champion's Investiture"] },
	{ "#pvprh5#", AL["Champion's Guard"] },
	{ "#pvprh6#", AL["Champion's Stormcaller"] },
	{ "#pvprh7#", AL["Champion's Dreadgear"] },
	{ "#pvprh8#", AL["Champion's Battlearmor"] },
	{ "#pvprh9#", AL["Champion's Redoubt"] },

	-- PvP Level 60 Epic Sets - Alliance
	{ "#pvpea1#", AL["Field Marshal's Sanctuary"] },
	{ "#pvpea2#", AL["Field Marshal's Pursuit"] },
	{ "#pvpea3#", AL["Field Marshal's Regalia"] },
	{ "#pvpea4#", AL["Field Marshal's Aegis"] },
	{ "#pvpea5#", AL["Field Marshal's Raiment"] },
	{ "#pvpea6#", AL["Field Marshal's Vestments"] },
	{ "#pvpea7#", AL["Field Marshal's Threads"] },
	{ "#pvpea8#", AL["Field Marshal's Battlegear"] },
	{ "#pvpea9#", AL["Field Marshal's Earthshaker"] },

	-- PvP Level 60 Epic Sets - Horde
	{ "#pvpeh1#", AL["Warlord's Sanctuary"] },
	{ "#pvpeh2#", AL["Warlord's Pursuit"] },
	{ "#pvpeh3#", AL["Warlord's Regalia"] },
	{ "#pvpeh4#", AL["Warlord's Raiment"] },
	{ "#pvpeh5#", AL["Warlord's Vestments"] },
	{ "#pvpeh6#", AL["Warlord's Earthshaker"] },
	{ "#pvpeh7#", AL["Warlord's Threads"] },
	{ "#pvpeh8#", AL["Warlord's Battlegear"] },
	{ "#pvpeh9#", AL["Warlord's Aegis"] },

	-- Outland Faction Reputation PvP Sets
	{ "#pvprep701_1#", AL["Dragonhide Battlegear"] },
	{ "#pvprep701_2#", AL["Wyrmhide Battlegear"] },
	{ "#pvprep701_3#", AL["Kodohide Battlegear"] },
	{ "#pvprep702#", AL["Stalker's Chain Battlegear"] },
	{ "#pvprep703#", AL["Evoker's Silk Battlegear"] },
	{ "#pvprep704_1#", AL["Crusader's Scaled Battledgear"] },
	{ "#pvprep704_2#", AL["Crusader's Ornamented Battledgear"] },
	{ "#pvprep705_1#", AL["Satin Battlegear"] },
	{ "#pvprep705_2#", AL["Mooncloth Battlegear"] },
	{ "#pvprep706#", AL["Opportunist's Battlegear"] },
	{ "#pvprep707_1#", AL["Seer's Linked Battlegear"] },
	{ "#pvprep707_2#", AL["Seer's Mail Battlegear"] },
	{ "#pvprep707_3#", AL["Seer's Ringmail Battlegear"] },
	{ "#pvprep708#", AL["Dreadweave Battlegear"] },
	{ "#pvprep709#", AL["Savage's Plate Battlegear"] },

	-- Arena Epic Sets
	{ "#reqrating#", AL["Rating:"] },
	{ "#arenas1_1#", AL["Gladiator's Sanctuary"] },
	{ "#arenas1_2#", AL["Gladiator's Wildhide"] },
	{ "#arenas1_3#", AL["Gladiator's Refuge"] },
	{ "#arenas2#", AL["Gladiator's Pursuit"] },
	{ "#arenas3#", AL["Gladiator's Regalia"] },
	{ "#arenas4_1#", AL["Gladiator's Aegis"] },
	{ "#arenas4_2#", AL["Gladiator's Vindication"] },
	{ "#arenas4_3#", AL["Gladiator's Redemption"] },
	{ "#arenas5_1#", AL["Gladiator's Raiment"] },
	{ "#arenas5_2#", AL["Gladiator's Investiture"] },
	{ "#arenas6#", AL["Gladiator's Vestments"] },
	{ "#arenas7_1#", AL["Gladiator's Earthshaker"] },
	{ "#arenas7_2#", AL["Gladiator's Thunderfist"] },
	{ "#arenas7_3#", AL["Gladiator's Wartide"] },
	{ "#arenas8_1#", AL["Gladiator's Dreadgear"] },
	{ "#arenas8_2#", AL["Gladiator's Felshroud"] },
	{ "#arenas9#", AL["Gladiator's Battlegear"] },
	{ "#arenas10#", AL["Gladiator's Desecration"] },

	-- Crafting
	{ "#sr#", AL["Skill Required:"] },

	-- Misc PvP Set Text
	{ "#pvps1#", AL["Epic Set"] },
	{ "#pvps2#", AL["Rare Set"] },

	-- Text Colouring
	{ "=q0=", "|cff9d9d9d" },	-- Gray
	{ "=q1=", "|cffFFFFFF" },	-- White
	{ "=q2=", "|cff1eff00" },	-- Green
	{ "=q3=", "|cff0070dd" },	-- Blue
	{ "=q4=", "|cffa335ee" },	-- Purple
	{ "=q5=", "|cffFF8000" },	-- Orange
	{ "=q6=", "|cffFF0000" },	-- Red 
	{ "=q7=", "|cffe6cc80" },	-- Beige
	{ "=ec1=", "|cffFF8400" },	-- Orange
	{ "=ds=", "|cffFFd200" },	-- Yellow

	-- Months
	{ "#month1#", AL["January"] },
	{ "#month2#", AL["February"] },
	{ "#month3#", AL["March"] },
	{ "#month4#", AL["April"] },
	{ "#month5#", AL["May"] },
	{ "#month6#", AL["June"] },
	{ "#month7#", AL["July"] },
	{ "#month8#", AL["August"] },
	{ "#month9#", AL["September"] },
	{ "#month10#", AL["October"] },
	{ "#month11#", AL["November"] },
	{ "#month12#", AL["December"] },

	-- Currency Icons
	{ "#gold#", "|TInterface\\AddOns\\AtlasLoot\\Images\\gold:0|t" },
	{ "#silver#", "|TInterface\\AddOns\\AtlasLoot\\Images\\silver:0|t" },
	{ "#copper#", "|TInterface\\AddOns\\AtlasLoot\\Images\\bronze:0|t" },
	{ "#arena#", "|TInterface\\PVPFrame\\PVP-ArenaPoints-Icon:0|t" },
	{ "#markthrallmar#", "|TInterface\\Icons\\INV_Misc_Token_Thrallmar:0|t" },
	{ "#markhhold#", "|TInterface\\Icons\\INV_Misc_Token_HonorHold:0|t" },
	{ "#halaabattle#", "|TInterface\\Icons\\INV_Misc_Rune_08:0|t" },
	{ "#halaaresearch#", "|TInterface\\Icons\\INV_Misc_Rune_09:0|t" },
	{ "#spiritshard#", "|TInterface\\Icons\\INV_Jewelry_FrostwolfTrinket_04:0|t" },
	{ "#wintergrasp#", "|TInterface\\Icons\\INV_Misc_Platnumdisks:0|t" },
	{ "#trophyofthecrusade#", "|TInterface\\Icons\\INV_Misc_Trophy_Argent:0|t" },
	{ "#darkmoon#", "|TInterface\\Icons\\INV_Misc_Ticket_Darkmoon_01:0|t" },
	{ "#noblegarden#", "|TInterface\\Icons\\Achievement_Noblegarden_Chocolate_Egg:0|t" },
	{ "#brewfest#", "|TInterface\\Icons\\INV_Misc_Coin_01:0|t" },
	{ "#ccombat#", "|TInterface\\Icons\\INV_Jewelry_Talisman_06:0|t" },
	{ "#champseal#", "|TInterface\\Icons\\Ability_Paladin_ArtofWar:0|t" },
	{ "#champwrit#", "|TInterface\\Icons\\INV_Scroll_11:0|t" },
	{ "#ctactical#", "|TInterface\\Icons\\INV_Jewelry_Amulet_02:0|t" },
	{ "#clogistics#", "|TInterface\\Icons\\INV_Jewelry_Necklace_16:0|t" },
	{ "#cremulos#", "|TInterface\\Icons\\INV_Jewelry_Necklace_14:0|t" },
	{ "#ccenarius#", "|TInterface\\Icons\\INV_Jewelry_Necklace_12:0|t" },
	{ "#zandalar#", "|TInterface\\Icons\\INV_Misc_Coin_08:0|t" },
	{ "#glowcap#", "|TInterface\\Icons\\INV_Mushroom_02:0|t" },
	{ "#ogrilashard#", "|TInterface\\Icons\\INV_Misc_Apexis_Shard:0|t" },
	{ "#ogrilacrystal#", "|TInterface\\Icons\\INV_Misc_Apexis_Crystal:0|t" },
	{ "#winterfinclam#", "|TInterface\\Icons\\INV_Misc_Shell_03:0|t" },
	{ "#fireflower#", "|TInterface\\Icons\\INV_SummerFest_FireFlower:0|t" },
	{ "#t10mark#", "|TInterface\\Icons\\ability_paladin_shieldofthetemplar:0|t"},
	{ "#valentineday#", "|TInterface\\Icons\\inv_valentinescard01:0|t"},
	{ "#valentineday2#", "|TInterface\\Icons\\inv_jewelry_necklace_43:0|t"},
	{ "#justice#", "|TInterface\\Icons\\pvecurrency-justice:0|t"},
	{ "#valor#", "|TInterface\\Icons\\pvecurrency-valor:0|t"},
}

--------------------------------------------------------------------------------
-- Text replacement function
--------------------------------------------------------------------------------
function AtlasLoot:FixText(text)
	if not text or text == "" then return "" end
	for k,_ in pairs(AtlasLoot_TextParsing) do
		text = gsub(text, AtlasLoot_TextParsing[k][1], AtlasLoot_TextParsing[k][2]);
	end

    englishFaction, _ = UnitFactionGroup("player")
    if englishFaction == "Horde" then
        text = gsub(text, "#honor#", "|TInterface\\Icons\\pvpcurrency-honor-horde:0|t");
		text = gsub(text, "#conquest#", "|TInterface\\Icons\\pvpcurrency-conquest-horde:0|t");
        text = gsub(text, "#factionoutlandPvP#", "|TInterface\\AddOns\\AtlasLoot\\Images\\Horde:0|t");
        text = gsub(text, "#markthrallmarhhold#", "|TInterface\\Icons\\INV_Misc_Token_Thrallmar:0|t");
    else
        text = gsub(text, "#honor#", "|TInterface\\Icons\\pvpcurrency-honor-alliance:0|t");
		text = gsub(text, "#conquest#", "|TInterface\\Icons\\pvpcurrency-conquest-alliance:0|t");
        text = gsub(text, "#factionoutlandPvP#", "|TInterface\\AddOns\\AtlasLoot\\Images\\Alliance:0|t");
        text = gsub(text, "#markthrallmarhhold#", "|TInterface\\Icons\\INV_Misc_Token_HonorHold:0|t");
    end

    return text;
end

function AtlasLoot:FixTextBack(text)
	if not text or text == "" then return "" end
	
	text = gsub(text, "Miscellaneous", "#m20#");
	for k,_ in pairs(AtlasLoot_TextParsing) do
		text = gsub(text, AtlasLoot_TextParsing[k][2], AtlasLoot_TextParsing[k][1]);
	end

    return text;
end