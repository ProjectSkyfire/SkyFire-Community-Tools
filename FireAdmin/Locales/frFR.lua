-------------------------------------------------------------------------------------------------------------
--
-- FireAdmin Version 5.x
-- FireAdmin is a derivative of FireAdmin, which is a derivative of MangAdmin.
--
-- Copyright (C) 2007 Free Software Foundation, Inc.
-- License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
-- This is free software: you are free to change and redistribute it.
-- There is NO WARRANTY, to the extent permitted by law.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
-- Official Forums: http://groups.google.com/group/trinityadmin
-- GoogleCode Website: http://code.google.com/p/trinityadmin/
-- Subversion Repository: http://trinityadmin.googlecode.com/svn/
-- Dev Blog: http://trinityadmin.blogspot.com/
-------------------------------------------------------------------------------------------------------------

function Return_frFR()
  return {
--[[General]]
  --[[Tooltips]]
    ["ma_IconHint"] = "Cliquer pour ouvrir FireAdmin. Shift-Click pour recharger l'interface.",
    ["tt_Default"] = "Placez votre curseur sur un élement pour afficher une aide!",
    ["tt_LanguageButton"] = "Changer de langue et recharger",
  --[[Control Labels]]
    ["ma_LanguageButton"] = "Changer de langue",
    ["info_revision"] = "|cFF00FF00Fire Revision:|r ",
    ["info_platform"] = "|cFF00FF00Serveur Plate-forme:|r ",
    ["info_online"] = "|cFF00FF00Joueurs en ligne:|r ",
    ["info_maxonline"] = "|cFF00FF00Maximum de joueurs en ligne:|r ",
    ["info_uptime"] = "|cFF00FF00Uptime:|r ",
  --[[Other]]
    ["slashcmds"] = { "/trinityadmin", "/ta" },
    ["lang"] = "Français",
    ["realm"] = "|cFF00FF00Royaume:|r "..GetCVar("realmName"), --do not change this line!
    ["char"] = "|cFF00FF00Perso:|r "..UnitName("player"), --do not change this line!
    ["guid"] = "|cFF00FF00Guid:|r ",
    ["tickets"] = "|cFF00FF00Tickets:|r ",
    ["selectionerror1"] = "Merci de vous selectionner vous-même, ou un autre joueur, ou rien du tout!",
    ["selectionerror2"] = "Merci de vous selectionner vous-même ou rien du tout",
    ["selectionerror3"] = "Merci de selectionner un autre joueur!",
    ["selectionerror4"] = "Merci de selectionner un PNJ!",
    ["searchResults"] = "|cFF00FF00Résultats de la recherche:|r ",



--[[GM tab]]
  --[[Name]]
    ["tabmenu_Main"] = "MJ",
  --[[Tooltips]]
    ["tt_MainButton"] = "Afficher la page principale de FireAdmins",
    ["tt_DisplayAccountLevel"] = "Afficher le niveau de votre compte",
    ["tt_GMOnButton"] = "Activer le mode MJ.",
    ["tt_GMOffButton"] = "Désactiver le mode MJ.",
    ["tt_FlyOnButton"] = "Activer le mode de vol pour le personnage sélectionné.",
    ["tt_FlyOffButton"] = "Désactiver le mode de vol pour le personnage sélectionné.",
    ["tt_HoverOnButton"] = "Activer le mode lévitation.",
    ["tt_HoverOffButton"] = "Désactiver le mode lévitation.",
    ["tt_WhispOnButton"] = "Accepter les chuchotements de la part des autres joueurs.",
    ["tt_WhispOffButton"] = "Ne pas accepter les chuchotements de la part des autres joueurs.",
    ["tt_InvisOnButton"] = "Devenir invisible.",
    ["tt_InvisOffButton"] = "Devenir visible.",
    ["tt_TaxiOnButton"] = "Ajoute tous les trajets aériens pour le joueur sélectionné. Cette fonction est désactivé à la déconnexion.",
    ["tt_TaxiOffButton"] = "Désactive la fonction des trajets aériens, et restaure les trajets connus des joueurs.",
    ["tt_ShowMapsButton"] = "Dévoile les cartes pour le personnage sélectionné.",
    ["tt_HideMapsButton"] = "Cache les cartes pour le personnage sélectionné.",
    ["tt_SpeedSlider"] = "Augmente ou diminue la vitesse pour le personnage sélectionné.",
    ["tt_ScaleSlider"] = "Augmente ou diminue l'échelle pour le personnage sélectionné.",
    ["tt_instakill"] = "Quand coché, cliquer une créature ennemie la tue.",
    ["tt_ScreenButton"] = "Faire une capture d'écran.",
    ["tt_BankButton"] = "Affiche votre banque.",
    ["tt_Dismount"] = "Descendre de votre monture, si vous en chevauchez une",
    ["tt_SetJail_A_Button"] = "Mettre la position de la prison de l'Alliance à votre position actuelle.",
    ["tt_SetJail_H_Button"] = "Mettre la position de la prison de la Horde à votre position actuelle.",
    ["tt_N"] = "Naviguer au Nord",
    ["tt_S"] = "Naviguer au Sud",
    ["tt_E"] = "Naviguer à l'Est",
    ["tt_W"] = "Naviguer à l'Ouest",
    ["tt_chatonbutton"] = "Activer le chat MJ"      , 
    ["tt_chatoffbutton"] = "Désactiver le chat MJ"      ,
    ["tt_waterwalkonbutton"] = "Activer la marche sur l'eau pour le personnage sélectionné"  , 
    ["tt_watewrwalkoffbutton"] = "Désactiver la marche sur l'eau pour le personnage sélectionné", 
    ["tt_accountlockonbutton"] = "Verrouiller votre compte",  
    ["tt_accountlockoffbutton"] = "Déverrouiller votre compte",
    ["tt_DisplayAccountLvl"] = "Afficher le niveau de votre compte",
  --[[Control Labels]]
    ["ma_OffButton"] = "Off",
    ["ma_displaylevelbutton"] = "Affiche niveau de compte",
    ["ma_GMOnButton"] = "Mode MJ",
    ["ma_FlyOnButton"] = "Mode de vol",
    ["ma_HoverOnButton"] = "Mode lévitation",
    ["ma_WhisperOnButton"] = "Chuchotements On",
    ["ma_InvisOnButton"] = "Invisibilité On",
    ["ma_TaxiOnButton"] = "Trajets aériens On",    
    ["ma_ShowMapsButton"] = "Affiche Map",
    ["ma_HideMapsButton"] = "Cache Map",
    ["ma_instakill"] = "Tuer la créature",
    ["ma_ScreenshotButton"] = "Screenshot",
    ["ma_BankButton"] = "Banque",
    ["ma_DismountButton"] = "Descendre",
    ["ma_SetJail_A_Button"] = "Prison A2",
    ["ma_SetJail_H_Button"] = "Prison H2",
    ["gridnavigator"] = "Navigateur",
    ["N"] = "N", --Abréviation  pour Nord
    ["S"] = "S", --Abréviation  pour Sud
    ["E"] = "E", --Abréviation  pour Est
    ["W"] = "O", --Abréviation  pour Ouest
    ["ma_chatbutton"] = "Chat MJ On",
    ["ma_mapsbutton"] = "Voir Map",
    ["ma_waterwalkbutton"] = "Marche sur l'eau",
    ["ma_accountlockbutton"] = "Verrouiller compte",
  --[[Other]]



--[[Char Tab]]
  --[[Name]]
    ["tabmenu_Char"] = "Perso",
    ["tt_CharButton"] = "Afficher la page concernant les actions sur les personnages",
  --[[Tooltips]]
    ["tt_RotateLeft"] = "Tourner à gauche.",
    ["tt_RotateRight"] = "Tourner à droite.",
    ["tt_killbutton"] = "Tuer le joueur/créature sélectionné",
    ["tt_reviveplayer"] = "Faire revivre le joueur selectionné",
    ["tt_saveplayer"] = "Sauvegarder le personnage du joueur sélectionné",
    ["tt_KickButton"] = "Kicker le joueur sélectionné du serveur.",
    ["tt_CooldownButton"] = "Supprimer les temps de recharge de tous les sorts du joueur sélectionné.",
    ["tt_GUIDButton"] = "Afficher le GUID du joueur sélectionné.",
    ["tt_PinfoButton"] = "Afficher les informations concernant le joueur sélectionné.",
    ["tt_DistanceButton"] = "Afficher la distance vers la créature ciblée.",
    ["tt_RecallButton"] = "Retourner la créature à la position précédent la dernière téléportation",
    ["tt_DemorphButton"] = "Enlève tous les morph du personnage sélectionné.",
    ["tt_ShowMapsCharButton"] = "Révèle les cartes pour le personnage sélectionné",
    ["tt_HideMapsCharButton"] = "Cache les cartes pour le personnage sélectionné",
    ["tt_learnlangbutton"] = "Apprendre le(s) langue(s) sélectionnée(s)",
    ["tt_modifybutton"] = "Modifier le champ selectionné par la valeur entrée",
    ["tt_resetbutton"] = "Remettre à zéro le champ sélectionné",
  --[[Control Labels]]
    ["ma_KillButton"] = "Tuer",
    ["ma_ReviveButton"] = "Faire revivre",
    ["ma_SaveButton"] = "Sauver",
    ["ma_KickButton"] = "Kick",
    ["ma_CooldownButton"] = "Tps Recharge",
    ["ma_GUIDButton"] = "GUID",
    ["ma_PinfoButton"] = "Info",
    ["ma_DistanceButton"] = "Distance",
    ["ma_RecallButton"] = "Re-TP",
    ["ma_DemorphButton"] = "Demorph",
    ["ma_ShowMapsCharButton"] = "Affiche Map",
    ["ma_HideMapsCharButton"] = "Cache Map",
    ["ma_LearnLangButton"] = "Toutes les langues",
    ["ma_Learn"] = "Apprendre",
    ["ma_Modify"] = "Modifier",
    ["ma_Reset"] = "Reset",
  --[[Other]]
    ["ma_LevelUp"] = "Monter de niveau",
    ["ma_LevelDown"] = "Baisser de niveau",
    ["ma_Money"] = "Monaie",
    ["ma_Energy"] = "Energie",
    ["ma_Rage"] = "Rage",
    ["ma_Mana"] = "Mana",
    ["ma_Healthpoints"] = "Points de vie",
    ["ma_Talents"] = "Talents",
    ["ma_Stats"] = "Statistiques",
    ["ma_Spells"] = "Sorts",
    ["ma_Honor"] = "Honneur",
    ["ma_Level"] = "Niveau",
    ["ma_AllLang"] = "Toutes les langues",
    -- languages
    ["Common"] = "Commun",
    ["Orcish"] = "Orc",
    ["Taurahe"] = "Taurahe",
    ["Darnassian"] = "Darnassien",
    ["Dwarvish"] = "Nain",
    ["Thalassian"] = "Thalassien",
    ["Demonic"] = "Démoniaque",
    ["Draconic"] = "Draconique",
    ["Titan"] = "Titan",
    ["Kalimag"] = "Kalimag",
    ["Gnomish"] = "Gnome",
    ["Troll"] = "Troll",
    ["Gutterspeak"] = "Bas-parler",
    ["Draenei"] = "Draeneï",
 
--[[Char2 Tab]]
  --[[Name]]
    ["tt_Char2Button"] = "Afficher une fenêtre concernant les actions sur les personnages.",
  --[[Tooltips]]
    ["tt_banbutton"] = "Paramètre = <compte|ip|personnage> $NomOuIP <-1|xxdyyhzzm> $raison   [[Ban compte/IP & kick. -1=banpermanent, ou une valeur du type 4d3h24m16s]]",
    ["tt_gonamebutton"] = "Paramètre= $NomPersonnage  [[Téléporte vers le personnage spécifié]]",
    ["tt_createguildbutton"] = "Paramètres= $NomChefDeGuilde $NomGuilde  [[Créer une guilde nommée $NomGuilde, avec $NomChefDeGuilde en chef de guilde]]",
    ["tt_teleaddbutton"] = "Paramètre= $Nom  [[Ajoute une position de téléportation avec la commande .tele ayant le nom $Nom]]",
    ["tt_baninfobutton"] = "Paramètre= <Compte|ip|personnage>  [[Voir les infos détaillées à propos des bans pour le personnage/compte/ip]]",
    ["tt_groupgobutton"] = "Paramètre= $NomPersonnage   [[Téléporte le personnage spécifié et son groupe à votre position.]]",
    ["tt_guildinvitebutton"] = "Paramètres= $NomPersonnage $NomGuilde   [[Ajoute $NomPersonnage à la guilde $NomGuilde]]",
    ["tt_teledelbutton"] = "Paramètre= $teleNom  [[Supprime la position de .tele ayant le nom $teleNom de votre liste]]",
    ["tt_banlistbutton"] = "Paramètres= <Compte|ip> $NomOuIp   [[Recherche les informations sur les bans répondant aux critères recherchés.]]",
    ["tt_namegobutton"] = "Paramètre= $NomPersonnage   [[Téléporte le joueur spécifié à votre position]]",
    ["tt_guildrankbutton"] = "Paramètres= $NomPersonnage #NuméroRang   [[Met le personnage séléctionné au rang choisi de sa guilde]]",
    ["tt_telegroupbutton"] = "Paramètre= $teleNom  [[Téléporte le personnage **selectionné** et son groupe à la position .tele $teleNom]]",
    ["tt_unbanbutton"] = "Paramètres= <Compte|ip|Personnage> $NomOuIp  [[Déban le compte/IP/personnage spécifié]]",
    ["tt_guilddeletebutton"] = "Paramètre= $NomGuilde  [[Supprime la guilde spécifiée]]",
    ["tt_guilduninvitebutton"] = "Paramètre= $NomPersonnage  [[Kick le personne spécifié de sa guilde.]]",
    ["tt_telenamebutton"] = "Paramètres= $NomPersonnage $teleNom  [[Téléporte $NomPersonnage à $teleNom]]",
    ["tt_mutebutton"] = "Paramètres= $NomPersonnage #minutes  [[Désactive le chat pour le compte entier de $NomPersonnage pour #minutes]]",
    ["tt_charmorphbutton"] = "Paramètres = #DisplayID [[Entrez l'ID d'affichage du morph que vous voulez appliquer]]", 
    ["tt_charaurabutton"] = "Paramètres = #AuraID [[Entrez l'ID de l'aura que vous voulez appliquer]]",
    ["tt_charunaurabutton"] = "Paramètres = #AuraID [[Entrez l'ID de l'aura que vous voulez supprimer]]",
    ["tt_JailAButton"] = "Paramètre= $NomPersonnage [[Envoyer les personnages de cette boite à la prison de l'Alliance]]",
    ["tt_JailHButton"] = "Paramètre= $NomPersonnage [[Envoyer les personnages de cette boite à la prison de la Horde]]",
    ["tt_UnJailButton"] = "Paramètre= $NomPersonnage [[Libérer de la prison les personnes de cette boite.]]",
    ["tt_UnMuteButton"] = "Autoriser $player à parler.",
    ["tt_QuestAddButton"] = "Ajouter #IDQuête au joueur **selectionné**.",
    ["tt_QuestCompleteButton"] = "Marquer #IDQuête comme complété par le joueur **selectionné**.",
    ["tt_QuestRemoveButton"] = "Enlever #IDQuête du joueur **selectionné**.",
    ["tt_DamageButton"] = "Paramètre= #montant de dégâts à appliquer au joueur/créature **selectionné**",
    ["tt_HideAreaButton"] = "Cacher #IdZone pour le joueur **selectionné**.",
    ["tt_ShowAreaButton"] = "Montre #IdZone au joueur **selectionné**",
    ["tt_HonorAddButton"] = "Ajoute #PointHonneur au joueur joueur **selectionné**.",
    ["tt_HonorUpdateButton"] = "Aucun paramètre requis. Sauve l'honneur du joueur **selectionné**.",
  --[[Control Labels]]
    ["ma_parameter"] = "Paramètre(s)",
    ["ma_ParameterizedCommands"] ="Commandes paramétrées",
    ["ma_banbutton"] = "Bannir",
    ["ma_gonamebutton"] = "GoName",
    ["ma_createguildbutton"] = "G Création",
    ["ma_teleaddbutton"] = "TeleAjout",
    ["ma_baninfobutton"] = "BanInfo",
    ["ma_groupgobutton"] = "GroupeGo",
    ["ma_guildinvitebutton"] = "G Invite",
    ["ma_teledelbutton"] = "TeleSuppr",
    ["ma_banlistbutton"] = "BanListe",
    ["ma_namegobutton"] = "NameGo",
    ["ma_guildrankbutton"] = "G Rang",
    ["ma_telegroupbutton"] = "TeleGroupe",
    ["ma_unbanbutton"] = "DeBan",
    ["ma_guilddeletebutton"] = "G Supprime",
    ["ma_guilduninvitebutton"] = "G Désinvit",
    ["ma_telenamebutton"] = "TeleNom",
    ["ma_mutebutton"] = "Muet",
    ["ma_Aura"] = "Aura",
    ["ma_UnAura"] = "SupprAura",
    ["ma_Morph"] = "Morph",
    ["ma_JailAButton"] = "Prison (A)",
    ["ma_JailHButton"] = "Prison (H)",
    ["ma_UnJailButton"] = "Libérer",
    ["ma_UnMuteButton"] = "SupprMuet",
    ["ma_QuestAddButton"] = "AjoutQuête",
    ["ma_QuestCompleteButton"] = "FinQuête",
    ["ma_QuestRemoveButton"] = "SupprQuête",
    ["ma_DamageButton"] = "Degâts",
    ["ma_HideAreaButton"] = "CacheZone",
    ["ma_ShowAreaButton"] = "MontreZone",
    ["ma_HonorAddButton"] = "+ Honneur",
    ["ma_HonorUpdateButton"] = "MaJHonneur",
  --[[Other]]

--[[NPC Tab]]
  --[[Name]]
    ["tabmenu_NPC"] = "PNJ",
    ["tt_NpcButton"] = "Afficher la page concernant les actions sur les PNJs.",
  --[[Tooltips]]
    ["tt_NPCRotateLeft"] = "Tourner gauche",
    ["tt_NPCRotateRight"] = "Tourner droite",
    ["tt_NPCKillButton"] = "Tue la cible",
    ["tt_npcrespawn"] = "Respawn la créature sélectionnée, si aucune créature sélectionnée, respawn toutes les créatures.",
    ["tt_NPCDistanceButton"] = "Donne la distance vers la créature sélectionnée.",
    ["tt_WayShow1"] = "Affiche les waypoints de la créature sélectionnée.",
    ["tt_NPCGUIDButton"] = "Montre les GUID de la créature sélectionnée.",
    ["tt_NPCInfoButton"] = "Donne les informations du PNJ sélectionné.",
    ["tt_NPCDemorph"] = "Demorphe le PNJ selectionné",
    ["tt_WayShow0"] = "Arreter de montrer les waypoints de la créature sélectionnée.",
    ["tt_MoveStackButton"] = "Montrer les différents mouvements du personnage sélectionné.",
    ["tt_NPCFreezeButton"] = "Stopper les mouvements du PNJ, sauvegardant ses WayPoints",
    ["tt_NPCFreezeDelButton"] = "Stopper les mouvements du PNJ, SANS sauvegarder ses WayPoints",
    ["tt_WayMAdd"] = "Ajouter un waypoints au chemin de la créature sélectionnée",
    ["tt_NPCUnFreeze_RandomButton"] = "Permettre un mouvement aléatoire à la créature sélectionnée.",
    ["tt_NPCUnFreeze_WayButton"] = "Permettre le mouvement par WayPoints à la créature sélectionné.",
    ["tt_NPCMove"] = "Déplacer la créature sélectionnée à votre position",
    ["tt_WayModifyDel"] = "Supprimer le Waypoint de la créature sélectionnée",
    ["tt_WayEndAdd"] = "Ajouter un waypoint à la fin du chemin existant",
    ["tt_NPCAddWay"] = "Ajouter un Waypoint au chemin. La créature doit étre dans la case ci-dessous",
    ["tt_NPCAdd_WayShowOn"] = "Montrer les WayPoints de la créature sélectionnée",
    ["tt_NPCDel"] = "Supprimer la créature sélectionnée",
    ["tt_getguid"] = "Obtenir les ID et GUID de la créature sélectionnée",
    ["tt_NPCAdd"] = "Ajouter une copie de ce PNJ à votre position.",
    ["tt_NPCGo"] = "Vous téléporte au PNJ contenu dans la case GUID",
    ["tt_NPCMorph"] = "Paramètres = #DisplayID [[Entrez l'ID d'affichage du morph que vous voulez appliquer]]",
    ["tt_NPCSay"] = "Faire dire au PNJ sélectionné [Paramètres]",
    ["tt_NPCYell"] = "Faire crier au PNJ sélectionné [Paramètres]",
    ["tt_NPCAura"] = "Paramètres = #AuraID [[Entrer l'AuraID de l'aura que vous voulez appliquer]]",
    ["tt_NPCUnaura"] = "Paramètres = #AuraID [[Entrer l'AuraID de l'aura que vous voulez enlever]]",
    ["tt_PlayEmote"] = "Jouer un emote de la liste à gauche",
    ["tt_GPSButton"] = "Montrer les coordonnées du personnage sélectionné.",
  --[[Control Labels]]
    ["Morph"] = "Morph",
    ["ma_NPCKillButton"] = "Tuer",
    ["ma_Respawn"] = "Respawn",
    ["ma_NPCDistanceButton"] = "Distance",
    ["ma_WayShow1"] = "Affiche WP",
    ["ma_NPCGUIDButton"] = "GUID",
    ["ma_NPCInfoButton"] = "Info PNJ",
    ["ma_NPCDemorph"] = "Demorph",
    ["ma_WayShow0"] = "Cache WP",
    ["ma_MoveStackButton"] = "Mouvements",
    ["ma_NPCFreezeButton"] = "StopPNJ",
    ["ma_WayAllDel"] = "DelStopPNJ",
    ["ma_WayMAdd"] = "Ajout Mvt",
    ["ma_NPCUnFreeze_RandomButton"] = "Mv Random",
    ["ma_NPCUnFreeze_WayButton"] = "Mv Waypt",
    ["ma_NPCMove"] = "NPC Move",
    ["ma_WayMDel"] = "Suppr Mvt",
    ["ma_WayEndAdd"] = "FinMvt",
    ["[WayAdd]"] = "AjoutChemin",
    ["[WayShow]"] = "MonterChemin",
    ["ma_NPCDel"] = "Suppr PNJ",
    ["ma_getguid"] = "Param GUID",
    ["ma_NPCAdd"] = "Ajout PNJ",
    ["ma_NPCGo"] = "PNJ Go",
    ["ma_NPCMorph"] = "Morph",
    ["ma_NPCSay"] = "PNJ dit",
    ["ma_NPCYell"] = "PNJ cri",
    ["ma_NPCAura"] = "Aura PNJ",
    ["ma_NPCUnAura"] = "PNJ DelAura",
    ["ma_ParameterBox"] = "Paramètre(s)",
    ["ma_PlayEmote"] = "Jouer emote",
  --[[Other]]

--[[GObjects Tab]]
  --[[Name]]
    ["tabmenu_GO"] = "GOB",
    ["tt_GOButton"] = "Affiche une fenêtre sur les fonctions GObjects",
  --[[Tooltips]]
    ["tt_ObjGo"] = "Aller à l'objet sélectionné",
    ["tt_ObjAdd"] = "Ajouter une copie de l'objet sélectionné à votre position/orientation",
    ["tt_ObjMove"] = "Déplacé l'objet ciblé à votre position",
    ["tt_ObjTurn"] = "Tourner l'objet vers votre position",
    ["tt_ObjDel"] = "Supprimer l'objet ciblé",
    ["tt_ObjNear"] = "Obtenir des information sur les objets proches.",
    ["tt_ObjTarget"] = "Cibler l'objet le plus proche",
  --[[Control Labels]]
    ["ma_OBJGo"] = "Obj Go",
    ["ma_OBJAdd"] = "Ajout Obj",
    ["ma_OBJMove"] = "Déplacer OBJ",
    ["ma_OBJTurn"] = "Tourner Obj",
    ["ma_OBJDel"] = "Suppr Obj",
    ["ma_OBJNear"] = "Obj Proche",
    ["ma_OBJTarget"] = "Cibler Obj",
  --[[Other]]
--[[Tele Tab]]
  --[[Name]]
    ["tabmenu_Tele"] = "Tele",
    ["tt_TeleButton"] = "Affiche une fenêtre sur les fonctions de téléportation.",
  --[[Tooltips]]
  --[[Control Labels]]
    ["Zone"] = "|cFF00FF00Zone:|r ",
  --[[Other]]
    ["ma_NoZones"] = "Aucune zone!",
    ["ma_NoSubZones"] = "Aucune sous-zone!",

--[[Tickets Tab]]
  --[[Name]]
    ["tabmenu_Ticket"] = "Tickets",
    ["tt_TicketButton"] = "Affiche une fenêtre concernant les tickets, et vous permet de les administrer.",
  --[[Tooltips]]
  --[[Control Labels]]
    ["ma_LoadTicketsButton"] = "Rafraichir",
    ["ma_GetCharTicketButton"] = "Invoquer",
    ["ma_GoCharTicketButton"] = "Go Joueur",
    ["ma_AnswerButton"] = "Mail",
    ["ma_DeleteButton"] = "Fermer",
    ["ma_TicketCount"] = "Tickets: ",
    ["ma_TicketsNoNew"] = "Vous n'avez pas de nouveaux tickets.",
    ["ma_TicketsNewNumber"] = "Vous avez %s nouveaux tickets!",
    ["ma_TicketsGoLast"] = "Aller au dernier ticket (%s).",
    ["ma_TicketsGetLast"] = "Vous amener %s .",
    ["ma_TicketsInfoPlayer"] = "Joueurs: ",
    ["ma_TicketsInfoStatus"] = "Etat: ",
    ["ma_TicketsInfoAccount"] = "Compte: ",
    ["ma_TicketsInfoAccLevel"] = "Niveau-Compte: ",
    ["ma_TicketsInfoLastIP"] = "Dernière IP: ",
    ["ma_TicketsInfoPlayedTime"] = "Temps joué: ",
    ["ma_TicketsInfoLevel"] = "Niveau: ",
    ["ma_TicketsInfoMoney"] = "Argent: ",
    ["ma_TicketsInfoLatency"] = "Latence: ",
    ["ma_TicketsNoInfo"] = "Aucune info disponible",
    ["ma_TicketsNotLoaded"] = "Aucun ticket chargé...",
    ["ma_TicketsNoTickets"] = "Aucun ticket disponible!",
    ["ma_TicketTicketLoaded"] = "Charger Ticket-Nr: %s\n\nPlayer Information\n\n",
    ["ma_Reload"] = "Recharger",
    ["ma_LoadMore"] = "Charger d'avantage...",
    ["tt_TicketOn"] = "Annoncer les nouveaux tickets.",
    ["tt_TicketOff"] = "Ne pas annoncer les nouveaux tickets.",
  --[[Other]]

--[[Misc Tab]]
  --[[Name]]
    ["tabmenu_Misc"] = "Autre",
    ["tt_MiscButton"] = "Affiche une fenêtre concernant les autres actions.",
  --[[Tooltips]]
    ["tt_FrmTrSlider"] = "Changer la transparence du cadre.",
    ["tt_BtnTrSlider"] = "Changer la transparence du bouton.",
  --[[Control Labels]]
    ["cmd_toggle"] = "Afficher la fenêtre principale",
    ["cmd_transparency"] = "Afficher la transparence par défaut (0.5 or 1.0)",
    ["cmd_tooltip"] = "Afficher ou non les bulles d'informations",
  --[[Other]]
    ["ma_WeatherFine"] = "Beau",
    ["ma_WeatherFog"] = "Brouillard",
    ["ma_WeatherRain"] = "Pluie",
    ["ma_WeatherSnow"] = "Neige",
    ["ma_WeatherSand"] = "Sable",

--[[Server Tab]]
    ["tabmenu_Server"] = "Serveur",
    ["tt_ServerButton"] = "Montrer différentes informations sur le serveur, et les actions disponibles.",
  --[[Tooltips]]
    ["tt_AnnounceButton"] = "Faire une annonce système.",
    ["tt_ShutdownButton"] = "Eteindre le serveur dans un temps spécifié en seconde, si aucunespécification, éteint immédiatement !",
  --[[Control Labels]]
    ["ma_AnnounceButton"] = "Annonce",
    ["ma_ShutdownButton"] = "Eteindre!",
  --[[Other]]

--[[Log Tab]]
    ["tabmenu_Log"] = "Log",
    ["tt_LogButton"] = "Montrer les logs de toutes les actions faites avec FireAdmin.",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[PvP Tab]]
    ["tabmenu_pvp"] = "JcJ",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[Event Tab]]
    ["tabmenu_event"] = "Event",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[RPG Tab]]
    ["tabmenu_rpg"] = "JDR",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[Vendor Tab]]
    ["tabmenu_vendor"] = "Vendeur",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[AhBot Tab]]
    ["tabmenu_ahbot"] = "AHBot",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]
  

    
--[[Who Tab]]
    ["tabmenu_who"] = "Qui",
  --[[Tooltips]]
  --[[Control Labels]]
    ["ma_ShowWhoButton"] = "Rafraichir",
    ["ma_SummonWhoButton"] = "Invoquer",
    ["ma_GoCharWhoButton"] = "TP au joueur",
    ["ma_AnswerWhoButton"] = "Mail",
    ["ma_DeleteWhoButton"] = "Kick",
    ["ma_whisperbutton"] = "Chuchoter",
  --[[Other]]

    
    
--[[Pop UPs]]
   --[[General]]
   --[[ToolTips]]
    ["tt_ItemButton"] = "Afficher un pop-up avec les fonction de recherche d'objets, et gestion de favoris.",
    ["tt_ItemSetButton"] = "Afficher un pop-up avec les fonction de recherche de set d'objets, et gestion de favoris.",
    ["tt_SpellButton"] = "Afficher un pop-up avec les fonction de recherche de sorts, et gestion de favoris.",
    ["tt_QuestButton"] = "Afficher un pop-up avec les fonction de recherche de quêtes, et gestion de favoris.",
    ["tt_CreatureButton"] = "Afficher un pop-up avec les fonction de recherche de créatures, et gestion de favoris.",
    ["tt_ObjectButton"] = "Afficher un pop-up avec les fonction de recherche d'objets Fire, et gestion de favoris.",
    ["tt_SearchDefault"] = "Vous pouvez maintenant entrer une recherche.",
    ["tt_SkillButton"] = "Afficher un pop-up avec les fonction de recherche de compétences, et gestion de favoris.",
  --[[Labels]]
    ["ma_ItemButton"] = "Objet",
    ["ma_ItemSetButton"] = "SetObjet",
    ["ma_SpellButton"] = "Sort",
    ["ma_QuestButton"] = "Quête",
    ["ma_CreatureButton"] = "Créature",
    ["ma_ObjectButton"] = "ObjetFire",
    ["ma_TeleSearchButton"] = "Téléportation",
    ["ma_MailRecipient"] = "Destinataire",
    ["ma_Mail"] = "Courrier",
    ["ma_Send"] = "Envoyer",
    ["ma_MailSubject"] = "Sujet",
    ["ma_MailYourMsg"] = "Votre message ici!",
    ["ma_SearchButton"] = "Chercher...",
    ["ma_ResetButton"] = "Reset",
    ["ma_FavAdd"] = "Ajout sélection",
    ["ma_FavRemove"] = "Enlever sélection",
    ["ma_SelectAllButton"] = "Tout sélectionner",
    ["ma_DeselectAllButton"] = "Tout desélectionner",
    ["ma_MailBytesLeft"] = "Octet Restant: ",
    ["ma_SkillButton"] = "Recherche-Compétence",
    ["ma_SkillVar1Button"] = "Compétence",
    ["ma_SkillVar2Button"] = "Compétence Max",
    ["ma_ItemVar1Button"] = "Quantité",
    ["ma_ObjectVar1Button"] = "Gestion de loot",
    ["ma_ObjectVar2Button"] = "Temps de spawn",
    ["ma_NoFavorites"] = "Il n'y actuellement aucun favoris sauvegardé!",
    ["favoriteResults"] = "|cFF00FF00Favoris:|r ",
  
  
  
--[[Deprecated, but may be used again.]]  
    ["ma_LearnAllButton"] = "Tous les sorts",
    ["ma_LearnCraftsButton"] = "Toutes les professions et recettes",
    ["ma_LearnGMButton"] = "Sort pas défaut MJ",
    ["ma_LearnClassButton"] = "Tous les sorts de la classe",
    ["ma_GPSButton"] = "GPS",
    ["ma_Online"] = "En-ligne",
    ["ma_Offline"] = "Hors-ligne",



--[[Linkifier]]
    ["lfer_Spawn"] = "Spawn",
    ["lfer_List"] = "Liste",
	["lfer_Reload"] = "Recharger",
    ["lfer_Goto"] = "Aller A",
    ["lfer_Move"] = "Déplacer",
    ["lfer_Turn"] = "Tourner",
    ["lfer_Delete"] = "Supprimer",
    ["lfer_Teleport"] = "Téléporter",
    ["lfer_Morph"] = "Morph",
    ["lfer_Add"] = "Ajouter",
    ["lfer_Remove"] = "Enlever",
    ["lfer_Learn"] = "Apprendre",
    ["lfer_Unlearn"] = "Desapprendre",
    ["lfer_Error"] = "Erreur de recherche, impossible de trouver le type, ou la recheche n'aboutie pas.",
    
--[[New additions]]
    ["parameters"]= "Paramètre:",
    ["gmingame"] = "MJ en jeu",
    ["gmlist"] = "Liste MJ",
    ["petcreate"] = "Créer Pet",
    ["petlearn"] = "Apprend Pet",
    ["petunlearn"] = "Désapprend Pet",
    ["pettp"] = "Pet TP",
    ["lookuptaxi"] = "Cherche Taxi",
    ["gotaxinode"] = "Go TaxiNode",
    ["gotrigger"] = "Go Trigger",
    ["goxy"] = "Go XY",
    ["goxyz"] = "Go XYZ",
    ["gozonexy"] = "Go ZoneXY",
    ["lookupzone"] = "Cherche zone",
    ["cast"] = "Cast",
    ["castback"] = "Cast Back",
    ["castdist"] = "Cast Dist",
    ["castself"] = "Auto-Cast",
    ["casttarget"] = "Cast Cible",
    ["listitem"] = "Liste Item",
    ["GmClear"] = "Clear",
    ["acctcreate"] = "Créer Compte",
    ["acctdelete"] = "Suppr Compte",
    ["acctaddon"] = "Addon Comtpe",
    ["acctgmlvl"] = "GMLvl Compte",
    ["acctpasswd"] = "MDP Compte",
    ["gmnotify"] = "Note MJ",
    ["tt_gmingamebutton"] = "Affiche les MJ connectés.",
    ["tt_gmlistbutton"] = "Affiche les comptes MJ de ce serveur",
    ["tt_petcreatebutton"] = "Faire de l'animal sélectionné votre pet.",
    ["tt_petlearnbutton"] = "Apprendre à votre pet le sort [[Parameter: #SPELLID]]",
    ["tt_petunlearnbutton"] = "Désapprend à votre pet le sort [[Parameter: #SPELLID]]",
    ["tt_pettpbutton"] = "Modifier les points de compétences du pet [[Parameter: #points]]",
    ["tt_lookuptaxibutton"] = "Chercher un TaxiNode [[Parameter: $Areanamepart]]",
    ["tt_gotaxinodebutton"] = "Téléporte à TaxiNode donné [[Parameter: #taxinode]]",
    ["tt_gotriggerbutton"] = "Téléporte au déclencheur de zone [[Parameter: #trigger_id]]",
    ["tt_goxybutton"] = "Téléporte aux coordonnées données au niveau du sol/de l'eau de la MapID. Si aucune MapID, sélectionne la map actuelle [[Paramètres: #x #y [#mapid]]]",
    ["tt_goxyzbutton"] = "Téléporte aux coordonnées donnée et niveau #z de la MapID. Si aucune MapID, sélectionne la map actuelle [[Paramètres: #x #y #z [#mapid]]]",
    ["tt_gozonexybutton"] = "Téléporte aux coordonnées données au niveau du sol/de l'eau de la ZoneID. Si aucune ZoneID, sélectionne la zone actuelle [[Paramètres: #x #y [#zoneid]]]",
    ["tt_lookupzonebutton"] = "Chercher une zone. [[Paramètre: $Areanamepart]]",
    ["tt_castbutton"] = "Lancer un sort. [[Paramètre: #SpellID]]",
    ["tt_castbackbutton"] = "La créature sélectionnée lancera sur VOUS le sort [SortID]. [[Paramètre: #SortID]]",
    ["tt_castdistbutton"] = "Vous lancez le sort [SortID] à la distance [#Dist]. [[Paramètres: #SortID #Dist]]",
    ["tt_castselfbutton"] = "La créature sélectionnée lancera le sort [SortID] sur elle-même. [[Paramètres: #SortID]]",
    ["tt_casttargetbutton"] = "La créature sélectionnée lancera le sort [SortID] sur sa cible. [[Paramètres: #SpellID]]",
    ["tt_gmclearbutton"] = "Remet à zéro les paramètres.",
    ["tt_listitembutton"] = "Liste toutes les réponses à [#itemID]. [[Paramètres: #ItemID]]",
    ["tt_acctcreatebutton"] = "Créer un compte de jeu [[Paramètres: $NomCompte $MotDePasse]]",
    ["tt_acctdeletebutton"] = "Supprime le compte d'un joueur et tout ses personnages [[Paramètre: $NomDuCompte]]",
    ["tt_acctaddonbutton"] = "Configurer le $compte pour utiliser #addon(0=WoW, 1=TBC, 2=WotLK) [[Paramètres: $NomDuCompte #addon]]",
    ["tt_acctgmlvlbutton"] = "Mettre le $account au niveau #gmlevel (0=Joueur, 1=Aide, 2=Assistant, 3=MJ, 4=Admin) [[Paramètress: $NomDuCompte #gmlevel]]",
    ["tt_acctpasswdbutton"] = "Mettre le $MotDePasse au $compte [[Paramètres: $NomDuCompte $MotDePasse $MotDePasse]]",
    ["tt_gmnotifybutton"] = "Envoyer un $message à tous les MJ connectés [[Paramètre: $message]]"
    
}

end
