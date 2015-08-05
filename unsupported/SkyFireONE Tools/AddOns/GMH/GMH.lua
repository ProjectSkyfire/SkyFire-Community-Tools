--**********************************************************************
--$Author: Bootz $
--SOriginal GMH Authors ssargon, Maven $
--$Date: 2012-09-02 01:01:44 (Sun, 09 Sept 2012) $
--$Revision: 0.0.1 $
--**********************************************************************

chanvar = "GUILD";

function OpenMain()
    if( view == 1 ) then
        FullForm:Show();
    elseif( view == 2 ) then
        MinipForm:Show();
    elseif( view == 3 ) then
        MiniForm:Show();
    else
        FullForm:Show();
    end
end

function ToggleAddon()
if( addonopen == 1 ) then
ItemFormSearch:Hide();
FullForm:Hide();
MinipForm:Hide();
MiniForm:Hide();
Skill2Form:Hide();
CommForm:Hide();
ItemForm:Hide();
MiscForm:Hide();
ObjectForm:Hide();
TicketTracker:Hide();
TicketView:Hide();
TeleForm:Hide();
ProfessionsForm:Hide();
RidingForm:Hide();
SkillForm:Hide();
SpellForm:Hide();
BanForm:Hide();
NPCForm:Hide();
AnnounceForm:Hide();
PlayerForm:Hide();
ViewForm:Hide();
WepskForm:Hide();
OverridesForm:Hide();
ModifyForm:Hide();
QuickItemForm:Hide();
WaypointsForm:Hide();
PlaySound("INTERFACESOUND_CHARWINDOWCLOSE");
addonopen = 0;
else
OpenMain();
PlaySound("INTERFACESOUND_CHARWINDOWOPEN");
addonopen = 1;
end
end

function outSAY(text)
 --[[SendChatMessage("."..text, "GUILD", nil,nil);--functional type2
 SendChatMessage(""..text, "GUILD", nil,nil);--test type2
 SendChatMessage(""..text, "SAY", nil,nil);--test type2noguild
 --SendChatMessage(text, "GUILD", nil,nil);--old]]
SendChatMessage(""..text, chanvar, nil, nil);
end

function GMHelperOnLoad()
 this:RegisterForDrag("RightButton");
--[[JoinChannelByName("gm_sync_channel", "lhjf448gfdw279hgfw6");]]
--JoinChannelByName("gm_sync_channel", ChatFrame1:GetID());
end

function GMHelper_Loaded()
UIErrorsFrame:AddMessage("SkyFireONE GM Helper v0.0.1 loaded!", 0.0, 1.0, 0.0, 53, 2);
PSoundF("Interface\\Addons\\GMH\\Sounds\\Omega.wav");
OpenMain();
addonopen = 1;
end

function PSoundF(file)
    PlaySoundFile(file);
end

function ShowGMHMinimap()
GameTooltip:SetOwner(this, "ANCHOR_LEFT");
GameTooltip:AddLine( "|cFF00FF00SkyFireONE GM Helper|r" );
GameTooltip:AddLine( "|cFF00FFCCLeft click to show/hide|r" );
GameTooltip:AddLine( "|cFFFF0000Right click to drag this|r" );
GameTooltip:Show();
end

-- Binding Variables
BINDING_HEADER_GMHelper = "SkyFireONE GM Helper";
BINDING_NAME_TOGGLEADDON = "Toggles GM Helper";
-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- AnnounceScript
function SetAnnouncementChecked()
if (AnnounceCheck:GetChecked() or ScreenCheck:GetChecked() or GMAnnounceCheck:GetChecked() ) then
Announce();
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end
end

function FirstAnnounce()
if (AnnounceSetCheck:GetChecked() or ScreenAnnounceSetCheck:GetChecked() or GMAnnounceSetCheck:GetChecked() ) then
if AnnounceSetCheck:GetChecked() then
firstannounce=".announce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("1st Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);
end
if ScreenAnnounceSetCheck:GetChecked() then
firstannounce=".wannounce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("1st Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if GMAnnounceSetCheck:GetChecked() then
firstannounce=".gmannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("1st Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end
end

function SecondAnnounce()
if (AnnounceSetCheck:GetChecked() or ScreenAnnounceSetCheck:GetChecked() or GMAnnounceSetCheck:GetChecked() ) then
if AnnounceSetCheck:GetChecked() then
secondannounce=".announce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("2nd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if ScreenAnnounceSetCheck:GetChecked() then
secondannounce=".wannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("2nd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
if GMAnnounceSetCheck:GetChecked() then
secondannounce=".gmannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("2nd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end  
end

function ThirdAnnounce()
if (AnnounceSetCheck:GetChecked() or ScreenAnnounceSetCheck:GetChecked() or GMAnnounceSetCheck:GetChecked() ) then
if AnnounceSetCheck:GetChecked() then
thirdannounce=".announce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("3rd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if ScreenAnnounceSetCheck:GetChecked() then
thirdannounce=".wannounce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("3rd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if GMAnnounceSetCheck:GetChecked() then
thirdannounce=".gmannounce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("3rd Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end     
end

function FourthAnnounce()
if (AnnounceSetCheck:GetChecked() or ScreenAnnounceSetCheck:GetChecked() or GMAnnounceSetCheck:GetChecked() ) then
if AnnounceSetCheck:GetChecked() then
forthannounce=".announce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("4th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if ScreenAnnounceSetCheck:GetChecked() then
forthannounce=".wannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("4th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
if GMAnnounceSetCheck:GetChecked() then
forthannounce=".gmannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("4th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end     
end

function FifthAnnounce()
if (AnnounceSetCheck:GetChecked() or ScreenAnnounceSetCheck:GetChecked() or GMAnnounceSetCheck:GetChecked() ) then
if AnnounceSetCheck:GetChecked() then
fifthannounce=".announce "..SetAnnounceText:GetText();
UIErrorsFrame:AddMessage("5th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);    
end
if ScreenAnnounceSetCheck:GetChecked() then
fifthannounce=".wannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("5th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
if GMAnnounceSetCheck:GetChecked() then
fifthannounce=".gmannounce "..SetAnnounceText:GetText(); 
UIErrorsFrame:AddMessage("5th Announcement Saved!", 0.0, 1.0, 0.0, 53, 2);   
end
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end     
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Ban Script

function BanPlayer()
result=".ban character "..CharName:GetText().." "..BanLength:GetText().." "..BanReason:GetText();   
outSAY(result);
end

function UnBanPlayer()
result=".unban character "..CharName:GetText();   
outSAY(result);
end

function AddIPBan()
result=".ban ip "..IPAddress1:GetText().." "..Duration1:GetText();   
outSAY(result);
end

function DelIPBan()
result=".unban ip "..IPAddress1:GetText();
outSAY(result);
end

function KickPlayer()
result=".kick "..CharName:GetText().." "..BanReason:GetText();    
outSAY(result);
end

function ParPlayer()
result=".freeze";     
outSAY(result);
end

function UnParPlayer()
result=".unfreeze";     
outSAY(result);
end

function PInfo()
result=".pinfo "..CharName:GetText(); -- this option does not work if you have TrinityAdmin enabled    
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BattlegroundScript

function BGStart()
    result=".debug bg"; -- arcemu is .battleground startbg
    outSAY(result);
end

function BGForceStart()
    result=".battleground forcestart";
    outSAY(result);
end

function BGInfo()
    result=".battleground bginfo";
    outSAY(result);
end

function BGLeave()
    result=".battleground leave"
    outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CommScript

function AnnounceChecked()
if (AnnounceCheck:GetChecked() or ScreenCheck:GetChecked() or GMAnnounceCheck:GetChecked() ) then
Announce();
else
UIErrorsFrame:AddMessage("Please choose where to Announce!", 1.0, 0.0, 0.0, 53, 2);
end
end


function Announce()
if ( AnnounceCheck:GetChecked() ) then--Announce
	result=".announce "..AnnounceText:GetText();
	outSAY(result);
else
    result="";
	outSAY(result);
end
if ( ScreenCheck:GetChecked() ) then--Announce
	result=".nameannounce "..AnnounceText:GetText();
	outSAY(result);
else
    result="";
	outSAY(result);
end
if ( GMAnnounceCheck:GetChecked() ) then--Announce
	result=".gmnameannounce "..AnnounceText:GetText();
	outSAY(result);
else
    result="";
	outSAY(result);
end
end

function WhisperOn()
result=".whispers on;"
outSAY(result);
end

function WhisperOff()
result=".whispers off";
outSAY(result);
end

function SayFirstAnnounce()
outSAY(firstannounce);
end

function SaySecondAnnounce()
outSAY(secondannounce);
end

function SayThirdAnnounce()
outSAY(thirdannounce);
end

function SayForthAnnounce()
outSAY(forthannounce);
end

function SayFifthAnnounce()
outSAY(fifthannounce);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ItemScript

function RemoveItem()
result=".removeitem "..ItemNumber:GetText();    
outSAY(result);
end

function AddItem()
if ItemNumber:GetText() == "" then
UIErrorsFrame:AddMessage("Specify an Item Number or Name!", 1.0, 0.0, 0.0, 53, 2);
else
result=".additem "..ItemNumber:GetText().." "..ItemQuantity1:GetText();    
outSAY(result);
end
end

function AddItemSet()
result=".additemset "..ItemSetNumber:GetText();    
outSAY(result);
end

function SearchItem()
result=".lookup item "..ItemNumber:GetText();    
outSAY(result);
end

function AddMoney()
IntGold = Gold:GetNumber();
IntSilver = Silver:GetNumber();
IntCopper = Copper:GetNumber();
-- 214748g 35s 47c
--[[while IntGold >= 214748 do
	 IntGold = IntGold-100;
end
while IntSilver >= 100 do
	 IntGold = IntGold-100;
end
while IntGold >= 100 do
	 IntGold = IntGold-100;
end]]
result = ".mod money " ..IntGold*10000+IntSilver*100+IntCopper;
outSAY(result);
end

---------------------------------------------
--          End of Advance Command         --
---------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ItemSearchScript

---------------------------------------------
-- Everything below was done by Gondrup and added by Mukele. Thank you Mukele! - Maven --
---------------------------------------------

-- Below vars are used throughout the item search
item_search_results = {}
itemName = {}

itemNameReal = {}
itemLink = {}
itemRarity = {}
itemLevel = {}
itemMinLevel = {}
itemType = {}
itemSubType = {}
itemStackCount = {}
itemEquipLoc = {}
itemTexture = {}

i = 1;

-- Item colour based on rarity
function SetQuality(quality)
    if (quality == 0) then
        return "|c00A9A9A9";
    elseif (quality == 1) then
        return "|c00FFFFFF";
    elseif (quality == 2) then
        return "|c007CFC00";
    elseif (quality == 3) then
        return "|c004169E1";
    elseif (quality == 4) then
        return "|c009932CC";
    elseif (quality == 5) then
        return "|c00FF8C00";
    else
        return "|c00FFFFFF";
    end
end

-- Fired when a server message is sent to the client
function Chat_OnEvent(event, text)
	--Detects if you tried to advance a skill but didnt get it 
	if latestSkillID=="" and text=="Does not have skill line, adding." then
	elseif text=="Does not have skill line, adding." then
		outSAY(".character advancesk "..latestSkillID.." "..latestSkillLevel);
		latestSkillID="";
    elseif string.find(text, "Item") then
		-- If the detected string is an item result
        idlength, _, _, _ = string.find(text, ":");
        item_search_results[i] = string.sub(text, 6, idlength-1);  
        itemName[i] = text;
        ProcessItemSearch(item_search_results[i]);
        i = i + 1;
    -- Reset if its a new search
    elseif string.find(text, "Starting search of item ") then
        for i=1, 25 do
            getglobal("ItemFormSearchTexture"..i.."Texture"):SetTexture("Interface\\Icons\\INV_Misc_QuestionMark");
            getglobal("ItemFormSearchTexture"..i):Hide();
            getglobal("ItemFormSearchLabelItemID"..i):Hide();
            getglobal("ItemFormSearchButton"..i):Hide();
        end
        i = 1;
    end
end

-- Function to update each button when a result is recieved by the client
function ProcessItemSearch(itemid)
    getglobal("ItemFormSearchTexture"..i):Show();
    getglobal("ItemFormSearchLabelItemID"..i):Show();
    getglobal("ItemFormSearchButton"..i):Show();
    -- Update "number of results" text
    text = "Results Found: "..i;
    ItemFormSearchLabel2Label:SetText(text);
    if GetItemInfo(itemid) then
        itemNameReal[i], itemLink[i], itemRarity[i], itemLevel[i], itemMinLevel[i], itemType[i], itemSubType[i], itemStackCount[i], itemEquipLoc[i], itemTexture[i] = GetItemInfo(itemid);
        getglobal("ItemFormSearchLabelItemID"..i.."Label"):SetText(SetQuality(itemRarity[i])..itemNameReal[i]);
        getglobal("ItemFormSearchTexture"..i.."Texture"):SetTexture(itemTexture[i]);
    else
        getglobal("ItemFormSearchLabelItemID"..i.."Label"):SetText(itemName[i]);
        getglobal("ItemFormSearchTexture"..i.."Texture"):SetTexture("Interface\\Icons\\INV_Misc_QuestionMark");
    end
end

-- When a button is rolled over, show tooltip and update vars based on user cache
function ResultButton_OnEnter(button_number)
    GameTooltip:ClearLines();
    GameTooltip:SetOwner(this, "ANCHOR_RIGHT", -(this:GetWidth() / 2), 24);
    GameTooltip:SetHyperlink("item:"..item_search_results[button_number]..":0:0:0:0:0:0:0");
    if GetItemInfo(item_search_results[button_number]) then
        itemNameReal[button_number], itemLink[button_number], itemRarity[button_number], itemLevel[button_number], itemMinLevel[button_number], itemType[button_number], itemSubType[button_number], itemStackCount[button_number], itemEquipLoc[button_number], itemTexture[button_number] = GetItemInfo(item_search_results[button_number]);
        getglobal("ItemFormSearchLabelItemID"..button_number.."Label"):SetText(SetQuality(itemRarity[button_number])..itemNameReal[button_number]);
        getglobal("ItemFormSearchTexture"..button_number.."Texture"):SetTexture(itemTexture[button_number]);
	GameTooltip:AddLine("Item ID: "..item_search_results[button_number]);
	GameTooltip:AddLine("(click to add to inventory)");
    else
	GameTooltip:ClearLines();
	GameTooltip:AddLine("|c00B0E0E6"..itemName[button_number]);
	GameTooltip:AddLine("|c007CFC00- Now Cached -");
	GameTooltip:AddLine("|c007CFC00(roll over this again to get full info)");
	GameTooltip:AddLine("(click to add to inventory)");
    end
    GameTooltip:Show();
end

-- Hide the tooltip when mouse leaves a button
function ResultButton_OnLeave()
    GameTooltip:Hide();
end

-- When a button is clicked, add to inventory
function ResultButton_OnClick(button_number)
    text = ".additem "..item_search_results[button_number];
    outSAY(text);
end

---------------------------------------------
--            End of Item search           --
---------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MiscScript

function SInfo()
    result=".server info";
    outSAY(result);
end

function Invis()
if ( InvisCheck:GetChecked() ) then--invis
	result=".gm vis on";
	outSAY(result);
else
	result=".gm vis off";
	outSAY(result);
end
end 
function Invince()
    result=".gm on";
    outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--ModifyScript

 function ModSpeed()
	result=".modify aspeed "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModHP()
	result=".modify hp "..ModifyEditBox:GetText();
	outSAY(result);
end

--[[function ModManaRageEnergy()
localizedClass, englishClass = UnitClass("target");
if englishClass == nil or UnitIsPlayer("target")==false then
	localizedClass, englishClass = UnitClass("player");
end
--local UnitClass("player") = UnitClass("player")
	if englishClass == "DRUID" then
	result="modify mana "..ModifyEditBox:GetText();
	outSAY(result);
	elseif englishClass == "HUNTER" then
	result="modify mana "..ModifyEditBox:GetText();
	outSAY(result);
	elseif englishClass == "MAGE" then
	result="modify mana "..ModifyEditBox:GetText();
	outSAY(result);
	elseif englishClass == "PALADIN" then
	result="modify mana "..ModifyEditBox:GetText();
	outSAY(result);
	elseif englishClass == "PRIEST" then
	result="modify mana "..ModifyEditBox:GetText();
	outSAY(result);
	elseif englishClass == "ROGUE" then
	result="modify energy "..ModifyEditBox:GetText();
	outSAY(result);
	elseif englishClass == "SHAMAN" then
	result="modify mana "..ModifyEditBox:GetText();
	outSAY(result);
	elseif englishClass == "WARLOCK" then
	result="modify mana "..ModifyEditBox:GetText();
	outSAY(result);
	elseif englishClass == "WARRIOR" then
	result="modify rage "..ModifyEditBox:GetText();
	outSAY(result);
end
end]]

function ModMana()
	result=".modify mana "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModEnergy()
	result=".modify energy "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModRage()
	result=".modify rage "..ModifyEditBox:GetText();
	outSAY(result);
end

--[[function ModResistance()
	result=".modify holy "..ModifyEditBox:GetText();
	outSAY(result);
    result=".modify fire "..ModifyEditBox:GetText();
	outSAY(result);
    result=".modify nature "..ModifyEditBox:GetText();
	outSAY(result);
    result=".modify frost "..ModifyEditBox:GetText();
	outSAY(result);
    result=".modify shadow "..ModifyEditBox:GetText();
	outSAY(result);
    result=".modify arcane "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModArmor()
	result=".modify armor "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModDamage()
	result=".modify damage "..ModifyEditBox:GetText();
	outSAY(result);
end]]

function ModDisplay()
	result=".modify morph "..ModifyEditBox:GetText();
	outSAY(result);
end

function Demorph()
	result=".demorph"
	outSAY(result);
end

function ModSpeed()
	result=".modify aspeed "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModScale()
	result=".modify scale "..ModifyEditBox:GetText();
	outSAY(result);
end

--[[function ModSpirit()
	result=".modify spirit "..ModifyEditBox:GetText();
	outSAY(result);
end]]

function ModTP()
	result=".modify tp "..ModifyEditBox:GetText();
	outSAY(result);
end

function ModFaction()
result=".modify faction "..ModifyEditBox:GetText();
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- NPCScript

function AddItemVendor()
result=".npc additem "..NPCItemNumber:GetText();    
outSAY(result);
end

function RemoveItemVendor()
result=".npc delitem "..NPCItemNumber:GetText();    
outSAY(result);
end

function SpawnNPC()
result=".npc add "..NPCNumber:GetText();    
outSAY(result);
end

function DeleteNPCbyNumber()
result=".npc delete "..NPCNumber:GetText();    
outSAY(result);
end

function DeleteNPC()
result=".npc delete";    
outSAY(result);
end

function NPCCome()
    result=".npc move"..NPCNumber:GetText();
    outSAY(result);
end

-- function NPCPos()
--    result=".npc possess";
--    outSAY(result);
-- end

function NPCInfo()
result=".npc info";
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ObjectScript

function TargetObject()
result=".gobject target ";    
outSAY(result);
end

function ObjectInfo()
result=".gobject info "; 
outSAY(result);
end

function DeleteObject()
result=".gobject delete "..ObjectNumber:GetText();    
outSAY(result);
end

function PlaceObject()
if ObjectNumber:GetText() == "" then
UIErrorsFrame:AddMessage("Specify an Object Number!", 1.0, 0.0, 0.0, 53, 2);
else
PlaceObjectTrue();
end
end

function PlaceObjectTrue()
if NoSaveCheck:GetChecked() then
        result=".gobject addtemp "..ObjectNumber:GetText();
        outSAY(result)
    else
        result=".gobject add "..ObjectNumber:GetText();
        outSAY(result)
end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OverridesScript


--function CheatStatus()
--	result=".cheat status";
--	outSAY(result);
-- end

function CheatUpdate()
if ( FlyCheck:GetChecked() ) then--fly
	result=".gm fly on";
	outSAY(result);
else
	result=".gm fly off";
	outSAY(result);
end
if ( GodCheck:GetChecked() ) then--god
	result=".gm on";
	outSAY(result);
else
	result=".gm off";
	outSAY(result);
end
if ( NCDCheck:GetChecked() ) then--cooldown
	result=".cooldown ";
	outSAY(result);
else
	result="";
	outSAY(result);
end
--[[if ( NCTCheck:GetChecked() ) then--casttime
	result=".cheat casttime on";
	outSAY(result);
 else
	result="";
	outSAY(result);
 end
 if ( PowCheck:GetChecked() ) then--power
	result=".cheat power on";
	outSAY(result);
 else
	result=".cheat power off";
	outSAY(result);
 end
if ( AuraCheck:GetChecked() ) then--stack
	result=".cheat stack on";
	outSAY(result);
else
	result=".cheat stack off";
	outSAY(result);
 end
if ( TrigCheck:GetChecked() ) then--triggers
	result=".cheat triggerpass on";
	outSAY(result);
else
	result=".cheat triggerpass off";
	outSAY(result);
end]]
end

function FlySpeed()
result=".mod aspeed "..FlyEntry:GetText();
outSAY(result);
end

function FlightPath()
if ( TaxiCheck:GetChecked() ) then --Taxi
    result=".taxi on";
    outSAY(result);
else
    result="";
    outSAY(result);
end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PlayerScript
 function CreateGuild()
result=".guild create %t"..GuildName:GetText();  
outSAY(result);
end

function LevelPlayer()
result=".level "..PlayerLevel:GetText();    
outSAY(result);
end

function RevivePlayer2()
result=".revive "..RevivePlayer:GetText();
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ProfessionsForm

function LearnRiding()
result=".character advancesk 762 "..RidingLevel:GetText();    
outSAY(result);
end

function LearnJewel()
result=".character advancesk 755 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnBlackSmithing()
result=".character advancesk 164 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnTailoring()
result=".character advancesk 197 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnLeatherworking()
result=".character advancesk 165 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnEngineering()
result=".character advancesk 202 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnPoisons()
result=".character advancesk 40 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnEnchanting()
result=".character advancesk 333 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnFishing()
result=".character advancesk 356 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnMining()
result=".character advancesk 186 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnSkinning()
result=".character advancesk 393 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnAlchemy()
result=".character advancesk 171 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnHerbalism()
result=".character advancesk 182 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnFirstAid()
result=".character advancesk 129 "..SkillLevel:GetText();    
outSAY(result);
end

function LearnCooking()
result=".character advancesk 185 "..SkillLevel:GetText();    
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--QuickItemScript

function GmOutfit()
result=".additem 2586"--Gamemaster's Robe
outSAY(result);
result=".additem 11508"--Gamemaster's Slippers
outSAY(result);
result=".additem 12064"--Gamemaster's Hood
outSAY(result);
result=".additem 12947"--Alex's Ring of Audacity
outSAY(result);
result=".additem 12947"--Alex's Ring of Audacity
outSAY(result);
result=".additem 192"--Martin Thunder
outSAY(result);
result=".additem 19879"--Alex's Test Beatdown Staff
outSAY(result);
result=".additem 19160"--Contest Winner's Tabbard
outSAY(result);
result=".additem 23162"--Foror's Crate of Endless Resist Gear Storage
outSAY(result);
result=".additem 23162"--Foror's Crate of Endless Resist Gear Storage
outSAY(result);
result=".additem 23162"--Foror's Crate of Endless Resist Gear Storage
outSAY(result);
result=".additem 23162"--Foror's Crate of Endless Resist Gear Storage
outSAY(result);
end
--Gamemaster's Robe, Gamemaster's Slippers, Gamemaster's Hood, Alex's Ring of Audacity X2, Martin Thunder, Alex's Test Beatdown Staff, Contest Winner's Tabbard, Foror's Crate of Endless Resist Gear Storage X4

function MageT6()
result=".additemset 671"
outSAY(result);
end

function HunterT6()
result=".additemset 669"
outSAY(result);
end

function RogueT6()
result=".additemset 668"
outSAY(result);
end

function WarlockT6()
result=".additemset 670"
outSAY(result);
end

function WarriorT6()
result=".additemset 673"
outSAY(result);
result=".additemset 672"
outSAY(result);
end

function ShamanT6()
result=".additemset 682"
outSAY(result);
result=".additemset 683"
outSAY(result);
result=".additemset 684"
outSAY(result);
end

function PriestT6()
result=".additemset 674"
outSAY(result);
result=".additemset 675"
outSAY(result);
end

function DruidT6()
result=".additemset 676"
outSAY(result);
result=".additemset 677"
outSAY(result);
result=".additemset 678"
outSAY(result);
end

function PaladinT6()
result=".additemset 679"
outSAY(result);
result=".additemset 680"
outSAY(result);
result=".additemset 681"
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Skill2Script

function LearnProf123()
     if (ProfessionComboButton:GetText() == Alchemy) then
     result=".character advancesk 171 "..SkillLevel1:GetText();
     outSAY(result);
     elseif ( ProfessionComboButton:GetText() == Blacksmithing ) then
     result=".character advancesk 164 "..SkillLevel1:GetText();
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Enchanting) then
     result=".character advancesk 333 "..SkillLevel1:GetText();
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Engineering) then
     result=".character advancesk 202 "..SkillLevel1:GetText();
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Jewelcrafting) then
     result=".character advancesk 755 "..SkillLevel1:GetText(); 
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Leatherworking) then
     result=".character advancesk 165 "..SkillLevel1:GetText(); 
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Mining) then
     result=".character advancesk 186 "..SkillLevel1:GetText();
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Skinning) then
     result=".character advancesk 393 "..SkillLevel1:GetText();
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Tailoring) then
     result=".character advancesk 197 "..SkillLevel1:GetText(); 
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Cooking) then
     result=".character advancesk 185 "..SkillLevel1:GetText();
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Fishing) then
     result=".character advancesk 356 "..SkillLevel1:GetText();
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == FirstAid) then
     result=".character advancesk 129 "..SkillLevel1:GetText();
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Poisons) then
     result=".character advancesk 40 "..SkillLevel1:GetText(); 
     outSAY(result);
     elseif (ProfessionComboButton:GetText() == Herbalism ) then
     result=".character advancesk 182 "..SkillLevel1:GetText();
     outSAY(result);
     end

end
--[[Alchemy
Blacksmithing
Enchanting
Engineering
Herbalism
Jewelcrafting
Leatherworking
Mining
Skinning
Tailoring
Cooking
Fishing
FirstAid
Poisons]]
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SkillScript

function SearchSkill()
result=".lookup skill "..SkillName:GetText();
outSAY(result);
end

function LearnSkill()
result=".character advancesk "..SkillNumber:GetText().." "..SkillLvl:GetText().." "..SkillMax:GetText();        
outSAY(result);
end

function UnLearnSkill()
result=".character removesk "..SkillNumber:GetText();    
outSAY(result);
end

function AdvanceAll()
result=".character advanceallskills "..SkillsBy:GetText();   
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SpellScript

function LearnSpell()
result=".learn "..SpellNumber:GetText();    
outSAY(result);
end

function UnlearnSpell()
result=".unlearn "..SpellNumber:GetText();    
outSAY(result);
end

function LearnAll()
result=".learn all";
outSAY(result);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TeleScript

function GoName()
result=".appear "..ToPlayerName:GetText();    
outSAY(result);
end

function NameGo()
result=".summon "..ToPlayerName:GetText();    
outSAY(result);
end

function SearchTele()
result=".tele list "   
outSAY(result);
end

function Tele()
result=".tele port "..ZoneName:GetText(); 
outSAY(result);
end

function AddPort()
result=".tele add "..ZoneName:GetText(); 
outSAY(result);
end

function DelPort()
result=".tele del "..ZoneName:GetText(); 
outSAY(result);
end

function PortPlayer()
result=".tele PortPlayer "..ToPlayerName:GetText().." " ..ZoneName:GetText(); 
outSAY(result);
end

function WorldPort()
result=".worldport "..MapID:GetText().." "..XCord:GetText().." "..YCord:GetText().." "..ZCord:GetText();
outSAY(result);
end


function GPS()
result=".gps";
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- WaypointScript
function WaypointsAdd()
    result=".wp add";
    outSAY(result);
end

function WaypointsDel()
    result=".waypoint delete";
    outSAY(result);
end

function WaypointsShow()
    result=".wp show";
    outSAY(result);
end

function WaypointsHide()
    result=".waypoint hide";
    outSAY(result);
end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- WepskScript

function LearnDualWield()
result=".character advancesk 118 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnStaves()
result=".character advancesk 136 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnUnarmed()
result=".character advancesk 136 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnTwoHandedAxes()
result=".character advancesk 172 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnDaggers()
result=".character advancesk 173 "..WeaponSkillLvl:GetText();    
outSAY(result);
end


function LearnCrossbows()
result=".character advancesk 226 "..WeaponSkillLvl:GetText();    
outSAY(result);
end


function LearnWands()
result=".character advancesk 228 "..WeaponSkillLvl:GetText();    
outSAY(result);
end


function LearnPolearms()
result=".character advancesk 229 "..WeaponSkillLvl:GetText();    
outSAY(result);
end


function LearnGuns()
result=".character advancesk 46 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnSwords()
result=".character advancesk 43 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnTwoHandedSwords()
result=".character advancesk 55 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnFistWeapons()
result=".character advancesk 473 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnTwoHandedMaces()
result=".character advancesk 160 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnBows()
result=".character advancesk 45 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnThrown()
result=".character advancesk 176 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnAxes()
result=".character advancesk 44 "..WeaponSkillLvl:GetText();    
outSAY(result);
end

function LearnMaces()
result=".character advancesk 54 "..WeaponSkillLvl:GetText();    
outSAY(result);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------