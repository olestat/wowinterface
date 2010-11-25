-- EPGPLootmaster Locale
-- Please use the Localization App on Curseforge to Update this
-- http://wow.curseforge.com/addons/epgp_lootmaster/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("EPGPLootmaster", "frFR")
if not L then return end

L["\
\
|cFFFF8080WARNING: Alot of settings have been hidden because the EPGPLootmaster 'ML' module has been disabled. Please enabled it from the addon configuration screen.|r"] = "|cFFFF8080Attention : Un grand nombre de r\195\169glages sont masqu\195\169s parce que le module EPGPLoot 'ML' a \195\169t\195\169 d\195\169sactiv\195\169. Merci de l'activer via la fen\195\170tre de configuration de l'add-on.|r"
L["\
Empty: use normal GP value \
50%: use 50% of normal GP value \
25: all items are worth 25 GP"] = "Vide : utiliser la valeur en GP normale\
50% : utiliser la moiti\195\169 de la valeur en GP\
25 : tous les objets ont une valeur de 25 GP" -- Needs review
L[" (Invalid link)"] = "(Lien non valide)"
L[" (Loot not registered in CT_RaidTracker; please set it manually)"] = "(Loot non enregistr\195\169 dans CT_RaidTracker; merci de le rentrer manuellement)"
L[" (Loot registered in CT_RaidTracker)"] = "(Loot enregistr\195\169 dans CT_RaidTracker)"
L[" (Loot registered in HeadCount)"] = "(Loot enregistr\195\169 dans HeadCount)"
L[" (Unable to register in CT_RaidTracker; no raid started)"] = "(Impossible d'enregistrer dans CT_RaidTracker; aucun raid n'a commenc\195\169)"
L[" (Unable to register in HeadCount; item found, candidate wrong)"] = "(Impossible d'enregistrer dans HeadCount; l'item est trouv\195\169 mais le destinataire n'est pas le bon)"
L[" (Unable to register in HeadCount; itemID not found)"] = "(Impossible d'enregistrer dans HeadCount; l'ID de l'objet n'est pas retrouv\195\169)"
L[" (Unable to register in HeadCount; last item not found)"] = "(Impossible d'enregistrer dans HeadCount; le dernier item n'est pas retrouv\195\169)"
L[" (Unable to register in HeadCount; no active raid)"] = "(Impossible de faire l'enregistrement dans HeadCount; il n'y a pas de raid actif en cours)"
L[" (Unable to register in HeadCount; no lootlist available)"] = "(Impossible de faire l'enregistrement dans HeadCount; il n'y a pas de liste de loot disponible)"
L[" (Unable to register in HeadCount; no raidTracker)"] = "(Impossible de faire l'enregistrement dans HeadCount; il n'y a pas de raidTracker)"
L[" or %s"] = "ou %s"
L[" text:"] = "texte:"
L["\"%s\" not understood. usage:"] = "\"%s\" non compris. Utilisation:" -- Needs review
L["%s is offline, out of range or not grouped, unable to inspect."] = "%s est hors-ligne, hors de port\195\169e ou non group\195\169. Inspection impossible."
L["%s not found on the loot list, perhaps it has already been looted?"] = "%s introuvable dans la liste de loot, peut-\195\170tre a t'il d\195\169j\195\160 \195\169t\195\169 loot?"
L["%s received %s for %s GP%s."] = "%s re\195\167oit %s pour %s GP%s."
L["%s received %s for bank%4$s."] = "%s re\195\167oit %s pour la banque%4$s."
L["%s received %s for disenchantment%4$s."] = "%s re\195\167oit %s pour le d\195\169senchanter%4%s."
L["%s received %s for unknown reason%4$s."] = "%s re\195\167oit %s pour raison inconnue%4$s."
L["%s rolled %s."] = "%s rand pour %s."
L["%s secs until pass"] = "%s secondes avant de passer automatiquement"
L["%s sent \"%s %s\"; not understood, returned usage list."] = "%s envoie \"%s %s\"; non compris. Renvoy\195\169 \195\160 la liste d'utilisation." -- Needs review
L["%splease whisper me !epgp need/greed/pass %s  (or use the popup if you have EPGPLootmaster installed)"] = "%s s'il te plait wisp moi : !epgp besoin/cupidit\195\169/passe %s (ou utilise la fen\195\170tre EPGPLootmaster si tu l'as install\195\169)"
-- L["%splease whisper me !epgp need/greed/pass %s [GP bid]  (or use the popup if you have EPGPLootmaster installed)"] = ""
L["(Re)announce loot to candidate"] = "(Nouvelle) annonce des loots aux membres du raid"
L["** MONITOR ONLY **"] = "** RESPONSABLE UNIQUEMENT**" -- Needs review
L["** MONITORING ** Only %s may distribute this item **"] = "** SURVEILLANCE** Seul %s peut distribuer cet objet **" -- Needs review
L[", BoE"] = ", Li\195\169 quand \195\169quip\195\169"
L[", BoP"] = ", Li\195\169 quand ramass\195\169"
L[", BoU"] = ", Li\195\169 quand utilis\195\169"
L["- - - - EPGPLootmaster - - - -\
\
You are the loot master, would you like to use EPGPLootmaster to distribute loot?\
\
(You will be asked again next time. Use /lm config to change this behaviour)"] = "- - - - EPGPLootmaster - - - -\
\
Vous \195\170tes le ma\195\174tre du butin, souhaitez vous utiliser EPGPLootmaster pour distribuer les loots?\
\
(La question vous sera de nouveau pos\195\169 lors des prochains raids. Utilisez la commande /lm config pour modifier ce r\195\169glage)"
L["- Cannot distribute loot -"] = "- Impossible de distribuer le loot"
L["- inspect -"] = "- Inspection -"
L["--==[    SELECT AN INSTANCE    ]==--        "] = "--==[    CHOISISSEZ UNE INSTANCE    ]==--     "
L[". Please note that the candidate will receive a notice about this in whisper."] = ". Veuillez prendre note que le candidat au loot recevra un message en wisp \195\160 ce propos."
L["<ERROR> Could not increase GP in officernotes for %s %s (EPGP not installed or no rights?!)"] = "<ERREUR> Impossible d'augmenter les GP dans les notes d'officier pour %s %s (EPGP non install\195\169 ou droits insuffisants?)"
L["Add note"] = "Ajouter une note"
L["Allow candidates to add notes to each item."] = "Autoriser les membres du raid \195\160 ajouter des notes pour chacun des objets."
L["Allows you to manually set the response for a given candidate"] = "Vous autorise \195\160 s\195\169lectionner vous m\195\170me une r\195\169ponse pour un candidat donn\195\169"
-- L["Always enable bidding"] = ""
L["Always use EPGPLootmaster to distribute loot, without asking"] = "Toujours utiliser EPGPLootmaster pour distribuer les loots, sans poser la question"
--[=[ L["Always: the bidding inputs will always be available when using the auto announcing features.\
\
Manual: Disable the bidding system by default and allow me to select per item (you should disable auto announce). Bidding system will be disabled when you're using the auto announcing system. You can by-pass the auto announcing system per item by alt+clicking an item on the native loot window."] = "" ]=]
L["Amount of buttons to display:"] = "Ensemble des boutons \195\160 afficher"
L["Announce loot"] = "Annonce des loots"
-- L["Announce loot & request bids"] = ""
L["Ask me every time I become loot master"] = "Me redemander \195\160 chaque fois que je suis Ma\195\174tre du butin"
L["Attempts to send the loot to the candidate and awards %s GP to the candidate"] = "Tentative d'envoyer le loot au membre du raid et de lui attribuer %s GP"
L["Attempts to send the loot to the candidate and awards %s GP to the candidate for %s"] = "Tentative d'envoyer le loot au membre du raid et de lui affecter %s GP pour %s"
L["Attempts to send the loot to the candidate and doesn't award GP to the candidate, thus giving it for free."] = "Tentative d'envoyer le loot au membre du raid sans lui affecter de GP (loot \"gratuit\")"
L["Attempts to send the loot to the candidate for disenchantment."] = "Tentative d'envoyer le loot au membre du raid pour d\195\169senchantement"
L["Attempts to send the loot to the candidate for storage in bank."] = "Tentative d'envoyer le loot au membre du raid pour stockage en banque"
L["Auto announcement"] = "Auto-annonce"
L["Auto announcement threshold"] = "Seuil d'auto-annonce"
L["Auto hiding"] = "Masquage automatique"
L["Auto loot threshold (BoE and BoU items only)"] = "Seuil de loot automatique (Objets li\195\169s quand \195\169quip\195\169 ou utilis\195\169 uniquement)"
L["Auto looting"] = "Loot automatique"
L["Auto looting %s to %s"] = "Loot automatique de %s par %s"
L["Auto looting of %s to %s failed. Not a candidate for this loot."] = "Loot automatique de %s par %s. Il/Elle n'est pas candidat pour ce loot."
L["Auto looting of items"] = "Loot automatique des objets"
L["Auto message: please install EPGPLootmaster from curse.com:  http://wow.curse.com/downloads/wow-addons/details/epgp_lootmaster.aspx"] = "Message automatique : merci d'installer EPGPLootmaster via Curse.com : http://wow.curse.com/downloads/wow-addons/details/epgp_lootmaster.aspx"
L["Auto notice from %s: please update epgp_lootmaster from curse.com. If you fail to do so you might not get loot during raids."] = "Avertissement automatique de la part de %s : Merci de mettre \195\160 jour EPGPLootmaster via Curse.com sous peine de ne plus pouvoir r\195\169cup\195\169rer de loot pendant les raids."
L["Auto pass (not eligible)"] = "Vous avez pass\195\169 automatiquement (non \195\169ligible)"
L["Auto pass; Enchanter (%s)"] = "Vous avez pass\195\169 automatiquement; Enchanteur (%s)"
L["Autopassing %s (not eligible)"] = "%s a pass\195\169 automatiquement (non \195\169ligible)"
-- L["Bid"] = ""
-- L["Bidding system"] = ""
L["Button 1"] = "Bouton 1"
L["Button 2"] = "Bouton 2"
L["Button 3"] = "Bouton 3"
L["Button 4"] = "Bouton 4"
L["Button 5"] = "Bouton 5"
L["Button 6"] = "Bouton 6"
L["Button 7"] = "Bouton 7"
L["Button caption"] = "L\195\169gende du bouton"
L["Button text:"] = "Texte du bouton:"
L["Candidate"] = "Joueur"
L["Candidate did not respond on time."] = "Le joueur n'a pas r\195\169pondu dans les temps."
L["Candidate's current equipment:"] = "\195\137quipement actuel du joueur"
L["Change this to the GP value you wish to set for this item"] = "Changer la valeur en GP pour cet objet"
L["Check if you want display incoming monitor updates. This function allows you to see the masterlooter interface so you can help in making decisions about the loot distribution."] = "Choisissez cette option si vous souhaitez afficher la fen\195\170tre de mise \195\160 jour des messages entrants. Cette fonction vous autorise \195\160 voir l'interface de ma\195\174tre du butin et vous permet donc d'aider \195\160 la prise de d\195\169cision quant \195\160 l'attribution des loots."
L["Check if you want send outgoing monitor messages. This functions allows other raidmembers to see the masterlooter interface so they can help in making decisions about the loot distribution. You will only send out messages if you are the master looter."] = "Choisissez cette option si vous souhaitez afficher la fen\195\170tre de mise \195\160 jour des messages sortants . Cette fonction autorise les autres membres du raid \195\160 voir l'interface de maitre du butin et ils peuvent donc aider \195\160 la prise de d\195\169cision quant \195\160 la distribution des loots. Vous ne pourrez envoyer de messages que si vous \195\170tes le ma\195\174tre du butin."
L["Check this if you want your candidates to send notes to you. The notes will show up as an icon on your loot interface. You can read them by hovering the icon. This allows your candidates to send you messages such as: 'Only needed if noone else needs' or 'Item B has higher priority'. You can disable this if you feel this slows the loot distribution down."] = "Choisissez cette option si vous souhaitez que les joueurs puissent vous adresser des messages (notes). Ces notes seront visualis\195\169es sous forme d'ic\195\180ne dans l'interface de loot. Vous pouvez les lire en survolant l'ic\195\180ne avec votre souris. Cela autorise les joueurs \195\160 vous envoyer des messages tels que: 'Je n'en veux que si personne d'autre n'est int\195\169ress\195\169' ou '\195\160 choisir je pr\195\169f\195\168re l'objet A \195\160 l'objet B'. Vous pouvez d\195\169sactiver cette option si vous estimez que cela ralenti excessivement la r\195\169partition des loots."
L["Check this to auto hide the Loot need/greed/pass selection interface when you are entering combat, it will restore automatically when you leave combat."] = "Choisissez cette option pour cacher automatiquement la fen\195\170tre de choix (besoin, cupidit\195\169, passe) lorsque vous entrez en combat. Celle-ci sera automatiquement r\195\169-affich\195\169e \195\160 la fin du combat."
L["Check this to auto hide the Master Looter/Monitor Interface when you are entering combat, it will restore automatically when you leave combat."] = "Choisissez cette option pour cacher automatiquement l'interface de ma\195\174tre du butin lorsque vous entrez en combat. Cette fen\195\170tre sera automatiquement r\195\169-affich\195\169e \195\160 la fin du combat."
L["Check this to auto hide the Master Looter/Monitor Interface when you are required to select need/greed/pass on loot."] = "Choisissez cette option pour cacher automatiquement l'interface de ma\195\174tre du butin lorsque vous \195\170tes amen\195\169s \195\160 choisir pour vous m\195\170me \195\160 propos d'un loot (besoin, cupidit\195\169, passe)/"
L["Checks whether players are locked to an instance."] = "V\195\169rifier si certains joueurs sont link pour une instance."
L["Click and drag to move this window."] = "Cliquez et faire glisser pour d\195\169placer la fen\195\170tre."
L["Click this to add a note to send to the master looter."] = "Cliquez ici pour ajouter une note qui sera adress\195\169e au ma\195\174tre du butin."
L["Click to announce this item to all candidates"] = "Cliquez ici pour annoncer les loots au raid"
-- L["Click to announce this item to all candidates and allow GP bid input"] = ""
-- L["Click to ask your loot council to vote for a player for the selected item"] = ""
L["Click to remove this item and all the candidate selections from your list."] = "Cliquez ici pour retirer cet item et tous les choix des joueurs de votre liste."
L["Click to retrieve current equipment."] = "Cliquez ici pour voir l'\195\169quipement actuel."
-- L["Click to vote for this candidate"] = ""
L["Close"] = "Ferm\195\169"
L["Configure this selection button."] = "Configurer ce bouton de s\195\169lection."
L["Controls whether EPGPLootmaster is enabled or not."] = "Contr\195\180ler si EPGPLootmaster est activ\195\169 ou non."
L["Could not add loot, master looter module not active"] = "Impossible d'ajouter un loot, le module Master Loot est inactif"
L["Could not ask player if needed because %s is not cached"] = "Impossible d'interroger le joueur pour savoir s'il a besoin de l'objet car %s n'est pas stock\195\169 en m\195\169moire."
L["Could not get itemcount for %s (no itemid found)"] = "Impossible de retrouver le compte de loot pour %s (l'ID de l'item n'est pas retrouv\195\169)"
L["Could not redistribute %s because quantity != 1 (%s). Please handle it manually. Create a ticket on curseforge if this happens often."] = "Impossible d'attribuer %s parce que la quantit\195\169 != 1 (%s). Merci de le faire manuellement. Cr\195\169ez une note sur Curseforge si cette erreur souvient souvent."
L["Could not redistribute %s because total quantity < 1 (%s). Please handle it manually. Create a ticket on curseforge if this happens often."] = "Impossible d'attribuer %s parce que la quantit\195\169 < 1 (%s). Merci de le faire manuellement. Cr\195\169ez une note sur Curseforge si cette erreur souvient souvent."
L["Could not register loot"] = "Impossible d'enregistrer le loot"
L["Could not send %s to %s, candidate not found (offline, left group?)"] = "Impossible d'envoyer %s \195\160 %s, le joueur est introuvable (hors-ligne? a d\195\169j\195\160 quitt\195\169 le groupe?)"
L["Could not send %s to %s, loot not found in cache"] = "Impossible d'envoyer %s \195\160 %s, l'objet n'est pas retrouv\195\169 dans la m\195\169moire."
L["Could not send %s to %s, lootslotID not found (already looted or lootwindow closed?) "] = "Impossible d'envoyer %s \195\160 %s, l'emplacement ID du loot n'est pas retrouv\195\169 (d\195\169j\195\160 attribu\195\169 \195\160 un joueur ou fen\195\170tre de loot d\195\169j\195\160 ferm\195\169e?)"
L["Could not send command, no target specified"] = "Impossible d'envoyer la commande, pas de cible sp\195\169cifi\195\169e"
-- L["Disallow voting for self"] = ""
L["Discard loot"] = "Retirer l'objet de la liste"
L["Doubleclick to fold/unfold this window."] = "Double-cliquer pour afficher/masquer cette fen\195\170tre."
L["EPGP is an in game, relational loot distribution system. LootMaster helps you distribute loot to your raid and registers this loot in the EPGP system."] = "EPGP est un outil de distribution des loots en jeu. Il vous aide \195\160 attribuer les loots \195\160 votre raid et les enregistre dans la base de donn\195\169es du syst\195\168me EPGP."
L["EPGPLootmaster Notice!\
\
|cFFFF8080WARNING:|r you have EPGPLootmaster installed but EPGP is not enabled. \
\
Please make sure you have EPGP installed and enabled. If you fail to do so, no GP will be awarded for looted items.\
\
All other features of EPGPLootmaster such as announcing and distributing loot will still function without EPGP."] = "Information EPGPLootmaster\
\
|cFFFF8080ATTENTION:|r EPGPLootmaster est install\195\169 mais EPGP n'est pas activ\195\169.\
\
Veuillez v\195\169rifier que EPGP est correctement install\195\169 et est activ\195\169. Si ce n'est pas le cas aucun point GP de sera affect\195\169 aux joueurs r\195\169cup\195\169rant des loots.\
\
Toutes les autres fonctions d'EPGPLootmaster commence l'annonce des loots et leur distribution continuent \195\160 fonctionner sans EPGP."
L["EPGPLootmaster has a nice system where even raid members who don't have EPGPLootmaster installed can need/greed/pass on items. This will be done by whispering and sending chat messages to the raid channel. Enable this option to filter all these messages from your chat."] = "EPGPLootmaster a un bon m\195\169canisme de suppl\195\169ance lorsque certains membres du raid n'ont pas install\195\169 EPGPLootmaster alors qu'ils ont acc\195\168s aux loots. Ils peuvent indiquer leur choix (besoin, cupidit\195\169, passe,...) en wispant le maitre du butin ou en envoyant un message sur le canal raid. Activez cette option pour filtrer tous les messages de ce type."
-- L["Enable the bidding system"] = ""
-- L["Enable the voting system"] = ""
L["Error while parsing message '%s' from %s: %s"] = "Erreur lors de l'analyse du message '%s' de la part de %s: %s"
L["Extra functions"] = "Fonctions suppl\195\169mentaires"
L["Fill this field to override the GP value when players select this button. This only adds an entry to the master looter distribution popup, so the master looter always has the final choice."] = "Remplissez ce champ pour d\195\169multiplier la valeur en GP quand les joueurs s\195\169lectionneront ce bouton. Ceci ajoutera uniquement un bouton \195\160 la fen\195\170tre de distribution et le ma\195\174tre du butin conserve le pouvoir de d\195\169cision final."
L["Filter chat announces and whispers."] = "Filtrer les annonces sur le chat et les wisp."
L["GP value override"] = "Valeur en GP tr\195\168s augment\195\169e"
L["GP value:"] = "Valeur en GP :"
L["General config"] = "Configuration g\195\169n\195\169rale"
L["Give loot and award %s GP"] = "Attribuer le loot et affecter %s GP"
L["Give loot and award %s GP (100%%)"] = "Attribuer le loot et affecter %s GP (100%%)"
-- L["Give loot and award %s GP Bid"] = ""
L["Give loot and award %s GP for %s (%s)"] = "Attribuer le loot et affecter %s GP pour %s (%s)"
L["Give loot for bank"] = "Attribuer le loot pour la banque"
L["Give loot for disenchantment"] = "Attribuer le loot pour d\195\169senchantement"
L["Give loot for free"] = "Attribuer le loot sans GP"
L["Greed"] = "Cupidit\195\169"
L["Greed / Alt"] = "Cupidit\195\169 /Reroll"
L["Guild"] = "Guilde"
L["Hide loot selection window when entering combat."] = "Cacher la fen\195\170tre de s\195\169lection des loots quand je rentre en combat"
L["Hide monitor window when entering combat."] = "Cacher la fen\195\170tre de contr\195\180le quand je rentre en combat."
L["Hide monitor window when loot selection opens."] = "Cacher la fen\195\170tre de contr\195\180le quand celle de s\195\169lection des loots s'ouvre."
L["Hiding lootmaster window, reopen with /lm show"] = "Cacher la fen\195\170tre de ma\195\174tre du butin (r\195\169-affich\195\169e avec la commande /lm show)"
L["If you have people in your raid who are using old clients, you can use this to specify where their selection should go in your button setup. You may use each value only once."] = "Si certains joueurs utilisent une version ancienne de l'add-on, vous pouvez utiliser ceci pour sp\195\169cifier \195\160 quoi correspondent leurs s\195\169lections par rapport \195\160 vos propres r\195\169glages. Vous ne pouvez utiliser chacune des valeurs qu'une seule fois."
L["If you set this to Mainspec, for example, old clients that select mainspec on their popups will have their selection go in this selection button category."] = "Si vous r\195\169glez cela pour la Sp\195\169cialit\195\169 principale par exemple, les anciennes versions qui s\195\169lectionneront sp\195\169cialit\195\169 principale dans leurs fen\195\170tres de loot verront leur s\195\169lections aller dans cette cat\195\169gorie."
L["Instances:"] = true
L["Invite selected"] = "Invitez le joueur s\195\169lectionn\195\169"
L["It is just a simple random roll to decide who gets the loot"] = "Ce rand est un rand al\195\169atoire pour d\195\169cider de qui r\195\169cup\195\168re le loot."
L["Listen for incoming monitor updates"] = "Liste des am\195\169liorations entrantes" -- Needs review
L["Loot selection timeout"] = "Temps de s\195\169lection des loots \195\169puis\195\169"
L["Looted"] = "Loot\195\169"
L["Mainspec"] = "Sp\195\169cialit\195\169 principale"
L["Mainspec / Need"] = "Sp\195\169 principale /Besoin"
L["Making selection, please wait..."] = "Choix en cours, veuillez patienter..."
-- L["Manual, disable bidding when auto announcing"] = ""
L["Manually sets the response of this candidate to "] = "Choisir manuellement la r\195\169ponse de ce joueur pour"
L["Manually sets the response of this candidate to pass. Please note that the candidate will receive a notice about this in whisper."] = "Faire manuellement passer ce joueur pour l'objet. A noter que le joueur recevra un message lui indiquant cette action."
L["Mask monitors while selecting"] = "Masquer l'\195\169cran pendant la s\195\169lection"
L["Master Looter Module not enabled"] = "Le module Master Looter est activ\195\169"
L["Minor Upgrade"] = "Am\195\169lioration mineure"
L["Monitor text color"] = "Couleur du texte de l'\195\169cran"
L["Monitoring"] = "Surveillance"
L["My note: %s"] = "Ma note :%s"
L["Name of the default candidate (case sensitive):"] = "Nom du joueur par d\195\169faut (sensible \195\160 la casse)"
L["Never auto announce"] = "Ne jamais annoncer automatiquement"
L["Never use EPGPLootmaster to distribute loot"] = "Ne jamais utiliser EPGPLootmaster pour distribuer les loots"
L["No fallback"] = "Pas de retour"
L["No response; not installed?"] = "Aucune r\195\169ponse; non install\195\169?"
L["No time left"] = "Pas de temps perdu\
" -- Needs review
L["No timeout"] = "Pas de temps mort" -- Needs review
-- L["Noone has voted for %s"] = ""
L["Normally candidates can send multiple whispers per loot to change their selection. For example they first selected need but then decided to change to greed and give more priority to someone else. If you enable this option only the first response will be counted."] = "Normalement les joueurs peuvent envoyer plusieurs wisp par loot pour changer leur choix. Par exemple, ils avaient en premier lieu s\195\169lectionn\195\169 Besoin  mais changent finalement pour cupidit\195\169 et donne ainsi la priorit\195\169 aux autres joueurs. Si vous activez cette option, seule la premi\195\168re r\195\169ponse sera prise en compte."
L["Not auto announcing (alt+click detected)"] = "Pas d'auto-annonce (alt+clic d\195\169tect\195\169)"
L["Not auto looting (alt+click detected)"] = "Pas de loot automatique (alt+clic d\195\169tect\195\169)"
L["Not saved, available"] = "Non enregistr\195\169, disponible"
L["Not yet announced to candidate"] = "Loot non encore annonc\195\169 au joueur"
L["Note"] = true
L["Note added by "] = "Note ajout\195\169e par"
L["Offline or lootmaster not installed?"] = "Hors-ligne ou Lootmaster non install\195\169?"
L["Offspec"] = "Sp\195\169cialit\195\169 secondaire"
L["Offspec / Greed"] = "Sp\195\169cialit\195\169 secondaire / Cupidit\195\169"
L["Old client fallback compatibility"] = "Compatibilit\195\169 des anciennes versions" -- Needs review
L["Only BoE and BoU items will be filtered. BoP items will always send a monitor message."] = "Seuls les objets li\195\169s quand \195\169quip\195\169s ou li\195\169s quand utilis\195\169s sont filtr\195\169s. Les objets li\195\169s quand ramass\195\169s donneront toujours lieu \195\160 un message g\195\169n\195\169ral."
L["Only accept first candidate response for each item."] = "Accepter uniquement la premi\195\168re r\195\169ponse de chaque joueur pour chaque objet."
L["Only listen for monitor messages from the raid for items that match this threshold or are higher. (Please keep in mind that patterns etc also match this threshold)"] = "Ne prendre en compte les messages des membres du raid que pour les objets de qualit\195\169 \195\169gale ou sup\195\169rieure au seuil (Gardez en t\195\170te que les plans et autres sont de qualit\195\169 \195\169gale au seuil)" -- Needs review
L["Only receive for equal or higher than"] = "Recevoir uniquement si \195\169gal ou sup\195\169rieur \195\160" -- Needs review
L["Only send for equal or higher than"] = "Envoyer uniquement si \195\169gal ou sup\195\169rieur" -- Needs review
L["Only send monitor messages to the raid for items that match this threshold or are higher. (Please keep in mind that patterns etc also match this threshold)"] = "Envoyer des messages au raid uniquement pour les items de qualit\195\169 \195\169gale ou sup\195\169rieure au seuil (Gardez en t\195\170te que les patrons et autres sont \195\169gaux au seuil)"
-- L["Only send to promoted players in raid"] = ""
-- L["Only send to specific guildranks"] = ""
-- L["Only send to the following guildranks:"] = ""
L["Open test popup and monitor windows"] = "Ouvrir la fen\195\170tre de test et l'\195\169cran de contr\195\180le"
L["Opens up a testing popup and monitor window, so you can see what this will look like on your clients. After you're done testing just click the discard loot button to close the monitor window."] = "Ouvrir une fen\195\170tre de test et un \195\169cran de contr\195\180le, afin que vous puissiez voir \195\160 quoi cela va ressembler avec vos versions. Une fois le test effectu\195\169, utilisez le bouton de masquage des loots pour fermer l'\195\169cran de contr\195\180le."
L["Opens up the version checker frame."] = "Ouvrir la fen\195\170tre de contr\195\180le de la version de l'add-on"
L["Pass"] = "Passe"
L["Pass; Enchanter (%s)"] = "Passe; Enchanteur (%s)"
L["Play audio warning on loot selection popup."] = "Faire entendre un avertissement sonore lors de l'apparition de la fen\195\170tre de loot"
-- L["Please click this button to vote for %s for the selected item"] = ""
L["Please enable the lootmaster ML module."] = "Veuillez activer le module Lootmaster ML"
L["Please enter the name of the default candidate to receive the BoE and BoU items here."] = "Merci d'entrer ici le nom du joueur par d\195\169faut pour recevoir les objets lqe et li\195\169s quand utilis\195\169s."
L["Raid lock expired, available"] = "L'ID du raid est d\195\169bloqu\195\169e, raid disponible"
L["Raid/Party"] = "Raid/Groupe"
L["Raidinfo Check"] = "V\195\169rification des informations de raid"
L["Random roll"] = "Tirage al\195\169atoire (rand)"
L["Rank"] = "Rang"
L["Registered %s for %s"] = "Enregistr\195\169 %s pour %"
-- L["Registered bid %d, %s for %s"] = ""
L["Reopens the loot selection popup at the candidate, this offers the candidate to vote for the loot after a crash or disconnect."] = "R\195\169ouvrir la fen\195\170tre de s\195\169lection des loots pour ce joueur, permet aux joueurs de voter pour les loots apr\195\168s un crash ou une d\195\169connexion."
L["Request version for: "] = "Demande de version pour:"
-- L["Request votes"] = ""
L["Response"] = "R\195\169ponse"
L["Roll"] = "Rand"
L["Save"] = "Sauver"
L["Saved to %d, but not yet locked"] = "Mis de c\195\180t\195\169 pour %d, mais non encore bloqu\195\169" -- Needs review
L["Saved to %d, locked"] = "Mis de c\195\180t\195\169 pour %d, bloqu\195\169" -- Needs review
L["Saved to your instance"] = "Mis de c\195\180t\195\169 pour votre instance" -- Needs review
L["Selected (temporarely hidden)"] = "Selectionn\195\169 (temporairement masqu\195\169)"
L["Selection buttons"] = "Boutons de s\195\169lection"
L["Send a message to the selected candidate."] = "Envoyez un message au joueur s\195\169lectionn\195\169"
L["Send and receive monitor messages from the master looter and see what other raidmembers selected."] = "Envoyer et recevoir des messages du ma\195\174tre du butin et voir ce que les autres membres du raid ont s\195\169lectionn\195\169."
L["Send outgoing monitor updates"] = "Envoyer les mises \195\160 jour sortantes" -- Needs review
L["Serious error in class bitdecoder, bits %s not found. Please make sure you have the latest version installed and report if problem persists."] = "Serious error in class bitdecoder, bits %s not found. Merci de v\195\169rifier que nous avez install\195\169 la derni\195\168re version de l'add-on et de rapporter le bug si le probl\195\168me persiste." -- Needs review
L["Serious error in class bitencoder, class %s not found. Please make sure you have the latest version installed and report if problem persists."] = "Serious error in class bitencoder, class %s not found. Merci de v\195\169rifier que nous avez install\195\169 la derni\195\168re version de l'add-on et de rapporter le bug si le probl\195\168me persiste." -- Needs review
L["Set response manually"] = "Entrer une r\195\169ponse manuellement"
L["Sets automatic loot announcement threshold, any loot that is of equal or higher quality will get auto announced to the raid members."] = "S\195\169lectionner le seuil d'annonce automatique des loots, tous les loots de qualit\195\169 \195\169gale ou sup\195\169rieure au seul seront automatiquement annonc\195\169s au membres du raid."
L["Sets automatic looting threshold, any BoE and BoU loot that is of lower or equal quality will get auto sent to the candidate below."] = "S\195\169lectionner le seuil de loot automatique, tous les objets lqe et li\195\169s quand utilis\195\169s, de qualit\195\169 \195\169gale ou sup\195\169rieure au seuil seront envoy\195\169s au joueur s\195\169lectionn\195\169 par d\195\169faut."
L["Sets the amount of time a loot candidate has to select wether they want the loot or not."] = "R\195\169gler le temps que les joueurs ont pour valider leurs choix sur les loots qu'ils veulent ou non."
L["Some extra functions that might come in handy."] = "Quelques fonctions suppl\195\169mentaires qui pourraient s'av\195\169rer utiles"
L["Specify how many buttons you want to show on your clients. You will need to configure 1 button minimal and be aware that the pass button will always be included."] = "Sp\195\169cifier le nombre de boutons que vous souhaitez sur votre interface de gestion des loots. Vous devez en configurer au moins un et \195\170tre attentif au fait que le bouton \"passer\" sera toujours pr\195\169sent."
L["The EPGP Lootmaster Monitor allows you to send messages to other users in your raid. It will show them the same interface as the ML, allowing them to help with the loot distribution."] = "L'\195\169cran EPGPLootmaster vous permet d'envoyer des messages aux autres utilisateur s de l'add-on dans le raid. Il leur affiche la m\195\170me interface que celle du maitre de butin afin de leur permettre d'aider \195\160 l'attribution des loots."
L["The EPGP Lootmaster auto announcer allows you to auto announce specific loot to the raid."] = "L'auto-annonce d'EPGPLootmaster vous permet d'auto-annoncer un loot sp\195\169cifique au raid."
L["The EPGP Lootmaster auto looter allows you to send specific BoU and BoE items to a predefined candidate without asking questions."] = "L'auto-loot d'EPGPLootmaster vous permet d'envoyer sp\195\169cifiquement tous les objets Lqe et Li\195\169s quand utilis\195\169s \195\160 un joueur pr\195\169d\195\169fini sans pr\195\169avis."
-- L["The bidding system is a variation of the EPGP system where loot candidates are allowed to bid a custom GP value per item. The highest GP bid wins the loot."] = ""
-- L["The following players have voted for %s:"] = ""
-- L["The voting system allows the master looter to request help when making a decision. While this is not something that's encouraged by the EPGP system as it will slow down the looting process a little, it will provide a guild much more flexibility. The master can request a vote per item at any time by a simple press of a button."] = ""
-- L["The voting system allows the master looter to request help when making a decision. While this is not something that's encouraged by the EPGP system as it will slow down the looting process a little, it will provide a guild much more flexibility. The master looter can request a vote per item at any time by a simple press of a button."] = ""
-- L["The voting system has been disabled or no votes have been requested. You can enable the voting system from the configuration panel and you can request votes by pressing the [Request Votes] button if you are the master looter"] = ""
L["This allows you to configure the selection buttons on the user interfaces of your raiders. Please note that client selections will be sorted the same as the buttons are sorted below. You will need to add one button minimal and the pass button will always be visible."] = "Ceci vous permet de configurer les boutons utilisateurs pour l'interface de loots des membres du raid. Merci de note que les boutons seront class\195\169s dans le m\195\170me ordre ici et sur l'interface membre. Vous devez ajouter au minimum un bouton qui sera associ\195\169 \195\160 un bouton \"passer\" toujours visible."
L["This allows you to control the automatic hiding features of EPGPLootmaster."] = "Ceci vous permet de contr\195\180ler les fonctions de masquage automatique d'EPGPLootmaster."
L["This field specifies the color of the selection text in the monitor windows."] = "Ce champ sp\195\169cifie la couleur du texte de s\195\169lection dans la fen\195\170tre de contr\195\180le."
L["This field specifies the text on the button, this will be shown on the selection popups and monitor windows."] = "Ce champ sp\195\169cifie le text sur le bouton, ceci sera affich\195\169 sur les fen\195\170tres de s\195\169lection des loots et sur la fen\195\170tre de contr\195\180le."
L["This is a raid-wide configuration. This will hide the responses from players on monitors while the monitoring player is still making his selection for a specific item. This will prevent players from making selections based on other peoples responses. This prevents 'cheating' and speeds up the selection process because people will stop waiting for eachother"] = "Ceci est une configuration pour raid \195\160 gros effectif. Ceci masquera les r\195\169ponses des joueurs tant certains joueurs n'auront pas fait leurs choix pour un item en particulier. Ceci afin d'\195\169viter que certains joueurs basent leur r\195\169ponse en fonction des r\195\169ponses d\195\169j\195\160 rendues par les autres membres du raid. Cela \195\169vite la triche et acc\195\169l\195\168re le processus de choix. Personne ne peut attendre que les autres choisissent avant de r\195\169pondre."
L["This value is only needed when two candidates have the same PR."] = "Cette valeur est uniquement n\195\169cessaire lorsque deux candidats ont le m\195\170me PR."
-- L["This will cause some overhead, since monitor messages will be sent one-by-one to players. Leave this disabled if you want everybody to be able to see the monitor. Disabling this option also makes the monitors respond faster."] = ""
-- L["This will disallow players from voting on themselves"] = ""
L["This will emulate the \"Player receives [item].\" locally. Usually used to \"fix\" the portal problem in naxx."] = "Ceci \195\169mule le \"Tel joueur re\195\167oit [objet] localement. Utilis\195\169 habituellement pour fixer le probl\195\168me de portail \195\160 Naxx."
L["This will open the selecton screen on their client."] = "Ceci ouvrira une fen\195\170tre de s\195\169lection sur leurs clients de l'add-on"
L["This will play an audible warning when the loot selection popup is opened and requires your input."] = "Ceci fera entendre un avertissement sonore quand la fen\195\170tre de s\195\169lection des loots et requiert votre vote."
L["Unable to register loot."] = "Impossible d'enregistrer l'objet"
L["Unable to unlocalize %s"] = "Impossible de ne pas localiser %s" -- Needs review
L["Unknown"] = "Inconnu"
L["Usage: "] = "Utilisation:"
L["Usage: /lm %s [lootlink]"] = "Utilisation; /lm %s [lien de l'objet]"
L["Usage: /lm emulate player [itemlink]"] = "Utilisation: /lm emulate player [lien de l'item]"
L["Use EPGPLootmaster"] = "Utiliser EPGPLootmaster"
L["Use this when you don't want to loot this item and close the lootmaster window."] = "Utiliser ceci quand vous ne voulez pas loot un objet et que vous souhaitez fermer la fen\195\170tre de loot."
L["Verbose debugging disabled"] = "D\195\169bugage redondance d\195\169sactiv\195\169"
L["Verbose debugging enabled"] = "D\195\169bugage redondance activ\195\169"
L["Version Checker"] = "Contr\195\180leur de version"
-- L["Vote"] = ""
-- L["Votes"] = ""
-- L["Voting system"] = ""
-- L["When should bidding be available to player?"] = ""
L["Whisper"] = "Wisp"
L["Whisper selected"] = "Wisp le joueur s\195\169lectionn\195\169"
L["You are not a candidate for %s. Perhaps you were not involved in the fight?"] = "Vous n'\195\170tes pas \195\169ligible pour %s. Peut \195\170tre n'avez vous pas particip\195\169 \195\160 ce combat?"
L["You can use upto 18 characters (^ ; * excluded)"] = "Vous pouvez utiliser jusqu'\195\160 18 caract\195\168res (\195\160 l'exception de ^ ; *)"
L["You have added this loot manually to the list, you will need to handle the loot manually and discard the loot from the list when you're done distributing it."] = "Vous avez ajout\195\169 ce loot manuellement \195\160 la liste, vous devez donc g\195\169rer le loot manuellement et le retirer de la liste une fois qu'il a \195\169t\195\169 distribu\195\169"
L["You have already made a selection for %s. Corrections have been disabled by the master looter."] = "Vous avez d\195\169j\195\160 fait votre choix pour %S. Les corrections ont \195\169t\195\169 d\195\169sactiv\195\169es par le ma\195\174tre du butin."
L["You have disabled loot tracking for this raid"] = "Vous avez d\195\169sactiv\195\169 le suivi des loots pour ce raid"
L["You have enabled loot tracking for this raid"] = "Vous avez activer le suivi des loots pour ce raid"
L["You've entered combat, hiding interface."] = "Vous \195\170tes en combat, interface de loot masqu\195\169e."
-- L["Your GP Bid:"] = ""
L["Your selection for %s has been manually set to %s."] = "Votre choix pour %s a \195\169t\195\169 manuellement fix\195\169 sur %s."
L["[send installation info]"] = "|envoyer les informations d'installation]"
L["bank"] = "banque"
L["could not display lootdropdown; loot not in table"] = "Impossible d'afficher le taux de loot (lootdropdown); le loot n'est pas dans la table"
L["default GP:"] = "GP par d\195\169faut:"
L["disenchanted"] = "d\195\169senchant\195\169"
L["fallback:"] = "Retour:"
L["iLvl"] = true
L["ilevel: %s, GP: %s"] = "iLevel: %s, GP: %s"
L["ilevel: %s, GP: %s%s%s"] = "iLevel: %s, GP: %s%s%s"
L["looter: %s"] = "Destinataire du loot: %s"
L["no loot selected"] = "Aucun loot s\195\169lectionn\195\169"
L["unknown"] = "Inconnu"
L["usage"] = "Ce module fournit un syst\195\168me complet de distribution des loots pour EPGP.\
Utilisation : Cr\195\169er un groupe ou raid, choisir un ma\195\174tre du butin. Quand un boss l\195\162che des loots, faites un simple clic droit sur l'item et l'UI s'ouvrira.\
Commandes en jeu:\
/lm version : affiche le contr\195\180leur de version\
/lm config : affiche la fen\195\170tre des options\
/lm reset : reset la position et l'\195\169chelle de la fen\195\170tre\
/lm hide : Masque manuellement l'UI de EPGPMasterloot\
/lm show : Affiche manuellement l'UI de EPGPMasterloot\
/lm toggle : Basculer manuellement entre affichage et masquage de l'UI d'EPGPMasterloot\
/lm add [lien de l'objet] : Ajouter manuellement un objet dans EPGPMasterloot\
/lm announce [lien de l'objet] : Ajouter manuellement un objet et l'annoncer au groupe/raid."
L["you are the loot master, loot tracking enabled"] = "Vous \195\170tes le ma\195\174tre du butin, le suivi des loots est activ\195\169"
L["you are the loot master, tracking disabled manually (configuration: /lm config)"] = "Vous \195\170tes le ma\195\174tre du butin, le suivi des loots est d\195\169sactiv\195\169 manuellement (configuration : /lm config)"
