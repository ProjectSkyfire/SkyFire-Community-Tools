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
function InitModelFrameNPC()
  ma_npcmodelframe:SetScript("OnUpdate", MangAdminNpcModelOnUpdate)
  ma_npcmodelframe.rotation = 0.61;
  ma_npcmodelframe:SetRotation(ma_npcmodelframe.rotation)
  ma_npcmodelframe:SetUnit("player")

end

function NpcModelRotateLeft()
  ma_npcmodelframe.rotation = ma_npcmodelframe.rotation - 0.03
  ma_npcmodelframe:SetRotation(ma_npcmodelframe.rotation)
  PlaySound("igInventoryRotateCharacter")
end

function NpcModelRotateRight()
  ma_npcmodelframe.rotation = ma_npcmodelframe.rotation + 0.03
  ma_npcmodelframe:SetRotation(ma_npcmodelframe.rotation)
  PlaySound("igInventoryRotateCharacter")
end

function MangAdminNpcModelOnUpdate(self, elapsedTime)
  if ( ma_npcmodelrotatelbutton:GetButtonState() == "PUSHED" ) then
    self.rotation = self.rotation + (elapsedTime * 2 * PI * ROTATIONS_PER_SECOND)
    if ( self.rotation < 0 ) then
      self.rotation = self.rotation + (2 * PI)
    end
    self:SetRotation(self.rotation);
  end
  if ( ma_npcmodelrotaterbutton:GetButtonState() == "PUSHED" ) then
    self.rotation = self.rotation - (elapsedTime * 2 * PI * ROTATIONS_PER_SECOND)
    if ( self.rotation > (2 * PI) ) then
      self.rotation = self.rotation - (2 * PI)
    end
    self:SetRotation(self.rotation);
  end
end

function NpcModelChanged()
  if not MangAdmin:Selection("none") then
    ma_npcmodelframe:SetUnit("target")
  else
    ma_npcmodelframe:SetUnit("player")
  end
  ma_npcmodelframe:RefreshUnit()
end

function NPCKillSomething()
  local target = UnitName("target") or UnitName("player")
  MangAdmin:ChatMsg(".die")
  MangAdmin:LogAction("Killed "..target..".")
end

function Respawn()
  MangAdmin:ChatMsg(".respawn")
  MangAdmin:LogAction("Respawned creatures near you.")
end

function NPCDistance()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".distance")
    MangAdmin:LogAction("Got distance to player "..player..".")
end

function NPCShowGUID()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".guid")
    MangAdmin:LogAction("Got GUID for player "..player..".")
end

function NPCInfo()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".npc info")
    MangAdmin:LogAction("Got NPC info for player "..player..".")
end

function NPCDemorph()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".demorph")
    MangAdmin:LogAction("Demorphed player "..player..".")
end


function NPCMove()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".npc move")
    MangAdmin:LogAction("Set NPC move for player "..player..".")
end



function NPCDel()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".npc del")
    MangAdmin:LogAction("Set NPC deleted for player "..player..".")
end

function NPC_GUID_Get()
	MangAdmin:ID_Setting_Start_Write(1)
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".npc info")
    MangAdmin:LogAction("Got NPC_GUID_Get for player "..player..".")
end

function NPC_Add()                            
    local player = UnitName("target") or UnitName("player")
    local npc = ma_NPC_idbutton:GetText()
    MangAdmin:ChatMsg(".npc add "..npc)
    MangAdmin:LogAction("NPC Spawn mob "..npc..".")
end

function NPCGo()
    local player = UnitName("target") or UnitName("player")
    local npc =	ma_NPC_guidbutton:GetText()
    MangAdmin:ChatMsg(".go creature "..npc)
    MangAdmin:LogAction("Go NPC for player "..player..".")
end

function NPCMorph()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".npc set model "..npccname)
  MangAdmin:LogAction(".modify morph "..npccname..".")
end

function NPCSay()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".npc say "..npccname)
  MangAdmin:LogAction(".npc say "..npccname..".")
end

function NPCYell()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".npc yell "..npccname)
  MangAdmin:LogAction(".npc yell "..npccname..".")
end

function NPCAura()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".aura "..npccname)
  MangAdmin:LogAction(".aura "..npccname..".")
end

function NPCUnaura()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".unaura "..npccname)
  MangAdmin:LogAction(".unaura "..npccname..".")
end

function NpcEmote(emote)
    MangAdmin:ChatMsg(".npc playemote "..emote)
    MangAdmin:LogAction("Played emote ("..emote..").")
end

function NPCBindSight()
    local npccname = ma_npccharactertarget:GetText()
    MangAdmin:ChatMsg(".bindsight")
    MangAdmin:LogAction("Sight bound to "..npccname)
end

function NPCUnBindSight()
    local npccname = ma_npccharactertarget:GetText()
    MangAdmin:ChatMsg(".unbindsight")
    MangAdmin:LogAction("Sight unbound to "..npccname)
end

function NPCComeToMe()
    local npccname = ma_npccharactertarget:GetText()
    MangAdmin:ChatMsg(".cometome 1")
    MangAdmin:LogAction("Forced "..npccname.." using ComeToMe")

end






















function DisplayUP()
    local currentid = ma_npcdisplayid:GetText()
    currentid = currentid + 1
    ma_npcdisplayid:SetText(currentid)
    MangAdmin:ChatMsg(".npc set model "..currentid)
end
function DisplayDown()
    local currentid = ma_npcdisplayid:GetText()
    currentid = currentid - 1
    ma_npcdisplayid:SetText(currentid)
    MangAdmin:ChatMsg(".npc set model "..currentid)
end

function ID_UP()    
    local currentid = ma_NPC_idbutton:GetText()
    currentid = currentid + 1
    ma_NPC_idbutton:SetText(currentid)
--    MangAdmin:ChatMsg(".npc set model "..currentid)
end

function ID_DOWN()
    local currentid = ma_NPC_idbutton:GetText()
    currentid = currentid - 1
    ma_NPC_idbutton:SetText(currentid)
--    MangAdmin:ChatMsg(".npc set model "..currentid)
end

function NPCModelZoomIn()
    ma_npcmodelframe:SetCamera(0)
--    ma_modelframe:SetModelScale(ma_modelframe:GetModelScale() + .1)
    --ma_modelframe:SetPosition(1,ma_modelframe:GetModelScale()*3,0)
    --ma_modelframe:RefreshUnit()
end

function NPCModelZoomOut()
    ma_npcmodelframe:SetCamera(1)
    ma_npcmodelframe:RefreshUnit()
    
   -- ma_modelframe:SetCamera(2)
    --ma_modelframe:SetModelScale(ma_modelframe:GetModelScale() * .5)
    --ma_modelframe:SetPosition(0,0,0)
    --ma_modelframe:RefreshUnit()

end

function NPCPossess() 
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".possess")
    MangAdmin:LogAction("Possessed "..player)

end
function NPCUnPossess() 
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".unpossess")
    MangAdmin:LogAction("UnPossessed "..player)

end
