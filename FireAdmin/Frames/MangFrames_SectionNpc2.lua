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

-- Initializing dynamic frames with LUA and FrameLib
-- This script must be listed in the .toc after "MangFrames_SectionTele.lua"
-- Also some variables are globally taken from MangAdmin.lua

function MangAdmin:CreateNpc2Section()
  local transparency = {
    bg = MangAdmin.db.account.style.transparency.backgrounds,
    btn = MangAdmin.db.account.style.transparency.buttons,
    frm = MangAdmin.db.account.style.transparency.frames
  }
  local color = {
    bg = MangAdmin.db.account.style.color.backgrounds,
    btn = MangAdmin.db.account.style.color.buttons,
    frm = MangAdmin.db.account.style.color.frames,
    linkifier = MangAdmin.db.account.style.color.linkifier
  }

  FrameLib:BuildButton({
    name = "ma_npcfreezebutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_npcfreezebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 12,
      offY = -12
    },
    text = Locale["ma_NPCFreezeButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_npcfreezedelbutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_npcfreezedelbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 97,
      offY = -12
    },
    --text = "NPCStayDEL"
    text = Locale["ma_WayAllDel"]
  })

  FrameLib:BuildButton({
    name = "ma_way_endaddbutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_way_endaddbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 182,
      offY = -12
    },
    text = Locale["ma_WayEndAdd"]
  })

  FrameLib:BuildButton({
    name = "ma_npcunfreeze_addwaybutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "npcunfreeze_addwaybutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 12,
      offY = -37
    },
    --text = "AddWayPT"
    text = Locale["[WayAdd]"]
  })
  
  FrameLib:BuildButton({
    name = "ma_way_modifyaddbutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_way_modifyaddbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 97,
      offY = -37
    },
    text = Locale["ma_WayMAdd"]
  })

  FrameLib:BuildButton({
    name = "ma_way_modifydelbutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_way_modifydelbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 182,
      offY = -37
    },
    text = Locale["ma_WayMDel"]
  })

  FrameLib:BuildButton({
    name = "ma_way_showonbutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_way_showonbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 12,
      offY = -62
    },
    text = Locale["ma_WayShow1"]
  })
  
  FrameLib:BuildButton({
    name = "ma_way_showoffbutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_way_showoffbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 97,
      offY = -62
    },
    text = Locale["ma_WayShow0"]
  })
 
  FrameLib:BuildButton({
    name = "ma_npcunfreeze_addway_showonbutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_addway_showonbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 182,
      offY = -62
    },
    text = Locale["[WayShow]"]
  })
 
  FrameLib:BuildButton({
    name = "ma_npcunfreeze_waybutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_waybutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 12,
      offY = -87
    },
    text = Locale["ma_NPCUnFreeze_WayButton"]
  })
 
  FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_npcunfreeze_random_distancebutton",	-- ma_npccharactertarget
    group = "npc2",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 187,
      offY = -87
    },
    inherits = "InputBoxTemplate"
  })

  FrameLib:BuildButton({
    name = "ma_npcunfreeze_randombutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 97,
      offY = -87
    },
    text = Locale["ma_NPCUnFreeze_RandomButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_movestackbutton",
    group = "npc2",
    parent = ma_midframe,
    texture = {
      name = "ma_movestackbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 12,
      offY = -222
    },
    text = Locale["ma_MoveStackButton"]
  })


end