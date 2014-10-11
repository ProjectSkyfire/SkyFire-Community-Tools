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
function BanButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".ban character"..cname)
  MangAdmin:LogAction("Banned player character: "..cname..".")

end

function GoNameButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".appear "..cname)
  MangAdmin:LogAction("Teleported TO player: "..cname..".")

end

function CreateGuildButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".guild create "..cname)
  MangAdmin:LogAction("Created Guild: "..cname..".")

end

function BanInfoButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".baninfo account "..cname)
  MangAdmin:LogAction("Listed .baninfo: "..cname..".")

end

function GroupGoButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".group summon "..cname)
  MangAdmin:LogAction("Teleported "..cname.." and his/her group TO me.")

end

function GuildInviteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".guild invite "..cname)
  MangAdmin:LogAction("Guild invitation: "..cname..".")

end

function BanlistButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".banlist character"..cname)
  MangAdmin:LogAction("Listed bans matching: "..cname..".")

end

function NameGoButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".summon "..cname)
  MangAdmin:LogAction("Teleported "..cname.." TO me.")

end

function GuildRankButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".guild rank "..cname)
  MangAdmin:LogAction("Guild rank change: "..cname..".")

end

function TeleGroupButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".tele group "..cname)
  MangAdmin:LogAction("Group teleported: "..cname..".")

end

function UnBanButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".unban character"..cname)
  MangAdmin:LogAction("Unbanned "..cname..".")

end

function GuildDeleteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".guild delete "..cname)
  MangAdmin:LogAction("Deleted guild: "..cname..".")

end

function GuildUninviteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".guild uninvite "..cname)
  MangAdmin:LogAction("Removed from guild: "..cname..".")

end

function TeleNameButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
    self:ChatMsg(".tele name "..cname)
    self:LogAction("Teleported: "..cname..".")

end

function MuteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".mute "..cname)
  MangAdmin:LogAction("Muted "..cname..".")

end

function CharMorphButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".morph "..cname)
  MangAdmin:LogAction(".morph "..cname..".")

end

function CharAuraButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".aura "..cname)
  MangAdmin:LogAction(".aura "..cname..".")

end

function CharUnAuraButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".unaura "..cname)
  MangAdmin:LogAction(".unaura "..cname..".")

end

function JailA()
    cname=ma_charactertarget:GetText()
    MangAdmin:ChatMsg(".tele name "..cname.." ma_AllianceJail")
    MangAdmin:LogAction("Jailed player "..cname..".")
    MangAdmin:ChatMsg(".notify "..cname.." has been found guilty and jailed.")
end

function JailH()
    cname=ma_charactertarget:GetText()
    --self:ChatMsg("Selected "..cname)
    MangAdmin:ChatMsg(".tele name "..cname.." ma_HordeJail")
    MangAdmin:LogAction("Jailed player "..cname..".")
    MangAdmin:ChatMsg(".notify "..cname.." has been found guilty and jailed.")
end

function UnJail()
    cname=ma_charactertarget:GetText()
    MangAdmin:ChatMsg(".recall "..cname)
    MangAdmin:LogAction("UnJailed player "..cname..".")
    MangAdmin:ChatMsg(".notify "..cname.." has been pardoned and released from jail.")
end

function UnMuteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".unmute "..cname)
  MangAdmin:LogAction(".unmute "..cname..".")

end

function QuestAddButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".quest add "..cname)
  MangAdmin:LogAction(".quest add "..cname..".")

end

function QuestCompleteButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".quest complete "..cname)
  MangAdmin:LogAction(".quest complete "..cname..".")

end

function QuestRemoveButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".quest remove "..cname)
  MangAdmin:LogAction(".quest remove "..cname..".")

end

function DamageButton ()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".damage "..cname)
  MangAdmin:LogAction(".damage "..cname..".")

end

function HideAreaButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".hidearea "..cname)
  MangAdmin:LogAction(".hidearea "..cname..".")
end

function ShowAreaButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".showarea "..cname)
  MangAdmin:LogAction(".showarea "..cname..".")
end

function HonorAddButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".honor add "..cname)
  MangAdmin:LogAction(".honor add "..cname..".")
end

function HonorUpdateButton()
  local cname = ma_charactertarget:GetText()
  local npccname = ma_npccharactertarget:GetText()
  MangAdmin:ChatMsg(".honor update ")
  MangAdmin:LogAction(".honor update.")
end

