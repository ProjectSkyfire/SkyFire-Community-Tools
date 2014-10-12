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

function NPCFreeze()
    local player = UnitName("target") or UnitName("player") 
    MangAdmin:ChatMsg(".npc set movetype stay NODEL")          
    MangAdmin:LogAction("Set NPC movement to STAY for player "..player..".")
end

function NPCFreezeDEL()
    local player = UnitName("target") or UnitName("player") 
    MangAdmin:ChatMsg(".npc set movetype stay")          
    MangAdmin:LogAction("Set NPC movement to STAY for player "..player..".")
end

function WayEndAdd()                            
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".wp add")
    MangAdmin:LogAction("WayPoint Add for player "..player..".")
end

function NPCAdd_Way()                            
    local player = UnitName("target") or UnitName("player")
    local npc =	ma_NPC_guidbutton:GetText()
    MangAdmin:ChatMsg(".wp add "..npc) 
    --MangAdmin:Way_Point_Add_Start_Write(1)
    MangAdmin:ChatMsg(".wp show on "..npc)
    MangAdmin:LogAction("WayPoint Add for player "..player..".")
end

function WayModifyAdd()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".wp modify add")
    MangAdmin:LogAction("WayPoint(Modify) Add for player "..player..".")
end

function WayModifyDel()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".wp modify del")
    MangAdmin:LogAction("WayPoint(Modify) Del for player "..player..".")
end

function NPCAdd_WayShowOn()                            
    local player = UnitName("target") or UnitName("player")
    local npc =	ma_NPC_guidbutton:GetText()
    MangAdmin:ChatMsg(".wp show on "..npc)
    MangAdmin:LogAction("WayPoint Show On for player "..player..".")
end

function WayShowOn()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".wp show on")
    MangAdmin:LogAction("WayPoint Show On for player "..player..".")
end

function WayShowOff()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".wp show off")
    MangAdmin:LogAction("WayPoint Show Off for player "..player..".")
end

function NPCUnFreeze_Way()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".npc set movetype way NODEL")
    MangAdmin:LogAction("Set NPC movement type to WAYPOINT for player "..player..".")
end

function NPCUnFreeze_Random()
    local player = UnitName("target") or UnitName("player")
    local rdistancecname = ma_npcunfreeze_random_distancebutton:GetText()
    MangAdmin:ChatMsg(".npc set spawndist "..rdistancecname)
    MangAdmin:LogAction("Set NPC spawndist "..rdistancecname..".")
    MangAdmin:ChatMsg(".npc set movetype random NODEL")
    MangAdmin:LogAction("Set NPC movement type to RANDOM for player "..player..".")
    MangAdmin:ChatMsg(".respawn")
    
end

function ShowMove()
    local player = UnitName("target") or UnitName("player")
    MangAdmin:ChatMsg(".movegens")
    MangAdmin:LogAction("Got Movement Stack for player "..player..".")
end

