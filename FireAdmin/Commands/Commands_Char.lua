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

function ModelRotateLeft()
  ma_modelframe.rotation = ma_modelframe.rotation - 0.03
  ma_modelframe:SetRotation(ma_modelframe.rotation)
  PlaySound("igInventoryRotateCharacter")
end

function ModelRotateRight()
  ma_modelframe.rotation = ma_modelframe.rotation + 0.03
  ma_modelframe:SetRotation(ma_modelframe.rotation)
  PlaySound("igInventoryRotateCharacter")
end

function InitModelFrame()
  ma_modelframe:SetScript("OnUpdate", MangAdminModelOnUpdate)
  ma_modelframe.rotation = 0.61;
  ma_modelframe:SetRotation(ma_modelframe.rotation)
  ma_modelframe:SetUnit("player") 

end  
 
 

function MangAdminModelOnUpdate(self, elapsed)
  if ( ma_modelrotatelbutton:GetButtonState() == "PUSHED" ) then
    self.rotation = self.rotation + (elapsed * 2 * PI * ROTATIONS_PER_SECOND)
    if ( self.rotation < 0 ) then
      self.rotation = self.rotation + (2 * PI)
    end
    self:SetRotation(self.rotation);
  end
  if ( ma_modelrotaterbutton:GetButtonState() == "PUSHED" ) then
    self.rotation = self.rotation - (elapsed * 2 * PI * ROTATIONS_PER_SECOND)
    if ( self.rotation > (2 * PI) ) then
      self.rotation = self.rotation - (2 * PI)
    end
    self:SetRotation(self.rotation);
  end
end

function ModelChanged()
  if not MangAdmin:Selection("none") then
    ma_modelframe:SetUnit("target")
  else
    ma_modelframe:SetUnit("player")
  end
  ma_modelframe:RefreshUnit()
end

function RevivePlayer()
  if MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".revive")
    MangAdmin:LogAction("Revived player "..player..".")
  else
    MangAdmin:Print(Locale["selectionerror1"])
  end
end

function SavePlayer()
  if MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".save")
    MangAdmin:LogAction("Saved player "..player..".")
  else
    MangAdmin:Print(Locale["selectionerror1"])
  end
end

function KickPlayer()
  if MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".kick")
    MangAdmin:LogAction("Kicked player "..player..".")
  else
    MangAdmin:Print(Locale["selectionerror1"])
  end
end

function Cooldown()
  if MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".cooldown")
    MangAdmin:LogAction("Reset all cooldowns for player "..player..".")
  else
    MangAdmin:Print(Locale["selectionerror1"])
  end
end

function ShowGUID()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".guid")
    MangAdmin:LogAction("Got GUID for player "..player..".")
end

function Pinfo()
  if MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".pinfo")
    MangAdmin:LogAction("Got Player Info for player "..player..".")
  else
    MangAdmin:Print(Locale["selectionerror1"])
  end
end

function Distance()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".distance")
    MangAdmin:LogAction("Got distance to player "..player..".")
end

function Recall()
  if MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".recall")
    MangAdmin:LogAction("Recalled player "..player..".")
  else
    MangAdmin:Print(Locale["selectionerror1"])
  end
end

function Demorph()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".demorph")
    MangAdmin:LogAction("Demorphed player "..player..".")
end

function ToggleMapsChar(value)
  MangAdmin:ChatMsg(".cheat explore "..value)
  if value == 1 then
    MangAdmin:LogAction("Revealed all maps for selected player.")
  else
    MangAdmin:LogAction("Hide all unexplored maps for selected player.")
  end
end

function GPS()
  if MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".gps")
    MangAdmin:LogAction("Got GPS coordinates for player "..player..".")
  else
    MangAdmin:Print(Locale["selectionerror1"])
  end
end

function LearnSpell(value, state)
  if MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    local class = UnitClass("target") or UnitClass("player")
    local command = ".learn"
    local logcmd = "Learned"
    if state == "RightButton" then
      command = ".unlearn"
      logcmd = "Unlearned"
    end
    if type(value) == "string" then
      if value == "all" then
        MangAdmin:ChatMsg(command.." all")
        MangAdmin:LogAction(logcmd.." all spells to "..player..".")
      elseif value == "all_crafts" then
        MangAdmin:ChatMsg(command.." all_crafts")
        MangAdmin:LogAction(logcmd.." all professions and recipes to "..player..".")
      elseif value == "all_gm" then
        MangAdmin:ChatMsg(command.." all_gm")
        MangAdmin:LogAction(logcmd.." all default spells for Game Masters to "..player..".")
      elseif value == "all_lang" then
        MangAdmin:ChatMsg(command.." all_lang")
        MangAdmin:LogAction(logcmd.." all languages to "..player..".")
      elseif value == "all_myclass" then
        MangAdmin:ChatMsg(command.." all_myclass")
        MangAdmin:LogAction(logcmd.." all spells available to the "..class.."-class to "..player..".")
      else
        MangAdmin:ChatMsg(command.." "..value)
        MangAdmin:LogAction(logcmd.." spell "..value.." to "..player..".")
      end
    elseif type(value) == "table" then
      for k,v in pairs(value) do
        MangAdmin:ChatMsg(command.." "..v)
        MangAdmin:LogAction(logcmd.." spell "..v.." to "..player..".")
      end
    end
  else
    MangAdmin:Print(Locale["selectionerror1"])
  end
end

function Modify(case, value) 
  if MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    if case == "money" then
      MangAdmin:ChatMsg(".modify money "..value)
      MangAdmin:LogAction("Gave player "..player.." "..value.." copper.")
    elseif case == "levelup" then
      MangAdmin:ChatMsg(".levelup "..value)
      MangAdmin:LogAction("Levelled player "..player.." up by "..value.." levels.")
    elseif case == "leveldown" then
      MangAdmin:ChatMsg(".levelup "..value*(-1))
      MangAdmin:LogAction("Levelled player "..player.." down by "..value.." levels.")
    elseif case == "energy" then
      MangAdmin:ChatMsg(".modify energy "..value)
      MangAdmin:LogAction("Modified energy for "..player.." to "..value.." energy.")
    elseif case == "rage" then
      MangAdmin:ChatMsg(".modify rage "..value)
      MangAdmin:LogAction("Modified rage for "..player.." to "..value.." rage.")
    elseif case == "health" then
      MangAdmin:ChatMsg(".modify hp "..value)
      MangAdmin:LogAction("Modified hp for "..player.." to "..value.." healthpoints.")
    elseif case == "mana" then
      MangAdmin:ChatMsg(".modify mana "..value)
      MangAdmin:LogAction("Modified mana for "..player.." to "..value.." mana.")
    elseif case == "aspeed" then
      MangAdmin:ChatMsg(".modify speed all "..value)
      MangAdmin:LogAction("Modified All Speeds for "..player.." to "..value)
    elseif case == "bwalk" then
      MangAdmin:ChatMsg(".modify speed backwalk "..value)
      MangAdmin:LogAction("Modified Backwalk Speed for "..player.." to "..value)
    elseif case == "drunk" then
      MangAdmin:ChatMsg(".modify drunk "..value)
      MangAdmin:LogAction("Modified Drunk for "..player.." to "..value)
    elseif case == "fly" then
      MangAdmin:ChatMsg(".modify speed fly "..value)
      MangAdmin:LogAction("Modified Fly Speed for "..player.." to "..value)
    elseif case == "gender" then
      MangAdmin:ChatMsg(".modify gender "..value)
      MangAdmin:LogAction("Modified Gender for "..player.." to "..value)
    elseif case == "honor" then
      MangAdmin:ChatMsg(".modify honor "..value)
      MangAdmin:LogAction("Modified Honor for "..player.." to "..value.." honor.")
    elseif case == "mount" then
      MangAdmin:ChatMsg(".modify speed mount "..value)
      MangAdmin:LogAction("Modified Mount Speed for "..player.." to "..value)
    elseif case == "phase" then
      MangAdmin:ChatMsg(".modify phase "..value)
      MangAdmin:LogAction("Modified Phase for "..player.." to "..value)
    elseif case == "runicpower" then
      MangAdmin:ChatMsg(".modify runicpower "..value)
      MangAdmin:LogAction("Modified RunicPower for "..player.." to "..value.." runic power.")
    elseif case == "speed" then
      MangAdmin:ChatMsg(".modify speed "..value)
      MangAdmin:LogAction("Modified Speed for "..player.." to "..value)
    elseif case == "standstate" then
      MangAdmin:ChatMsg(".modify standstate "..value)
      MangAdmin:LogAction("Modified StandState for "..player.." to "..value)
    elseif case == "swim" then
      MangAdmin:ChatMsg(".modify speed swim "..value)
      MangAdmin:LogAction("Modified Swim Speed for "..player.." to "..value)
    elseif case == "tp" then
      MangAdmin:ChatMsg(".modify talentpoints "..value)
      MangAdmin:LogAction("Modified TalentPoints for "..player.." to "..value)
    elseif case == "faction" then
      MangAdmin:ChatMsg(".modify faction "..value)
      MangAdmin:LogAction("Modified faction of "..player.." to "..value)
    elseif case == "reputation" then
      MangAdmin:ChatMsg(".modify reputation "..value)
      MangAdmin:LogAction("Modified reputation of "..player.." to "..value)
    elseif case == "scale" then
      MangAdmin:ChatMsg(".modify scale "..value)
      MangAdmin:LogAction("Modified scale of "..player.." to "..value)
	elseif case == "bit" then
      MangAdmin:ChatMsg(".modify bit "..value)
      MangAdmin:LogAction("Modified bit of "..player.." to "..value)
    end
  else
    MangAdmin:Print(Locale["selectionerror1"])
  end
end

function Reset(value)
  if MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none") then
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".reset "..value)
    MangAdmin:LogAction("Reset "..value.."' for player "..player..".")
  else
    MangAdmin:Print(Locale["selectionerror1"])
  end
end

  -- LEARN LANG
function LearnLangDropDownInitialize()
    local level = 1
    local info = UIDropDownMenu_CreateInfo()
    local buttons = {
      {Locale["Common"],"668"},
      {Locale["Orcish"],"669"},
      {Locale["Taurahe"],"670"},
      {Locale["Darnassian"],"671"},
      {Locale["Dwarvish"],"672"},
      {Locale["Thalassian"],"813"},
      {Locale["Demonic"],"815"},
      {Locale["Draconic"],"814"},
      {Locale["Titan"],"816"},
      {Locale["Kalimag"],"817"},
      {Locale["Gnomish"],"7340"},
      {Locale["Troll"],"7341"},
      {Locale["Gutterspeak"],"17737"},
      {Locale["Draenei"],"29932"}
    }
    for k,v in pairs(buttons) do
      info.text = v[1]
	  info.value = v[2]
	  info.func = function(self) ma_learnlangdropdown.selected = self.value; UIDropDownMenu_SetSelectedValue(ma_learnlangdropdown, self.value) end
      info.checked = ma_learnlangdropdown.selected == v[2]
      UIDropDownMenu_AddButton(info, level)
    end
	ma_learnlangdropdown.selected = "7341"
	UIDropDownMenu_SetSelectedValue(ma_learnlangdropdown, "7341")
end 

  -- MODIFY
function ModifyDropDownInitialize()
    local level = 1
    local info = UIDropDownMenu_CreateInfo()
    local buttons = {
      {Locale["ma_AllSpeeds"],"aspeed"},
	  {"Bit Field", "bit"},
      {Locale["ma_BackWalk"],"bwalk"},
      {Locale["ma_Drunk"],"drunk"},
      {Locale["ma_Energy"],"energy"},
	  {"Faction","faction"},
      {Locale["ma_FlySpeed"],"fly"},
      {Locale["ma_Gender"],"gender"},
      {Locale["ma_Healthpoints"],"health"},
      {Locale["ma_Honor"],"honor"},
      {Locale["ma_LevelUp"],"levelup"},
      {Locale["ma_LevelDown"],"leveldown"},
      {Locale["ma_Mana"],"mana"},
      {Locale["ma_Money"],"money"},
      {Locale["ma_MountSpeed"],"mount"},
      {Locale["ma_Phase"],"phase"},
      {Locale["ma_Rage"],"rage"},
	  {"Reputation","reputation"},
      {Locale["ma_RunicPower"],"runicpower"},
	  {"Scale","scale"},
      {Locale["ma_Speed"],"speed"},
      {Locale["ma_StandSate"],"standstate"},
      {Locale["ma_SwimSpeed"],"swim"},
      {Locale["ma_TalentPoints"],"tp"}
    }
    for k,v in pairs(buttons) do
      info.text = v[1]
      info.value = v[2]
      info.func = function(self) ma_modifydropdown.selected = self.value; UIDropDownMenu_SetSelectedValue(ma_modifydropdown, self.value) end
      info.checked = ma_modifydropdown.selected == v[2]
      UIDropDownMenu_AddButton(info, level)
    end
	ma_modifydropdown.selected = "aspeed"
	UIDropDownMenu_SetSelectedValue(ma_modifydropdown, "aspeed")
end  

  -- RESET
function ResetDropDownInitialize()
    local level = 1
    local info = UIDropDownMenu_CreateInfo()
    local buttons = {
      {Locale["ma_resetallspells"],"all spells"},
      {Locale["ma_resetalltalents"],"all talents"},
      {Locale["ma_achievements"],"achievements"},
      {Locale["ma_Honor"],"honor"},
      {Locale["ma_Level"],"level"},
      {Locale["ma_Spells"],"spells"},
      {Locale["ma_Stats"],"stats"},
      {Locale["ma_Talents"],"talents"}
    }
    for k,v in pairs(buttons) do
      info.text = v[1]
      info.value = v[2]
      info.func = function(self) ma_resetdropdown.selected = self.value; UIDropDownMenu_SetSelectedValue(ma_resetdropdown, self.value) end
      info.checked = ma_resetdropdown.selected == v[2]
      UIDropDownMenu_AddButton(info, level)
    end
	ma_resetdropdown.selected = "level"
	UIDropDownMenu_SetSelectedValue(ma_resetdropdown, "level")
end  

function CharModelZoomIn()
    ma_modelframe:SetCamera(0)
    --ma_modelframe:SetModelScale(ma_modelframe:GetModelScale() + .1)
    --ma_modelframe:SetPosition(1,ma_modelframe:GetModelScale()*3,0)
    --ma_modelframe:RefreshUnit()
end

function CharModelZoomOut()
    ma_modelframe:SetCamera(1)
    ma_modelframe:RefreshUnit()
   -- ma_modelframe:SetCamera(2)
    --ma_modelframe:SetModelScale(ma_modelframe:GetModelScale() * .5)
    --ma_modelframe:SetPosition(0,0,0)
    --ma_modelframe:RefreshUnit()
end

function CharBindSight()
    local cname = ma_charactertarget:GetText()
    MangAdmin:ChatMsg(".bindsight")
    MangAdmin:LogAction("Sight bound to "..cname)
end

function CharUnBindSight()
    local cname = ma_charactertarget:GetText()
    MangAdmin:ChatMsg(".unbindsight")
    MangAdmin:LogAction("Sight unbound to "..cname)
end

function CharRename() 
    local cname = ma_charactertarget:GetText()
    MangAdmin:ChatMsg(".character rename")
    MangAdmin:LogAction("Forced rename of "..cname)
end

function CharCustomize()
    local cname = ma_charactertarget:GetText()
    MangAdmin:ChatMsg(".character customize")
    MangAdmin:LogAction("Forced customization of "..cname)
end

function CharChangeRace()
    local cname = ma_charactertarget:GetText()
    MangAdmin:ChatMsg(".character changerace")
    MangAdmin:LogAction("Forced race change of "..cname)
end

function CharChangeFaction()
    local cname = ma_charactertarget:GetText()
    MangAdmin:ChatMsg(".character changefaction")
    MangAdmin:LogAction("Forced faction change of "..cname)
end

function CharCombatStop()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".combatstop")
    MangAdmin:LogAction("Forced combat stop on "..player)
end

function CharMaxSkill() 
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".maxskill")
    MangAdmin:LogAction("Set player MaxSkill for "..player)
end

function CharFreeze() 
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".freeze")
    MangAdmin:LogAction("Set Freeze for "..player)
end

function CharUnFreeze() 
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".unfreeze")
    MangAdmin:LogAction("UnFroze "..player)
end

function CharListFreeze() 
    MangAdmin:ChatMsg(".listfreeze")
    MangAdmin:LogAction("Listed Frozen players")
end

function CharPossess() 
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".possess")
    MangAdmin:LogAction("Possessed "..player)
end

function CharUnPossess() 
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".unpossess")
    MangAdmin:LogAction("UnPossessed "..player)
end

function CharRecall() 
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".recall")
    MangAdmin:LogAction("Recalled "..player)
end

function CharRepair() 
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".repairitems")
    MangAdmin:LogAction("Repaired  "..player.."'s items")
end

