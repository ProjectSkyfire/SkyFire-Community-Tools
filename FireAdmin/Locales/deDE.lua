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

function Return_deDE() 
  return {
--[[General]]
  --[[Tooltips]]
    ["ma_IconHint"] = "|cffeda55fKlick|r um FireAdmin zu öffnen. |cffeda55fShift-Klick|r um das Interface neu zuladen.",
    ["tt_Default"] = "Bewege deinen Mauszeiger über ein Tab für eine Erklärung!",
    ["tt_LanguageButton"] = "Ändert die Sprache und lädt FireAdmin neu.",
  --[[Control Labels]]
    ["ma_LanguageButton"] = "Change language",
    ["info_revision"] = "|cFF00FF00Fire Revision:|r ",
    ["info_platform"] = "|cFF00FF00Server Platform:|r ",
    ["info_online"] = "|cFF00FF00Players Online:|r ",
    ["info_maxonline"] = "|cFF00FF00Maximum Online:|r ",
    ["info_uptime"] = "|cFF00FF00Uptime:|r ",
  --[[Other]]
["slashcmds"] = { "/trinityadmin", "/ta" },
    ["lang"] = "Deutsch",
    ["realm"] = "|cFF00FF00Realm:|r "..GetCVar("realmName"), --do not change this line!
    ["char"] = "|cFF00FF00Char:|r "..UnitName("player"), --do not change this line!
    ["guid"] = "|cFF00FF00Guid:|r ",
    ["tickets"] = "|cFF00FF00Tickets:|r ",
    ["selectionerror1"] = "Bitte wähle nur dich selbst, einen anderen Spieler oder nichts aus",
    ["selectionerror2"] = "Bitte wähle nur dich selbst oder nichts aus!",
    ["selectionerror3"] = "Bitte wähle nur einen anderen Spieler aus!",
    ["selectionerror4"] = "Bitte wähle nur einen NPC!",
    ["searchResults"] = "|cFF00FF00Suchergebnisse:|r ",



--[[GM tab]]
  --[[Name]]
    ["tabmenu_Main"] = "GM",
  --[[Tooltips]]
    ["tt_MainButton"] = "Zum Hauptmenü wechseln",
    ["tt_DisplayAccountLevel"] = "Zeigt dein Account Level.",
    ["tt_GMOnButton"] = "Aktiviert deinen GM Modus.",
    ["tt_GMOffButton"] = "Deaktiviert deinen GM Modus.",
    ["tt_FlyOnButton"] = "Aktivert für den ausgewählen Charakter den Flugmodus.",
    ["tt_FlyOffButton"] = "Deaktivert für den ausgewählen Charakter den Flugmodus.",
    ["tt_HoverOnButton"] = "Aktiviert den Schwebemodus.",
    ["tt_HoverOffButton"] = "Deaktiviert den Schwebemodus.",
    ["tt_WhispOnButton"] = "Akzeptiert Flüstern von anderne Spielern.",
    ["tt_WhispOffButton"] = "Es werden keine Flüster angenommen.",
    ["tt_InvisOnButton"] = "Macht dich usichtbar.",
    ["tt_InvisOffButton"] = "Macht dich sichtbar.",
    ["tt_TaxiOnButton"] = "Zeigt dem angewählten Charakter alle Flugrouten. Hält nur bis zum ausloggen.",
    ["tt_TaxiOffButton"] = "Daktiviert den Taxicheat und stellt alle bisherigen Routen des Spielers wieder her.",
    ["tt_ShowMapsButton"] = "Alle Karten für den ausgewählten Charakter sind sichtbar.",
    ["tt_HideMapsButton"] = "Versteckt alle Karten für den ausgewählten Charakter.",
    ["tt_SpeedSlider"] = "Erhöht oder verringert die Geschwindigkeit des ausgewählten Charakters.",
    ["tt_ScaleSlider"] = "Vergrößert oder verkleinert den ausgewählten Charakter.",
    ["tt_instakill"] = "Wenn angekreuzt: Tötet Feinde beim auswählen.",
    ["tt_ScreenButton"] = "Macht ein Screenshot.",
    ["tt_BankButton"] = "Zeigt deine Bank.",
    ["tt_Dismount"] = "Steigt ab wenn du auf einem Reittier bist",
    ["tt_SetJail_A_Button"] = "Setzt die Position des Allianz Gefängnis auf deine jetzige Position.",
    ["tt_SetJail_H_Button"] = "Setzt die Position des Horde Gefängnis auf deine jetzige Position.",
    ["tt_N"] = "Navigiert zu Nord",
    ["tt_S"] = "Navigiert zu Süd",
    ["tt_E"] = "Navigiert zu Ost",
    ["tt_W"] = "Navigiert zu West",
    ["tt_chatonbutton"] = "Schalten Blizz-Chat-Symbol an"      , 
    ["tt_chatoffbutton"] = "Schalten Blizz-Chat-Symbol aus"      , 
    ["tt_waterwalkonbutton"] = "Lässt den ausgewählten Charakter auf Wasser laufen."  , 
    ["tt_watewrwalkoffbutton"] = "Lässt den ausgewählten Charakter nicht mehr auf Wasser laufen.", 
    ["tt_accountlockonbutton"] = "Sperrt deinen Account",  
    ["tt_accountlockoffbutton"] = "Entsperrt deinen Account",
    ["tt_DisplayAccountLvl"] = "Zeigt dein Account Level.",
  --[[Control Labels]]
    ["ma_OffButton"] = "Aus",
    ["ma_displaylevelbutton"] = "Zeigt dein Account Level",
    ["ma_GMOnButton"] = "GM-Modus an",
    ["ma_FlyOnButton"] = "Flug-Modus an",
    ["ma_HoverOnButton"] = "Schwebe-Modus an",
    ["ma_WhisperOnButton"] = "Flüstern an",
    ["ma_InvisOnButton"] = "Unsichtbar an",
    ["ma_TaxiOnButton"] = "Taxicheat an",    
    ["ma_ShowMapsButton"] = "Zeige Karten",
    ["ma_HideMapsButton"] = "Verstecke Karten",
    ["ma_instakill"] = "Tötet Kreaturen auf der Stelle",
    ["ma_ScreenshotButton"] = "Screenshot",
    ["ma_BankButton"] = "Bank",
    ["ma_DismountButton"] = "Dismount",
    ["ma_SetJail_A_Button"] = "Setzt Gefängnis A",
    ["ma_SetJail_H_Button"] = "Setzt Gefängnis H",
    ["gridnavigator"] = "Grid-Navigator",
    ["N"] = "N", --Abbreviation for North
    ["S"] = "S", --Abbreviation for South
    ["E"] = "O", --Abbreviation for East
    ["W"] = "W", --Abbreviation for West
    ["ma_chatbutton"] = "GM Chat an",
    ["ma_mapsbutton"] = "Zeigt alle Karten",
    ["ma_waterwalkbutton"] = "Wasser laufen an",
    ["ma_accountlockbutton"] = "Account sperren",
  --[[Other]]



--[[Char Tab]]
  --[[Name]]
    ["tabmenu_Char"] = "Char",
    ["tt_CharButton"] = "Wechselt zum Fenster mit Charakter spezifischen Aktionen.",
  --[[Tooltips]]
    ["tt_RotateLeft"] = "Links drehen.",
    ["tt_RotateRight"] = "Rechts drehen.",
    ["tt_killbutton"] = "Tötet den angewählten NPC/Spieler",
    ["tt_reviveplayer"] = "Belebt den Spieler wieder",
    ["tt_saveplayer"] = "Speichert den angewählten Charakter",
    ["tt_KickButton"] = "Kickt den angewählten Charakter vom Server.",
    ["tt_CooldownButton"] = "Entfernt alle Abklingzeiten von Zaubern des angewählten Charakters.",
    ["tt_GUIDButton"] = "Zeigt die GUID des angewählten Charakters.",
    ["tt_PinfoButton"] = "Bekomme Informationen von den angewählten Spieler.",
    ["tt_DistanceButton"] = "Abstand von dir bis zur angewählten Kreatur.",
    ["tt_RecallButton"] = "Bringt den Charakter an die Position an der er vor dem Teleport war.",
    ["tt_DemorphButton"] = "Entfernt alls verwandlungen von dem Charakter.",
    ["tt_ShowMapsCharButton"] = "Zeigt alle Karten für den angewählten Spieler.",
    ["tt_HideMapsCharButton"] = "Verstekct alle Karten für den angewählten Spieler.",
    ["tt_learnlangbutton"] = "Lernt die ausgeäwhlte Sprache",
    ["tt_modifybutton"] = "Modifiziert das ausgewählte Attribute zum eingegebenen Wert.",
    ["tt_resetbutton"] = "Setzt das ausgewählte Attribute für den angewählten Spieler zurück",
  --[[Control Labels]]
    ["ma_KillButton"] = "Töten",
    ["ma_ReviveButton"] = "Wiederbeleben",
    ["ma_SaveButton"] = "Speichern",
    ["ma_KickButton"] = "Kick",
    ["ma_CooldownButton"] = "Cooldown",
    ["ma_GUIDButton"] = "Zeige GUID",
    ["ma_PinfoButton"] = "PLAYER Info",
    ["ma_DistanceButton"] = "Abstand",
    ["ma_RecallButton"] = "Recall",
    ["ma_DemorphButton"] = "Demorph",
    ["ma_ShowMapsCharButton"] = "Zeige Kraten",
    ["ma_HideMapsCharButton"] = "Verstecke Karten",
    ["ma_LearnLangButton"] = "Alle Sprachen",--remove
    ["ma_Learn"] = "lernen",
    ["ma_Modify"] = "modifizieren",
    ["ma_Reset"] = "Reset",
  --[[Other]]
      ["ma_LevelUp"] = "Level hoch",
    ["ma_LevelDown"] = "Level runter",
    ["ma_Money"] = "Geld",
    ["ma_Energy"] = "Energie",
    ["ma_Rage"] = "Wut",
    ["ma_Mana"] = "Mana",
    ["ma_Healthpoints"] = "Lebenspunkte",
    ["ma_Talents"] = "Talente",
    ["ma_Stats"] = "Werte",
    ["ma_Spells"] = "Zauber",
    ["ma_Honor"] = "Ehre",
    ["ma_Level"] = "Level",
    ["ma_AllLang"] = "Alle Sprachen",
    -- languages
    ["Common"] = "Gemein Sprache",
    ["Orcish"] = "Ork",
    ["Taurahe"] = "Taurahe",
    ["Darnassian"] = "Darnassian",
    ["Dwarvish"] = "Zwergisch",
    ["Thalassian"] = "Thalassian",
    ["Demonic"] = "Demonisch",
    ["Draconic"] = "Draconic",
    ["Titan"] = "Titan",
    ["Kalimag"] = "Kalimag",
    ["Gnomish"] = "Gnomisch",
    ["Troll"] = "Troll",
    ["Gutterspeak"] = "Gossensprache",
    ["Draenei"] = "Draenei",
  
  
  
--[[Char2 Tab]]
  --[[Name]]
    ["tt_Char2Button"] = "Wechselt zum Fenster mit Charakter spezifischen Aktionen.",
  --[[Tooltips]]
    ["tt_banbutton"] = "Parameter= <account|ip|character> $NameOderIp <-1|xxdyyhzzm> $Grund   [[Ban acct/IP & kick. -1=permban, oder ein string wie 4d3h24m16s]]",
    ["tt_gonamebutton"] = "Parameter= $charactername  [[Teleportiert dich zu dem Charakter]]",
    ["tt_createguildbutton"] = "Parameters= $Gildenleiter $Gildenname  [[Eröffnet eine Gilde mit $Gildenname, und $Gildenleiter]]",
    ["tt_teleaddbutton"] = "Parameter= $Name  [[Fügt eine Teleport zu .tele Befehl für deine Position mit dem Name $Name]]",
    ["tt_baninfobutton"] = "Parameter= <account|ip|charakter>  [[Zeigt detalierte Info's über den Ban Account/Ip/Charakter]]",
    ["tt_groupgobutton"] = "Parameter= $charaktername   [[Teleportiert den Charakter und seine Gruppe zu dir]]",
    ["tt_guildinvitebutton"] = "Parameters= $charaktername $gildenname   [[Füg $charaktername zu der Gilde $Gildenname]]",
    ["tt_teledelbutton"] = "Parameter= $telename  [[Entfernt den Teleport mit dem $telename von der .tele locations list]]",
    ["tt_banlistbutton"] = "Parameters= <account|ip> $NameOderIp   [[Sucht nach Banns für die Parameter]]",
    ["tt_namegobutton"] = "Parameter= $charaktername   [[Teleportiert den Charakter zu dir]]",
    ["tt_guildrankbutton"] = "Parameters= $charaktername #ranknummer   [[Setzt den Charakter auf #ranknummer in der Gilde]]",
    ["tt_telegroupbutton"] = "Parameter= $telename  [[Teleportiert den angewählten Charakter und seine Gruppe zu $telename]]",
    ["tt_unbanbutton"] = "Parameters= <account|ip|charakter> $NameOderIp  [[Entbannt Account/IP/Charakter]]",
    ["tt_guilddeletebutton"] = "Parameter= $gildenname  [[Löscht die Gilde]]",
    ["tt_guilduninvitebutton"] = "Parameter= $charaktername  [[Kickt den $charaktername aus der Gilde]]",
    ["tt_telenamebutton"] = "Parameters= $charaktername $telename  [[Teleportiert $charaktername zu $telename]]",
    ["tt_mutebutton"] = "Parameters= $charaktername #minutes  [[Deaktiviert den Chat von $charactername für #minutes]]",
    ["tt_charmorphbutton"] = "Parameters = #DisplayID [[Gib die DisplayID von dem Morph in den du verwandelst werden möchtest]]", 
    ["tt_charaurabutton"] = "Parameters = #AuraID [[Gib die AuraID ein die du haben möchtest]]",
    ["tt_charunaurabutton"] = "Parameters = #AuraID [[Gib die AuraID von der du dich lösen möchtest]]",
    ["tt_JailAButton"] = "Parameter= $charactername [[Schickt den Charakter der in der Box steht in das Allianz Gefängnis]]",
    ["tt_JailHButton"] = "Parameter= $charactername [[Schickt den Charakter der in der Box steht in das Horde Gefängnis]]",
    ["tt_UnJailButton"] = "Parameter= $charactername [[Entlässt den Charakter in der in der Box steht aus dem Gefängnis]]",
    ["tt_UnMuteButton"] = "Unmutes $player.",
    ["tt_QuestAddButton"] = "Fügt #questid zum angewählten Spieler hinzu.",
    ["tt_QuestCompleteButton"] = "Makiert #questid für den angewählten Spieler als fertig.",
    ["tt_QuestRemoveButton"] = "Entfernt #questid von dem angewählten Spieler.",
    ["tt_DamageButton"] = "Parameter= #amount fügt Schaden für die angewählte Kreatur/Spieler hinzu",
    ["tt_HideAreaButton"] = "Versteckt #areaid für den angewählten Spieler.",
    ["tt_ShowAreaButton"] = "Zeigt #areaid für den angewählten Spieler.",
    ["tt_HonorAddButton"] = "Fügt #honorpoints zu den angewählten Spieler hinzu.",
    ["tt_HonorUpdateButton"] = "Braucht kein Parameter. Speichert die Ehre für den angewählten Spieler.",
  --[[Control Labels]]
    ["ma_parameter"] = "Parameter(s)",
    ["ma_ParameterizedCommands"] ="Parameterized Commands",
    ["ma_banbutton"] = "Ban",
    ["ma_gonamebutton"] = "GoName",
    ["ma_createguildbutton"] = "G Create",
    ["ma_teleaddbutton"] = "TeleAdd",
    ["ma_baninfobutton"] = "BanInfo",
    ["ma_groupgobutton"] = "GroupGo",
    ["ma_guildinvitebutton"] = "G Invite",
    ["ma_teledelbutton"] = "TeleDel",
    ["ma_banlistbutton"] = "BanList",
    ["ma_namegobutton"] = "NameGo",
    ["ma_guildrankbutton"] = "G Rank",
    ["ma_telegroupbutton"] = "TeleGroup",
    ["ma_unbanbutton"] = "UnBan",
    ["ma_guilddeletebutton"] = "G Delete",
    ["ma_guilduninvitebutton"] = "G UnInv",
    ["ma_telenamebutton"] = "TeleName",
    ["ma_mutebutton"] = "Mute",
    ["ma_Aura"] = "Aura",
    ["ma_UnAura"] = "UnAura",
    ["ma_Morph"] = "Morph",
    ["ma_JailAButton"] = "Jail (A)",
    ["ma_JailHButton"] = "Jail (H)",
    ["ma_UnJailButton"] = "UnJail",
    ["ma_UnMuteButton"] = "UnMute",
    ["ma_QuestAddButton"] = "QuestAdd",
    ["ma_QuestCompleteButton"] = "QuestCompl",
    ["ma_QuestRemoveButton"] = "QuestRem",
    ["ma_DamageButton"] = "Damage",
    ["ma_HideAreaButton"] = "HideArea",
    ["ma_ShowAreaButton"] = "ShowArea",
    ["ma_HonorAddButton"] = "HonorAdd",
    ["ma_HonorUpdateButton"] = "HonorUpdt",
  --[[Other]]



--[[NPC Tab]]
  --[[Name]]
    ["tabmenu_NPC"] = "NPC",
    ["tt_NpcButton"] = "Wechselt zum Fenster für NPC bezogene Funktionen.",
  --[[Tooltips]]
    ["tt_NPCRotateLeft"] = "Links drehen",
    ["tt_NPCRotateRight"] = "Rechts drehen",
    ["tt_NPCKillButton"] = "Tötet den ausgewählten NPC",
    ["tt_npcrespawn"] = "Respawnt den angewählten NPC, wenn keiner ausgewählt ist werden alle in der Nähe respawnt",
    ["tt_NPCDistanceButton"] = "Gibt die Entfernung zum angewählten NPC wieder.",
    ["tt_WayShow1"] = "Zeigt die Wegepunkte für den angewählten NPC.",
    ["tt_NPCGUIDButton"] = "Zeigt die GUID der angewählten Kreatur.",
    ["tt_NPCInfoButton"] = "Gibt die Informationen zu den angewählten NPC wieder.",
    ["tt_NPCDemorph"] = "Demorphs den angewählten NPC",
    ["tt_WayShow0"] = "Hört auf die Wegepunkte für die angewählte Kreatur zu zeigen.",
    ["tt_MoveStackButton"] = "Zeigt die Bewegungs Stacks von den angewählten NPC.",
    ["tt_NPCFreezeButton"] = "Stop die Bewegung des angewählten NPC, speichert die Wegepunkte",
    ["tt_NPCFreezeDelButton"] = "Stop die Bewegung des angewählten NPC, speichert NICHT die Wegpunkte",
    ["tt_WayMAdd"] = "Fügt einen Wegpunkt zum angewählten NPC hinzu Adds a waypoint to selected creatures existing move stack",
    ["tt_NPCUnFreeze_RandomButton"] = "Erlaubt zufälliges laufen des angewählten NPC.",
    ["tt_NPCUnFreeze_WayButton"] = "Erlaubt das der angewählte NPC seine Wegpunkte benutzt.",
    ["tt_NPCMove"] = "Bewegt den ausgewählten NPC zu dir",
    ["tt_WayModifyDel"] = "Löscht den angewählten Wegpunkt von dem NPC",
    ["tt_WayEndAdd"] = "Fügt an das Ende einen Wegpunkt zu dem NPC",
    ["tt_NPCAddWay"] = "Fügt einen Wegpunkt in den Weg. NPC GUID muss in der Box hier unten stehen",
    ["tt_NPCAdd_WayShowOn"] = "Zeigt die Wegpunkte von dem angewählten NPC",
    ["tt_NPCDel"] = "Löscht den angewählten NPC",
    ["tt_getguid"] = "Gibt GUID und ID des angewählten NPC wieder",
    ["tt_NPCAdd"] = "Fügt eine Kopie des angewählten NPC zu deiner Position zu",
    ["tt_NPCGo"] = "Teleportiert dich zu den NPC in der GUID Box",
    ["tt_NPCMorph"] = "Parameters = #DisplayID [[Gibt die DisplayID ein in der du dich verwandeln willst]]",
    ["tt_NPCSay"] = "Lässt den angewählten NPC sagen [parameters]",
    ["tt_NPCYell"] = "Lässt den angewählten NPC schreien [parameters]",
    ["tt_NPCAura"] = "Parameters = #AuraID [[Gib die AuraID ein welche der NPC haben soll]]",
    ["tt_NPCUnaura"] = "Parameters = #AuraID [[Gib die AuraID ein welche dem NPC entfernt werden soll]]",
    ["tt_PlayEmote"] = "Spielt ein Emote von der linken Liste ab",
    ["tt_GPSButton"] = "Zeigt die Koordinaten von den angewählten NPC.",
  --[[Control Labels]]
    ["Morph"] = "Morph",
    ["ma_NPCKillButton"] = "Kill",
    ["ma_Respawn"] = "Respawn",
    ["ma_NPCDistanceButton"] = "Distance",
    ["ma_WayShow1"] = "WayShowOn",
    ["ma_NPCGUIDButton"] = "Show GUID",
    ["ma_NPCInfoButton"] = "NPC Info",
    ["ma_NPCDemorph"] = "Demorph",
    ["ma_WayShow0"] = "WayShowOff",
    ["ma_MoveStackButton"] = "Show Moves",
    ["ma_NPCFreezeButton"] = "NPCStay",
    ["ma_WayAllDel"] = "NPCStayDel",
    ["ma_WayMAdd"] = "WayMAdd",
    ["ma_NPCUnFreeze_RandomButton"] = "Mv Random",
    ["ma_NPCUnFreeze_WayButton"] = "Mv Waypt",
    ["ma_NPCMove"] = "NPC Move",
    ["ma_WayMDel"] = "WayMDel",
    ["ma_WayEndAdd"] = "WayEndAdd",
    ["[WayAdd]"] = "[WayAdd]",
    ["[WayShow]"] = "[WayShow]",
    ["ma_NPCDel"] = "NPC Del",
    ["ma_getguid"] = "Get GUID",
    ["ma_NPCAdd"] = "NPC Add",
    ["ma_NPCGo"] = "NPC Go",
    ["ma_NPCMorph"] = "Morph",
    ["ma_NPCSay"] = "NPC sagt",
    ["ma_NPCYell"] = "NPC schreit",
    ["ma_NPCAura"] = "NPC Aura",
    ["ma_NPCUnAura"] = "NPC Unaura",
    ["ma_ParameterBox"] = "Parameter(s)",
    ["ma_PlayEmote"] = "Spielt Emote",
  --[[Other]]



--[[GObjects Tab]]
  --[[Name]]
    ["tabmenu_GO"] = "GOB",
    ["tt_GOButton"] = "Wechselt du GameObjekt Funktionsfenster.",
  --[[Tooltips]]
    ["tt_ObjGo"] = "Geh zu dem angewählten Objekt",
    ["tt_ObjAdd"] = "Fügt eine Kopie von angezielten Objekt zu deiner Position",
    ["tt_ObjMove"] = "Bewegt das angezielte Objekt zu dir",
    ["tt_ObjTurn"] = "Dreht das angezielte Objekt in deine Ausrichtung",
    ["tt_ObjDel"] = "Löscht das angezielte Objekt",
    ["tt_ObjNear"] = "Gibt Informationen zu Objekten in deiner Nähe wieder",
    ["tt_ObjTarget"] = "Wählt das nächst liegende Objekt an",
  --[[Control Labels]]
    ["ma_OBJGo"] = "Obj Go",
    ["ma_OBJAdd"] = "Obj Add",
    ["ma_OBJMove"] = "Obj Move",
    ["ma_OBJTurn"] = "Obj Turn",
    ["ma_OBJDel"] = "Obj Del",
    ["ma_OBJNear"] = "Obj Near",
    ["ma_OBJTarget"] = "Obj Target",
  --[[Other]]
--[[Tele Tab]]
  --[[Name]]
    ["tabmenu_Tele"] = "Tele",
    ["tt_TeleButton"] = "Wechselt zum Fenster mit Teleportlisten.",
  --[[Tooltips]]
  --[[Control Labels]]
    ["Zone"] = "|cFF00FF00Zone:|r ",
  --[[Other]]
    ["ma_NoZones"] = "Keine Zone!",
    ["ma_NoSubZones"] = "Keine Unterzone!",



--[[Tickets Tab]]
  --[[Name]]
    ["tabmenu_Ticket"] = "Tickets",
    ["tt_TicketButton"] = "Wechselt das Fenster, zeigt dir alle Ticket und lääst sie dich verwalten.",
  --[[Tooltips]]
  --[[Control Labels]]
    ["ma_LoadTicketsButton"] = "Aktualisieren",
    ["ma_GetCharTicketButton"] = "Her holen",
    ["ma_GoCharTicketButton"] = "Gehe zu",
    ["ma_AnswerButton"] = "Brief",
    ["ma_DeleteButton"] = "Schließen",
    ["ma_TicketCount"] = "|cFF00FF00Tickets:|r ",
    ["ma_TicketsNoNew"] = "Keine neuen Tickets.",
    ["ma_TicketsNewNumber"] = "Du hast |cffeda55f%s|r neue Tickets!",
    ["ma_TicketsGoLast"] = "Gehe zum letzten Ticketersteller.",
    ["ma_TicketsGetLast"] = "Bringt %s zu dir.",
    ["ma_TicketsInfoPlayer"] = "|cFF00FF00Player:|r ",
    ["ma_TicketsInfoStatus"] = "|cFF00FF00Status:|r ",
    ["ma_TicketsInfoAccount"] = "|cFF00FF00Account:|r ",
    ["ma_TicketsInfoAccLevel"] = "|cFF00FF00Account-Level:|r ",
    ["ma_TicketsInfoLastIP"] = "|cFF00FF00Letzte IP:|r ",
    ["ma_TicketsInfoPlayedTime"] = "|cFF00FF00Gespielte Zeit:|r ",
    ["ma_TicketsInfoLevel"] = "|cFF00FF00Level:|r ",
    ["ma_TicketsInfoMoney"] = "|cFF00FF00Geld:|r ",
    ["ma_TicketsInfoLatency"] = "|cFF00FF00Latenz:|r ",
    ["ma_TicketsNoInfo"] = "Keine Info zur Verfügung",
    ["ma_TicketsNotLoaded"] = "Keine Tickets geladen...",
    ["ma_TicketsNoTickets"] = "Keine Tickets verfügbar!",
    ["ma_TicketTicketLoaded"] = "|cFF00FF00Geladen Ticket-Nr:|r %s\n\nPlayer Information\n\n",
    ["ma_Reload"] = "Neu laden",
    ["ma_LoadMore"] = "Mehr laden...",
    ["tt_TicketOn"] = "Kündige neue Tickets an.",
    ["tt_TicketOff"] = "Kündige keine neuen Tickets an.",
  --[[Other]]



--[[Misc Tab]]
  --[[Name]]
    ["tabmenu_Misc"] = "Misc",
    ["tt_MiscButton"] = "Wechselt zu dem Fenster mit Sonsitge Aktionen.",
  --[[Tooltips]]
    ["tt_FrmTrSlider"] = "Ändert Frame transparents.",
    ["tt_BtnTrSlider"] = "Ändert Tasten transparents.",
  --[[Control Labels]]
    ["cmd_toggle"] = "Wechselt zum Hauptmenü",
    ["cmd_transparency"] = "Wechselt zu der Standart transparents (0.5 ooder 1.0)",
    ["cmd_tooltip"] = "Ändert das Wetter",
  --[[Other]]
    ["ma_WeatherFine"] = "Schön",
    ["ma_WeatherFog"] = "Nebel",
    ["ma_WeatherRain"] = "Regen",
    ["ma_WeatherSnow"] = "Schnee",
    ["ma_WeatherSand"] = "Sandsturm",



--[[Server Tab]]
    ["tabmenu_Server"] = "Server",
    ["tt_ServerButton"] = "Zeigt verschiedene Serverinformationen und lässt ihn Verwalten.",
  --[[Tooltips]]
    ["tt_AnnounceButton"] = "Kündige eine Systemnachricht an.",
    ["tt_ShutdownButton"] = "Fährt den Server herunter in Sekunden, wenn es freigelassen wir fährt er unverzüglich herunter!",
  --[[Control Labels]]
    ["ma_AnnounceButton"] = "Anlündigen",
    ["ma_ShutdownButton"] = "Runterfahren!",
  --[[Other]]



--[[Log Tab]]
    ["tabmenu_Log"] = "Log",
    ["tt_LogButton"] = "Zeigt den Log von allen Aktionen die von FireAdmin gemacht wurden.",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[PvP Tab]]
    ["tabmenu_pvp"] = "PvP",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[Event Tab]]
    ["tabmenu_event"] = "Event",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[RPG Tab]]
    ["tabmenu_rpg"] = "RPG",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[Vendor Tab]]
    ["tabmenu_vendor"] = "Händler",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[AhBot Tab]]
    ["tabmenu_ahbot"] = "AhBot",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]
  

    
--[[Who Tab]]
    ["tabmenu_who"] = "Wer",
  --[[Tooltips]]
  --[[Control Labels]]
    ["ma_ShowWhoButton"] = "Erneuern",
    ["ma_SummonWhoButton"] = "Herholen",
    ["ma_GoCharWhoButton"] = "Zu Spieler",
    ["ma_AnswerWhoButton"] = "Brief",
    ["ma_DeleteWhoButton"] = "Kick",
    ["ma_whisperbutton"] = "Flüstern",
  --[[Other]]

    
    
--[[Pop UPs]]
   --[[General]]
   --[[ToolTips]]
    ["tt_ItemButton"] = "Öffnet ein Popup zum suchen von Items und verwaltet die Favoriten.",
    ["tt_ItemSetButton"] = "Öffnet ein Popup zum suchen von Items-Sets und verwaltet die Favoriten.",
    ["tt_SpellButton"] = "Öffnet ein Popup zum suchen von Zaubern und verwaltet die Favoriten.",
    ["tt_QuestButton"] = "Öffnet ein Popup zum suchen von Quests und verwaltet die Favoriten..",
    ["tt_CreatureButton"] = "Öffnet ein Popup zum suchen von NPCs und verwaltet die Favoriten.",
    ["tt_ObjectButton"] = "Öffnet ein Popup zum suchen von GameObjects und verwaltet die Favoriten.",
    ["tt_SearchDefault"] = "Jetzt kannst du ein Schlüsselwort eingeben und danach suchen.",
    ["tt_SkillButton"] = "Öffnet ein Popup zum suchen von Skills und verwaltet die Favoriten..",
  --[[Labels]]
    ["ma_ItemButton"] = "Item-Suche",
    ["ma_ItemSetButton"] = "ItemSet-Suche",
    ["ma_SpellButton"] = "Zauber-Suche",
    ["ma_QuestButton"] = "Quest-Suche",
    ["ma_CreatureButton"] = "NPC-Suche",
    ["ma_ObjectButton"] = "Object-Suche",
    ["ma_TeleSearchButton"] = "Teleport-Suche",
    ["ma_MailRecipient"] = "Empfänger",
    ["ma_Mail"] = "Sende eine Nachricht",
    ["ma_Send"] = "Senden",
    ["ma_MailSubject"] = "Betreff",
    ["ma_MailYourMsg"] = "Hier deine Nachricht!",
    ["ma_SearchButton"] = "Suche...",
    ["ma_ResetButton"] = "Löschen",
    ["ma_FavAdd"] = "Ausgewählte hinzufügen",
    ["ma_FavRemove"] = "Ausgewählte entfernen",
    ["ma_SelectAllButton"] = "Alle makieren",
    ["ma_DeselectAllButton"] = "Alle entmakieren",
    ["ma_MailBytesLeft"] = "Bytes übrig: ",
    ["ma_SkillButton"] = "Skill-Suche",
    ["ma_SkillVar1Button"] = "Skill",
    ["ma_SkillVar2Button"] = "Max Skill",
    ["ma_ItemVar1Button"] = "Menge",
    ["ma_ObjectVar1Button"] = "Loot Template",
    ["ma_ObjectVar2Button"] = "Spawn Zeit",
    ["ma_NoFavorites"] = "Es sind momentan keine Favoriten gespeichert!",
    ["favoriteResults"] = "|cFF00FF00Favoriten:|r ",
  
  
  
--[[Deprecated, but may be used again.]]  
    ["ma_LearnAllButton"] = "Alle zauber",
    ["ma_LearnCraftsButton"] = "Alle Berufe und Rezepte",
    ["ma_LearnGMButton"] = "Standart GM Zauber",
    ["ma_LearnClassButton"] = "Alle Klassen Zauber",
    ["ma_GPSButton"] = "GPS",
    ["ma_Online"] = "Online",
    ["ma_Offline"] = "Offline",



--[[Linkifier]]
    ["lfer_Spawn"] = "Spawn",
    ["lfer_List"] = "List",
	["lfer_Reload"] = "Nachladen",
    ["lfer_Goto"] = "Gehe zu",
    ["lfer_Move"] = "Bewege",
    ["lfer_Turn"] = "Drehe",
    ["lfer_Delete"] = "Delete",
    ["lfer_Teleport"] = "Teleport",
    ["lfer_Morph"] = "Morph",
    ["lfer_Add"] = "Hinzufügen",
    ["lfer_Remove"] = "Entfernen",
    ["lfer_Learn"] = "Lern",
    ["lfer_Unlearn"] = "Vergesseb",
    ["lfer_Error"] = "Fehler, der Suchstring ist richtig aber ein Fehler ist aufgetreten oder es ist nicht möglich zu finden",
    
--[[New additions]]
    ["parameters"]= "Parameter(s):",
    ["gmingame"] = "GMs InGame",
    ["gmlist"] = "GM List",
    ["petcreate"] = "Pet erstellen",
    ["petlearn"] = "Pet lern",
    ["petunlearn"] = "Pet vergesseb",
    ["pettp"] = "Pet TP",
    ["lookuptaxi"] = "Lookup Taxi",
    ["gotaxinode"] = "Go TaxiNode",
    ["gotrigger"] = "Go Trigger",
    ["goxy"] = "Go XY",
    ["goxyz"] = "Go XYZ",
    ["gozonexy"] = "Go ZoneXY",
    ["lookupzone"] = "Lookup Zone",
    ["cast"] = "Cast",
    ["castback"] = "Cast Back",
    ["castdist"] = "Cast Dist",
    ["castself"] = "Cast Self",
    ["casttarget"] = "Cast Target",
    ["listitem"] = "List Item",
    ["GmClear"] = "Clear",
    ["acctcreate"] = "Acct Create",
    ["acctdelete"] = "Acct Delete",
    ["acctaddon"] = "Acct Addon",
    ["acctgmlvl"] = "Acct GMLvl",
    ["acctpasswd"] = "Acct Passwd",
    ["gmnotify"] = "GM Notify",
    ["tt_gmingamebutton"] = "Zeigt alle eingeloggten GMs",
    ["tt_gmlistbutton"] = "Zeigt die GM Accounts auf den Server",
    ["tt_petcreatebutton"] = "Macht das Tier zu deinem Begleiter.",
    ["tt_petlearnbutton"] = "Lehrt deinem Begleiter den Zauber [[Parameter: #SPELLID]]",
    ["tt_petunlearnbutton"] = "Lässt deinem Begleiter den Zauber [[Parameter: #SPELLID]] vergessen",
    ["tt_pettpbutton"] = "Modifiziert die Begleiterpunkte [[Parameter: #points]]",
    ["tt_lookuptaxibutton"] = "Sucht nach TaxiNode [[Parameter: $Areanamepart]]",
    ["tt_gotaxinodebutton"] = "Teleports die zu TaxiNode [[Parameter: #taxinode]] gehören",
    ["tt_gotriggerbutton"] = "Teleports die es in dem Gebiet gibt [[Parameter: #trigger_id]]",
    ["tt_goxybutton"] = "Teleports die in der Nähe der Koordinanten sind. Wenn MapID nicht angegeben wird die wird die aktuelle genommen [[Parameters: #x #y [#mapid]]]",
    ["tt_goxyzbutton"] = "Teleports die zu der Koordinate der #z Ebende auf der MapID. Wenn keine MapID angegeben wird die aktuelle genommen [[Parameters: #x #y #z [#mapid]]]",
    ["tt_gozonexybutton"] = "Teleports die zu Koordinanten am Boden/Wasser auf der ZoneID sind. Wenn keine ZoneID angegeben wird die aktuelle genommen [[Parameters: #x #y [#zoneid]]]",
    ["tt_lookupzonebutton"] = "Sucht nach eine Zone. [[Parameters: $Areanamepart]]",
    ["tt_castbutton"] = "Wirkt den Zauber. [[Parameters: #SpellID]]",
    ["tt_castbackbutton"] = "Angewählter NPC wirkt [SpellID] auf dich. [[Parameters: #SpellID]]",
    ["tt_castdistbutton"] = "Du wirkst [SpellID] auf Entfernung [#Dist]. [[Parameters: #SpellID #Dist]]",
    ["tt_castselfbutton"] = "Angewählter NPC wirkt [SpellID] auf sich. [[Parameters: #SpellID]]",
    ["tt_casttargetbutton"] = "Angewählter NPC wirkt [SpellID] auf das Ziel. [[Parameters: #SpellID]]",
    ["tt_gmclearbutton"] = "Löscht die Parameter in der Box.",
    ["tt_listitembutton"] = "Zeigt die Häufigkeit des Items [#itemID]. [[Parameters: #ItemID]]",
    ["tt_acctcreatebutton"] = "Erstellt einen Spiel Account [[Parameters: $accountname $password]]",
    ["tt_acctdeletebutton"] = "Löscht einen Spiel Account und alle Charaktere [[Parameters: $accountname]]",
    ["tt_acctaddonbutton"] = "Setzt $account zum benutzen von #addon(0=WoW, 1=TBC, 2=WotLK) [[Parameters: $accountname #addon]]",
    ["tt_acctgmlvlbutton"] = "Setzt $account auf #gmlevel (0=Spieler, 1=Hilfe, 2=Assistant, 3=GM, 4=Admin) [[Parameters: $accountname #gmlevel]]",
    ["tt_acctpasswdbutton"] = "Setzt $account $password [[Parameters: $accountname $password $password]]",
    ["tt_gmnotifybutton"] = "Sendet eine Nachricht $message zu allen online GMs [[Parameters: $message]]",
    ["tt_who_customize"] = "Flag character for customization at next login.",
    ["tt_who_chardelete"] = "CAUTION! Deletes the selected character. CAUTION!",
    ["tt_who_charrename"] = "Flags selected character for rename at next login.",
    ["tt_who_permbanbutton"] = "Bans the selected character's account PERMANENTLY",
    ["tt_who_1daybanbutton"] = "Bans the selected character's account for 1 day",
    ["tt_who_jailabutton"] = "Jails the character in the Alliance Jail",
    ["tt_who_jailhbutton"] = "Jails the character in the Horde Jail",
    ["tt_who_unjailbutton"] = "UnJails the character"

   } 
end
