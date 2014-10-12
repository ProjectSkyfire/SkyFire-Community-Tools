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

function Return_svSV() 
  return {
--[[General]]
  --[[Tooltips]]
    ["ma_IconHint"] = "|cffeda55fKlicka|r för att öppna FireAdmin. |cffeda55fShift-klicka|r för att ladda om ditt interface.",
    ["tt_Default"] = "Dra musen över ett element för att visa tooltipen!",
    ["tt_LanguageButton"] = "Ändra språk och ladda om FireAdmin.",
  --[[Control Labels]]
    ["ma_LanguageButton"] = "Ändra språk",
    ["info_revision"] = "|cFF00FF00Fire Revision:|r ",
    ["info_platform"] = "|cFF00FF00Server Plattform:|r ",
    ["info_online"] = "|cFF00FF00Spelare Online:|r ",
    ["info_maxonline"] = "|cFF00FF00Maximum Online:|r ",
    ["info_uptime"] = "|cFF00FF00Uptid:|r ",
  --[[Other]]
    ["slashcmds"] = { "/trinityadmin", "/ta" },
    ["lang"] = "Svenska",
    ["realm"] = "|cFF00FF00Realm:|r "..GetCVar("realmName"), --do not change this line!
    ["char"] = "|cFF00FF00Char:|r "..UnitName("player"), --do not change this line!
    ["guid"] = "|cFF00FF00Guid:|r ",
    ["tickets"] = "|cFF00FF00Tickets:|r ",
    ["selectionerror1"] = "Var vänlig välj endast dig själv, en annan spelare eller inget!",
    ["selectionerror2"] = "Var vänlig välj endast dig själv eller inget!",
    ["selectionerror3"] = "Var vänlig välj endast en annan spelare!",
    ["selectionerror4"] = "Var vänlig välj endast en NPC!",
    ["searchResults"] = "|cFF00FF00Sök-resultat:|r ",

--[[GM tab]]
  --[[Name]]
     ["tabmenu_Main"] = "GM",
 --[[Tooltips]]
    ["tt_MainButton"] = "FireAdmins Huvudsida.",
    ["tt_DisplayAccountLevel"] = "Visa ditt account level",
    ["tt_GMOnButton"] = "Aktivera ditt GM-mode.",
    ["tt_GMOffButton"] = "Avaktivera ditt GM-mode.",
    ["tt_FlyOnButton"] = "Aktivera fly-mode för den valda karaktären.",
    ["tt_FlyOffButton"] = "Avaktivera fly-mode för den valda karaktären.",
    ["tt_HoverOnButton"] = "Aktivera ditt Hover-mode.",
    ["tt_HoverOffButton"] = "Avaktivera ditt Hover-mode.",
    ["tt_WhispOnButton"] = "Acceptera whispers från andra spelare.",
    ["tt_WhispOffButton"] = "Acceptera inte whispers från andra spelare.",
    ["tt_InvisOnButton"] = "Gör dig onsynlig.",
    ["tt_InvisOffButton"] = "Gör dig synlig.",
    ["tt_TaxiOnButton"] = "Visa alla taxi rutter för den valda spelaren. Detta fusk kommer att avaktiveras vid nästa utloggning.",
    ["tt_TaxiOffButton"] = "Avaktivera taxi fusket och ge tillbaka spelarens kännda taxi rutter.",
    ["tt_ShowMapsButton"] = "Avslöjar kartor för den valda karaktären.",
    ["tt_HideMapsButton"] = "Döljer kartor för den valda karaktären.",
    ["tt_SpeedSlider"] = "Öka eller minska hastigheten för den valda karaktären.",
    ["tt_ScaleSlider"] = "Öka eller minska storleken för den valda karaktären.",
    ["tt_instakill"] = "Om markerad, klicka på en fientlig varelse så dör den.",
    ["tt_ScreenButton"] = "Ta en screenshot.",
    ["tt_BankButton"] = "Visa din bank.",
    ["tt_Dismount"] = "Kliver av ditt mount.",
    ["tt_SetJail_A_Button"] = "Anger platsen för Alliance fängelse till din nuvarande position.",
    ["tt_SetJail_H_Button"] = "Anger platsen för Hordes fängelse till din nuvarande position.",
    ["tt_N"] = "Navigera Norr",
    ["tt_S"] = "Navigera Söder",
    ["tt_E"] = "Navigera Öst",
    ["tt_W"] = "Navigera Väster",
    ["tt_chatonbutton"] = "Sätt GM chatt PÅ"      , 
    ["tt_chatoffbutton"] = "Sätt GM chatt AV"      , 
    ["tt_waterwalkonbutton"] = "Sätt Waterwalk PÅ för den valda varelsen"  , 
    ["tt_watewrwalkoffbutton"] = "Sätt Waterwalk AV för den valda varelsen", 
    ["tt_accountlockonbutton"] = "Lås ditt account",  
    ["tt_accountlockoffbutton"] = "Lås upp ditt account",
    ["tt_DisplayAccountLvl"] = "Visa ditt account level.",
  --[[Control Labels]]
    ["ma_OffButton"] = "Av",
    ["ma_displaylevelbutton"] = "Visa account level",
    ["ma_GMOnButton"] = "GM-mode på",
    ["ma_FlyOnButton"] = "Fly-mode på",
    ["ma_HoverOnButton"] = "Hover-mode på",
    ["ma_WhisperOnButton"] = "Whisper på",
    ["ma_InvisOnButton"] = "Osynlighet på",
    ["ma_TaxiOnButton"] = "Taxifusk på",    
    ["ma_ShowMapsButton"] = "Visa Kartor",
    ["ma_HideMapsButton"] = "Dölj Kartor",
    ["ma_instakill"] = "Omedelbart döda fientliga varelser",
    ["ma_ScreenshotButton"] = "Screenshot",
    ["ma_BankButton"] = "Bank",
    ["ma_DismountButton"] = "Kliv av Mount",
    ["ma_SetJail_A_Button"] = "Sätt Fängelse A",
    ["ma_SetJail_H_Button"] = "Sätt Fängelse H",
    ["gridnavigator"] = "Grid-Navigator",
    ["N"] = "N", --Abbreviation for North
    ["S"] = "S", --Abbreviation for South
    ["E"] = "E", --Abbreviation for East
    ["W"] = "W", --Abbreviation for West
    ["ma_chatbutton"] = "GM Chatt På",
    ["ma_mapsbutton"] = "Visa Alla Kartor",
    ["ma_waterwalkbutton"] = "Waterwalk På",
    ["ma_accountlockbutton"] = "Lås Account",
  --[[Other]]

--[[Char Tab]]
  --[[Name]]
    ["tabmenu_Char"] = "Char",
    ["tt_CharButton"] = "Öppna ett fönster med karaktärspecifika funktioner.",
  --[[Tooltips]]
    ["tt_RotateLeft"] = "Rotera vänster.",
    ["tt_RotateRight"] = "Rotate right.",
    ["tt_killbutton"] = "Dödar den valda varelsen/spelaren",
    ["tt_reviveplayer"] = "Återlivar den valda spelaren",
    ["tt_saveplayer"] = "Sparar den valda spelarens karaktär",
    ["tt_KickButton"] = "Sparkar ut den valda spelaren från servern.",
    ["tt_CooldownButton"] = "Tar bort alla spell cooldowns för den valda karaktären.",
    ["tt_GUIDButton"] = "Visar GUID för den valda karaktären.",
    ["tt_PinfoButton"] = "Hämta information för den den valda SPELAREN.",
    ["tt_DistanceButton"] = "Hämta distans till den markerade varelsen.",
    ["tt_RecallButton"] = "Tar tillbaka den valda varelsen till den plats den var före senaste teleport.",
    ["tt_DemorphButton"] = "Tar bort alla morphs för den valda karaktären.",
    ["tt_ShowMapsCharButton"] = "Avslöjar kartor för den valda karaktären.",
    ["tt_HideMapsCharButton"] = "Döljer kartor för den valda karaktären.",
    ["tt_learnlangbutton"] = "Lär valt/valda språk",
    ["tt_modifybutton"] = "Ändra valda attribut till angett belopp",
    ["tt_resetbutton"] = "Återställ det valda attributet",
  --[[Control Labels]]
    ["ma_KillButton"] = "Döda",
    ["ma_ReviveButton"] = "Återliva",
    ["ma_SaveButton"] = "Spara",
    ["ma_KickButton"] = "Sparka",
    ["ma_CooldownButton"] = "Cooldown",
    ["ma_GUIDButton"] = "Visa GUID",
    ["ma_PinfoButton"] = "SPELAR Info",
    ["ma_DistanceButton"] = "Distans",
    ["ma_RecallButton"] = "Ångra Tele",
    ["ma_DemorphButton"] = "Ta bort Morph",
    ["ma_ShowMapsCharButton"] = "Avslöja kartor",
    ["ma_HideMapsCharButton"] = "Dölj kartor",
    ["ma_LearnLangButton"] = "Alla språk",
    ["ma_Learn"] = "Lär",
    ["ma_Modify"] = "Ändra",
    ["ma_Reset"] = "Återställ",
  --[[Other]]
    ["ma_LevelUp"] = "Level upp",
    ["ma_LevelDown"] = "Level ner",
    ["ma_Money"] = "Pengar",
    ["ma_Energy"] = "Energi",
    ["ma_Rage"] = "Rage",
    ["ma_Mana"] = "Mana",
    ["ma_Healthpoints"] = "Healthpoints",
    ["ma_Talents"] = "Talents",
    ["ma_Stats"] = "Stats",
    ["ma_Spells"] = "Spells",
    ["ma_Honor"] = "Honor",
    ["ma_Level"] = "Level",
    ["ma_AllLang"] = "Alla Språk",
    -- languages
    ["Common"] = "Common",
    ["Orcish"] = "Orcish",
    ["Taurahe"] = "Taurahe",
    ["Darnassian"] = "Darnassian",
    ["Dwarvish"] = "Dwarvish",
    ["Thalassian"] = "Thalassian",
    ["Demonic"] = "Demonic",
    ["Draconic"] = "Draconic",
    ["Titan"] = "Titan",
    ["Kalimag"] = "Kalimag",
    ["Gnomish"] = "Gnomish",
    ["Troll"] = "Troll",
    ["Gutterspeak"] = "Gutterspeak",
    ["Draenei"] = "Draenei",
  
--[[Char2 Tab]]
  --[[Name]]
    ["tt_Char2Button"] = "Öppna ett fönster med karaktärspecifika funktioner.",
  --[[Tooltips]]
    ["tt_banbutton"] = "Parametrar= <account|ip|karaktär> $NamnEllerIp <-1|xxdyyhzzm> $anledning   [[Ban acct/IP & sparka. -1=permban, eller en text som 4d3h24m16s]]",
    ["tt_gonamebutton"] = "Parameter= $karaktärnamn  [[Teleporterar dig till den specifika karaktären]]",
    ["tt_createguildbutton"] = "Parametrar= $GuildLedarNamn $GuildNamn  [[Skapar en guild vid namn $GuildNamn, med $GuildLedarNamn som ledare]]",
    ["tt_teleaddbutton"] = "Parameter= $Namn  [[Lägger till en teleport position .tele kommando för din nuvarande position med namnet $Namn]]",
    ["tt_baninfobutton"] = "Parameter= <account|ip|karaktär>  [[Visa detaljerad information om ban för det specificerade account/ip/karaktären]]",
    ["tt_groupgobutton"] = "Parameter= $karaktärnamn   [[Teleporterar den specificerade karaktären och dennes grupp till din position]]",
    ["tt_guildinvitebutton"] = "Parametrar= $karaktärnamn $guildnamn   [[Lägger till $karaktärnamn till guilden $guildnamn]]",
    ["tt_teledelbutton"] = "Parameter= $telenamn  [[Tar bort positionen med namnet $telenamn från .tele positions listan]]",
    ["tt_banlistbutton"] = "Parametrar= <account|ip> $NamnEllerIp   [[Söker och visar spesifika bans som matchar parametrarna]]",
    ["tt_namegobutton"] = "Parameter= $karaktärnamn   [[Teleporterar den specificerade karaktären till din position]]",
    ["tt_guildrankbutton"] = "Parametrar= $karaktärnamn #ranknumber   [[Sätter den specificerade karaktären till den specificerade ranken till dennes guild.]]",
    ["tt_telegroupbutton"] = "Parameter= $telenamn  [[Teleporterar den **valda** karaktären och dennes grupp till .tele positionen med namnet $telenamn]]",
    ["tt_unbanbutton"] = "Parametrar= <account|ip|karaktär> $NamnEllerIp  [[Avbannar den specificerade acct/IP/karaktären]]",
    ["tt_guilddeletebutton"] = "Parameter= $guildnamn  [[Tar bort den specificerade Guilden]]",
    ["tt_guilduninvitebutton"] = "Parameter= $karaktärnamn  [[Sparkar ut den specificerade karaktären ur dennes guild]]",
    ["tt_telenamebutton"] = "Parametrar= $karaktärnamn $telenamn  [[Teleporterar $karaktärnamn till $telenamn]]",
    ["tt_mutebutton"] = "Parametrar= $karaktärnamn #minuter  [[Inaktiverar chatt för $karaktärnamns account i #minuter]]",
    ["tt_charmorphbutton"] = "Parametrar = #VisningsID [[Skriv VisningsID't för den morph du vill applicera]]", 
    ["tt_charaurabutton"] = "Parametrar = #AuraID [[Skriv AuraID't för den aura du vill applicera]]",
    ["tt_charunaurabutton"] = "Parametrar = #AuraID [[Skriv AuraID't för den aura du vill ta bort]]",
    ["tt_JailAButton"] = "Parameter= $karaktärnamn [[Skickar karaktären vars namn visas i denna ruta till Alliance fängelse]]",
    ["tt_JailHButton"] = "Parameter= $karaktärnamn [[Skickar karaktären vars namn visas i denna ruta till Hordes fängelse]]",
    ["tt_UnJailButton"] = "Parameter= $karaktärnamn [[Tar ut den karaktär vars namn visas i denna ruta ur fängelset.]]",
    ["tt_UnMuteButton"] = "Tar bort mute från $player.",
    ["tt_QuestAddButton"] = "Lägger till #questid för **vald** spelare.",
    ["tt_QuestCompleteButton"] = "Markerar #questid som klar för **vald** spelare.",
    ["tt_QuestRemoveButton"] = "Tar bort #questid för **vald** spelare.",
    ["tt_DamageButton"] = "Parameter= #antal skada att applicera till **vald** varelse/spelare.",
    ["tt_HideAreaButton"] = "Döljer #areaid för **vald** spelare.",
    ["tt_ShowAreaButton"] = "Avslöjar #areaid för **vald** spelare.",
    ["tt_HonorAddButton"] = "Lägger till #honorpoints för **vald** spelare.",
    ["tt_HonorUpdateButton"] = "Ingen parameter behövs. Sparar Honor för **vald** spelare.",
  --[[Control Labels]]
    ["ma_parameter"] = "Parametrar",
    ["ma_ParameterizedCommands"] ="Parametriserade Kommandon",
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
    ["ma_guilddeletebutton"] = "G Remove",
    ["ma_guilduninvitebutton"] = "G Uninvite",
    ["ma_telenamebutton"] = "TeleName",
    ["ma_mutebutton"] = "Mute",
    ["ma_Aura"] = "Aura",
    ["ma_UnAura"] = "HävAura",
    ["ma_Morph"] = "Morph",
    ["ma_JailAButton"] = "Fängelse (A)",
    ["ma_JailHButton"] = "Fängelse (H)",
    ["ma_UnJailButton"] = "HävFängelse",
    ["ma_UnMuteButton"] = "HävMute",
    ["ma_QuestAddButton"] = "QuestAdd",
    ["ma_QuestCompleteButton"] = "QuestCompl",
    ["ma_QuestRemoveButton"] = "QuestRem",
    ["ma_DamageButton"] = "Skada",
    ["ma_HideAreaButton"] = "DöljArea",
    ["ma_ShowAreaButton"] = "AvslöjaArea",
    ["ma_HonorAddButton"] = "HonorAdd",
    ["ma_HonorUpdateButton"] = "HonorUpdt",
  --[[Other]]



--[[NPC Tab]]
  --[[Name]]
    ["tabmenu_NPC"] = "NPC",
    ["tt_NpcButton"] = "Öppna ett fönster med npc relaterade funktioner",
  --[[Tooltips]]
    ["tt_NPCRotateLeft"] = "Rotera vänster",
    ["tt_NPCRotateRight"] = "Rotera höger",
    ["tt_NPCKillButton"] = "Dödar det valda målet",
    ["tt_npcrespawn"] = "Återlivar den valda varelsen, om inget annat är valt, alla varelser i närheten",
    ["tt_NPCDistanceButton"] = "Visar avstånd till den valda varelsen.",
    ["tt_WayShow1"] = "Visa vägmarkeringar för den valda varelsen.",
    ["tt_NPCGUIDButton"] = "Visar GUID'et för den valda varelsen.",
    ["tt_NPCInfoButton"] = "Visa information för den valda varelsen.",
    ["tt_NPCDemorph"] = "Demorphar den valda NPC'n",
    ["tt_WayShow0"] = "Slutar visa vägmarkeringar för den valda varelsen.",
    ["tt_MoveStackButton"] = "Visar rörelsebana för den valda karaktären.",
    ["tt_NPCFreezeButton"] = "Slutar rörelse för den valda NPC'n, sparar vägmarkeringar",
    ["tt_NPCFreezeDelButton"] = "Slutar rörelse för den valda NPC'n, sparar INTE vägmarkeringar",
    ["tt_WayMAdd"] = "Lägg till en vägmarkering för den valda varelsens redan existerande rörelsebana",
    ["tt_NPCUnFreeze_RandomButton"] = "Tillåter slumpmässiga rörelser för den valda NPC'n.",
    ["tt_NPCUnFreeze_WayButton"] = "Tillåter vägmarkerings rörelser för den valda NPC'n.",
    ["tt_NPCMove"] = "Flytta den valda varelsen till din position",
    ["tt_WayModifyDel"] = "Tar bort den valda vägmarkeringen från varelsers existerande rörelsebana",
    ["tt_WayEndAdd"] = "Lägger till en vägmarkering till slutet av den redan existerande rörelsebanan",
    ["tt_NPCAddWay"] = "Lägger till en vägmarkering till rörelsebanan. Varelse GUID måste vara i lådan under",
    ["tt_NPCAdd_WayShowOn"] = "Visar vägmarkeringar för den valda varelsen",
    ["tt_NPCDel"] = "Tar bort den valda varelsen",
    ["tt_getguid"] = "Hämtar den valda varelsens GUID och ID",
    ["tt_NPCAdd"] = "Lägger till en kopia av denna NPC'n vid din nuvarande position.",
    ["tt_NPCGo"] = "Teleporterar dig till NPC'n i specificerad GUID lådan",
    ["tt_NPCMorph"] = "Parametrar = #VisningsID [[Skriv VisningsID't för den morphen du vill applicera]]",
    ["tt_NPCSay"] = "Gör så den valda npc'n säger [parametrar]",
    ["tt_NPCYell"] = "Gör så den valda npc'n skriker [parametrar]",
    ["tt_NPCAura"] = "Parametrar = #AuraID [[Skriv AuraID't för den aura du vill applicera]]",
    ["tt_NPCUnaura"] = "Parametrar = #AuraID [[Skriv AuraID't för den aura du vill ta bort]]",
    ["tt_PlayEmote"] = "Gör ett uttryck från listan till vänster",
    ["tt_GPSButton"] = "Visa kordinater för den valda karaktären.",
  --[[Control Labels]]
    ["Morph"] = "Morph",
    ["ma_NPCKillButton"] = "Döda",
    ["ma_Respawn"] = "Återliva",
    ["ma_NPCDistanceButton"] = "Distans",
    ["ma_WayShow1"] = "VägmVisaPå",
    ["ma_NPCGUIDButton"] = "Visa GUID",
    ["ma_NPCInfoButton"] = "NPC Info",
    ["ma_NPCDemorph"] = "Demorph",
    ["ma_WayShow0"] = "VägmVisaAv",
    ["ma_MoveStackButton"] = "Visa Vägbana",
    ["ma_NPCFreezeButton"] = "NPCStop",
    ["ma_WayAllDel"] = "NPCVägDel",
    ["ma_WayMAdd"] = "VägAdd",
    ["ma_NPCUnFreeze_RandomButton"] = "Går slump",
    ["ma_NPCUnFreeze_WayButton"] = "Går vägbana",
    ["ma_NPCMove"] = "NPC Flytta",
    ["ma_WayMDel"] = "VägmDel",
    ["ma_WayEndAdd"] = "VägmSlut",
    ["[WayAdd]"] = "[VägTillägg]",
    ["[WayShow]"] = "[VisaVäg]",
    ["ma_NPCDel"] = "NPC Del",
    ["ma_getguid"] = "Hämta GUID",
    ["ma_NPCAdd"] = "NPC Add",
    ["ma_NPCGo"] = "NPC Go",
    ["ma_NPCMorph"] = "Morph",
    ["ma_NPCSay"] = "NPC say",
    ["ma_NPCYell"] = "NPC yell",
    ["ma_NPCAura"] = "NPC Aura",
    ["ma_NPCUnAura"] = "NPC Unaura",
    ["ma_ParameterBox"] = "Parametrar",
    ["ma_PlayEmote"] = "Gör uttryck",
  --[[Other]]



--[[GObjects Tab]]
  --[[Name]]
    ["tabmenu_GO"] = "GOB",
    ["tt_GOButton"] = "Öppna ett fönster med GObjekt funktioner.",
  --[[Tooltips]]
    ["tt_ObjGo"] = "Gå till det valda objektet",
    ["tt_ObjAdd"] = "Lägg till en kopia av det markerade objectet till din position och riktning",
    ["tt_ObjMove"] = "Flytta det markerade objektet till din position",
    ["tt_ObjTurn"] = "Vrider det markerade objektet till din riktning",
    ["tt_ObjDel"] = "Tar bort det markerade objektet",
    ["tt_ObjNear"] = "Visar information om objekt nära dig",
    ["tt_ObjTarget"] = "Markerar det närmaste objektet",
  --[[Control Labels]]
    ["ma_OBJGo"] = "Obj Gå",
    ["ma_OBJAdd"] = "Obj Lägg till",
    ["ma_OBJMove"] = "Obj Flytta",
    ["ma_OBJTurn"] = "Obj Vrid",
    ["ma_OBJDel"] = "Obj Ta bort",
    ["ma_OBJNear"] = "Obj Nära",
    ["ma_OBJTarget"] = "Obj Markerad",
  --[[Other]]
--[[Tele Tab]]
  --[[Name]]
    ["tabmenu_Tele"] = "Tele",
    ["tt_TeleButton"] = "Öppna ett fönster med teleport funktioner.",
  --[[Tooltips]]
  --[[Control Labels]]
    ["Zone"] = "|cFF00FF00Zon:|r ",
  --[[Other]]
    ["ma_NoZones"] = "Inga Zoner!",
    ["ma_NoSubZones"] = "Inga underzoner!",



--[[Tickets Tab]]
  --[[Name]]
    ["tabmenu_Ticket"] = "Tickets",
    ["tt_TicketButton"] = "Öppna ett fönster som visar alla tickets och låter dig administrera dem.",
  --[[Tooltips]]
  --[[Control Labels]]
    ["ma_LoadTicketsButton"] = "Uppdatera",
    ["ma_GetCharTicketButton"] = "Summon",
    ["ma_GoCharTicketButton"] = "Go Player",
    ["ma_AnswerButton"] = "Mail",
    ["ma_DeleteButton"] = "Stäng",
    ["ma_TicketCount"] = "Tickets: ",
    ["ma_TicketsNoNew"] = "Inga nya tickets.",
    ["ma_TicketsNewNumber"] = "Du har %s nya tickets!",
    ["ma_TicketsGoLast"] = "Gå till senaste ticketens skapare (%s).",
    ["ma_TicketsGetLast"] = "Teleportera %s till dig.",
    ["ma_TicketsInfoPlayer"] = "Spelare: ",
    ["ma_TicketsInfoStatus"] = "Status: ",
    ["ma_TicketsInfoAccount"] = "Account: ",
    ["ma_TicketsInfoAccLevel"] = "Account-Level: ",
    ["ma_TicketsInfoLastIP"] = "Senaste IP: ",
    ["ma_TicketsInfoPlayedTime"] = "Speltid: ",
    ["ma_TicketsInfoLevel"] = "Level: ",
    ["ma_TicketsInfoMoney"] = "Pengar: ",
    ["ma_TicketsInfoLatency"] = "Ping: ",
    ["ma_TicketsNoInfo"] = "Ingen information tillgänglig",
    ["ma_TicketsNotLoaded"] = "Inga tickets laddade...",
    ["ma_TicketsNoTickets"] = "Inga tickets tillgängliga!",
    ["ma_TicketTicketLoaded"] = "Laddade Ticket-Nr: %s\n\nSpelar Information\n\n",
    ["ma_Reload"] = "Ladda om",
    ["ma_LoadMore"] = "Ladda mer...",
    ["tt_TicketOn"] = "Rapportera nya tickets.",
    ["tt_TicketOff"] = "Rapportera inte nya tickets.",
  --[[Other]]



--[[Misc Tab]]
  --[[Name]]
    ["tabmenu_Misc"] = "Misc",
    ["tt_MiscButton"] = "Öppna ett fönster med generella funktioner.",
  --[[Tooltips]]
    ["tt_FrmTrSlider"] = "Ändra transparans på fönster.",
    ["tt_BtnTrSlider"] = "Ändra transparans på knappar.",
  --[[Control Labels]]
    ["cmd_toggle"] = "Öppna huvudfönster",
    ["cmd_transparency"] = "Använd den förinställda transparansen (0.5 eller 1.0)",
    ["cmd_tooltip"] = "Ställer in om användartipsen syns eller inte",
  --[[Other]]
    ["ma_WeatherFine"] = "Klart",
    ["ma_WeatherFog"] = "Dimma",
    ["ma_WeatherRain"] = "Regn",
    ["ma_WeatherSnow"] = "Snö",
    ["ma_WeatherSand"] = "Sand",



--[[Server Tab]]
    ["tabmenu_Server"] = "Server",
    ["tt_ServerButton"] = "Visa server information och funktioner som gäller servern.",
  --[[Tooltips]]
    ["tt_AnnounceButton"] = "Rapportera ett system meddelande.",
    ["tt_ShutdownButton"] = "Stäng av servern innom det antal sekunder från fältet, om inget står, stängs servern av direkt!",
  --[[Control Labels]]
    ["ma_AnnounceButton"] = "Rapportera",
    ["ma_ShutdownButton"] = "Stäng av!",
  --[[Other]]



--[[Log Tab]]
    ["tabmenu_Log"] = "Log",
    ["tt_LogButton"] = "Visa loggen för alla händelser gjorda med FireAdmin.",
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
    ["tabmenu_vendor"] = "Vendor",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]



--[[AhBot Tab]]
    ["tabmenu_ahbot"] = "AhBot",
  --[[Tooltips]]
  --[[Control Labels]]
  --[[Other]]
  

    
--[[Who Tab]]
    ["tabmenu_who"] = "Vem",
  --[[Tooltips]]
  --[[Control Labels]]
    ["ma_ShowWhoButton"] = "Uppdatera",
    ["ma_SummonWhoButton"] = "Summon",
    ["ma_GoCharWhoButton"] = "Gå Spelare",
    ["ma_AnswerWhoButton"] = "Mail",
    ["ma_DeleteWhoButton"] = "Sparka",
    ["ma_whisperbutton"] = "Whisper",
  --[[Other]]

    
    
--[[Pop UPs]]
   --[[General]]
   --[[ToolTips]]
    ["tt_ItemButton"] = "Öppnar ett popup fönster med funktionen att söka efter items och hantera dina favoriter.",
    ["tt_ItemSetButton"] = "Öppnar ett popup fönster med funktionen att söka efter itemsets och hantera dina favoriter.",
    ["tt_SpellButton"] = "Öppnar ett popup fönster med funktionen att söka efter spells och hantera dina favoriter.",
    ["tt_QuestButton"] = "Öppnar ett popup fönster med funktionen att söka efter quests och hantera dina favoriter.",
    ["tt_CreatureButton"] = "Öppnar ett popup fönster med funktionen att söka efter varelser och hantera dina favoriter.",
    ["tt_ObjectButton"] = "Öppnar ett popup fönster med funktionen att söka efter objekt och hantera dina favoriter.",
    ["tt_SearchDefault"] = "Now you can enter a keyword and start the search.",
    ["tt_SkillButton"] = "Öppnar ett popup fönster med funktionen att söka efter skills och hantera dina favoriter.",
  --[[Labels]]
    ["ma_ItemButton"] = "Item-sökning",
    ["ma_ItemSetButton"] = "ItemSet-sökning",
    ["ma_SpellButton"] = "Spell-sökning",
    ["ma_QuestButton"] = "Quest-sökning",
    ["ma_CreatureButton"] = "Varelse-sökning",
    ["ma_ObjectButton"] = "Objekt-sökning",
    ["ma_TeleSearchButton"] = "Teleport-sökning",
    ["ma_MailRecipient"] = "Recipient",
    ["ma_Mail"] = "Skicka ett Brev",
    ["ma_Send"] = "Skicka",
    ["ma_MailSubject"] = "Ämne",
    ["ma_MailYourMsg"] = "Ditt meddelande här!",
    ["ma_SearchButton"] = "Sök...",
    ["ma_ResetButton"] = "Återställ",
    ["ma_FavAdd"] = "Lägg till markerade",
    ["ma_FavRemove"] = "Ta bort markerade",
    ["ma_SelectAllButton"] = "Markera alla",
    ["ma_DeselectAllButton"] = "Avmarkera alla",
    ["ma_MailBytesLeft"] = "Bytes kvar: ",
    ["ma_SkillButton"] = "Skill-sökning",
    ["ma_SkillVar1Button"] = "Skill",
    ["ma_SkillVar2Button"] = "Max Skill",
    ["ma_ItemVar1Button"] = "Antal",
    ["ma_ObjectVar1Button"] = "Loot Mall",
    ["ma_ObjectVar2Button"] = "Spawn Tid",
    ["ma_NoFavorites"] = "Det finns inga sparade favoriter!",
    ["favoriteResults"] = "|cFF00FF00Favoriter:|r ",
  
  
  
--[[Deprecated, but may be used again.]]  
    ["ma_LearnAllButton"] = "Alla spells",
    ["ma_LearnCraftsButton"] = "Alla yrken och recept",
    ["ma_LearnGMButton"] = "Förbestämda GM spells",
    ["ma_LearnClassButton"] = "Alla class-spells",
    ["ma_GPSButton"] = "GPS",
    ["ma_Online"] = "Online",
    ["ma_Offline"] = "Offline",



--[[Linkifier]]
    ["lfer_Spawn"] = "Spawn",
    ["lfer_List"] = "Lista",
	["lfer_Reload"] = "Återladda",
    ["lfer_Goto"] = "Gåtill",
    ["lfer_Move"] = "Flytta",
    ["lfer_Turn"] = "Vrid",
    ["lfer_Delete"] = "Ta bort",
    ["lfer_Teleport"] = "Teleportera",
    ["lfer_Morph"] = "Morph",
    ["lfer_Add"] = "Lägg till",
    ["lfer_Remove"] = "Ta bort",
    ["lfer_Learn"] = "Lär",
    ["lfer_Unlearn"] = "Glömm",
    ["lfer_Error"] = "Error sök-texten matchar men skedde ett error eller kan ej hitta typ",
    
--[[New additions]]
    ["parameters"]= "Parameter(s):",
    ["gmingame"] = "GMs InGame",
    ["gmlist"] = "GM List",
    ["petcreate"] = "Pet Create",
    ["petlearn"] = "Pet Learn",
    ["petunlearn"] = "Pet UnLearn",
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
    ["tt_gmingamebutton"] = "Shows GMs who are logged in.",
    ["tt_gmlistbutton"] = "Shows the GM accounts on this server",
    ["tt_petcreatebutton"] = "Makes the selected ANIMAL your pet.",
    ["tt_petlearnbutton"] = "Teaches your pet spell [[Parameter: #SPELLID]]",
    ["tt_petunlearnbutton"] = "Un-Teaches your pet spell [[Parameter: #SPELLID]]",
    ["tt_pettpbutton"] = "Modifies pet's training points [[Parameter: #points]]",
    ["tt_lookuptaxibutton"] = "Lookup a TaxiNode [[Parameter: $Areanamepart]]",
    ["tt_gotaxinodebutton"] = "Teleports to given TaxiNode [[Parameter: #taxinode]]",
    ["tt_gotriggerbutton"] = "Teleports to given area trigger [[Parameter: #trigger_id]]",
    ["tt_goxybutton"] = "Teleports to given coordinates at ground/water level on MapID. If MapID omitted, current map [[Parameters: #x #y [#mapid]]]",
    ["tt_goxyzbutton"] = "Teleports to given coordinates at #z level on MapID. If MapID omitted, current map [[Parameters: #x #y #z [#mapid]]]",
    ["tt_gozonexybutton"] = "Teleports to given coordinates at ground/water level in ZoneID. If ZoneID omitted, current zone [[Parameters: #x #y [#zoneid]]]",
    ["tt_lookupzonebutton"] = "Lookup a Zone. [[Parameters: $Areanamepart]]",
    ["tt_castbutton"] = "Cast a spell. [[Parameters: #SpellID]]",
    ["tt_castbackbutton"] = "Selected creature will cast spell [SpellID] at YOU. [[Parameters: #SpellID]]",
    ["tt_castdistbutton"] = "You cast a spell [SpellID] at distance [#Dist]. [[Parameters: #SpellID #Dist]]",
    ["tt_castselfbutton"] = "Selected creature casts spell [SpellID] at itself. [[Parameters: #SpellID]]",
    ["tt_casttargetbutton"] = "Selected creature casts spell [SpellID] at it's target. [[Parameters: #SpellID]]",
    ["tt_gmclearbutton"] = "Clears the parameter box.",
    ["tt_listitembutton"] = "Lists all occurences of [#itemID]. [[Parameters: #ItemID]]",
    ["tt_acctcreatebutton"] = "Creates a player account [[Parameters: $accountname $password]]",
    ["tt_acctdeletebutton"] = "Deletes a player account and all characters [[Parameters: $accountname]]",
    ["tt_acctaddonbutton"] = "Sets $account to use #addon(0=WoW, 1=TBC, 2=WotLK) [[Parameters: $accountname #addon]]",
    ["tt_acctgmlvlbutton"] = "Sets $account to #gmlevel (0=Player, 1=Helper, 2=Assistant, 3=GM, 4=Admin) [[Parameters: $accountname #gmlevel]]",
    ["tt_acctpasswdbutton"] = "Sets $account $password [[Parameters: $accountname $password $password]]",
    ["tt_gmnotifybutton"] = "Sends message $message to all online GMs [[Parameters: $message]]"
  }
end
