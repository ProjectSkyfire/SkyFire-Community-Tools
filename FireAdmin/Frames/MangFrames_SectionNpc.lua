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

function MangAdmin:CreateNpcSection()
  local transparency = {
    bg = MangAdmin.db.account.style.transparency.backgrounds,
    btn = MangAdmin.db.account.style.transparency.buttons,
    frm = MangAdmin.db.account.style.transparency.frames
  }
  local color = {
    bg = MangAdmin.db.account.style.color.backgrounds,
    btn = MangAdmin.db.account.style.color.buttons,
    frm = MangAdmin.db.account.style.color.frames
  }

  FrameLib:BuildFrame({
    type = "PlayerModel",
    name = "ma_npcmodelframe",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 210,
      height = 210
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 10,
      offY = -35
    },
    inherits = nil
  })
  
  FrameLib:BuildButton({
    name = "ma_npcmodelrotatelbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_modelrotatelbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 30,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 10,
      offY = -10
    },
    text = "<<="
  })
  
  FrameLib:BuildButton({
    name = "ma_npcmodelrotaterbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_modelrotaterbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 30,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 44,
      offY = -10
    },
    text = "=>>"
  })

  FrameLib:BuildButton({
    name = "ma_npcmodelzoominbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_modelzoominbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 15,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 80,
      offY = -10
    },
    text = "+"
  })

  FrameLib:BuildButton({
    name = "ma_npcmodelzoomoutbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_modelzoomoutbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 15,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 100,
      offY = -10
    },
    text = "-"
  })

  FrameLib:BuildButton({
    name = "ma_npckillbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_killbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 225,
      offY = -10
    },
    text = Locale["ma_NPCKillButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_respawnbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_respawnbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 225,
      offY = -34
    },
    text = Locale["ma_Respawn"]
  })
  
  FrameLib:BuildButton({
    name = "ma_npcdistancebutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_distancebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 225,
      offY = -58
    },
    text = Locale["ma_NPCDistanceButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_npcguidbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_guidbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 310,
      offY = -10
    },
    text = Locale["ma_NPCGUIDButton"]
  })

  FrameLib:BuildButton({
    name = "ma_npcinfobutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcinfobutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 310,
      offY = -34
    },
    text = Locale["ma_NPCInfoButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_npcdemorphbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcdemorphbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 310,
      offY = -58
    },
    text = Locale["ma_NPCDemorph"]
  })
  
  FrameLib:BuildButton({
    name = "ma_npcmovebutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcmovebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 395,
      offY = -35
    },
    text = Locale["ma_NPCMove"]
  })

  FrameLib:BuildButton({
    name = "ma_npcdelbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcdelbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 395,
      offY = -10
    },
    text = Locale["ma_NPCDel"]
  })

  FrameLib:BuildButton({
    name = "ma_npcgobutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcgobutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 395,
      offY = -60
    },
    text = Locale["ma_NPCGo"]
  })



  
  FrameLib:BuildButton({
    name = "ma_npcemotebutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcemotebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 660,
      offY = -15
    },
    text = Locale["ma_PlayEmote"]
  })

  FrameLib:BuildFrame({
    name = "ma_npcemotedropdown",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 525,
      offY = -10
    },
    inherits = "UIDropDownMenuTemplate"
  })
  
  FrameLib:BuildButton({
    name = "ma_npcemotebutton_a",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcemotebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 660,
      offY = -39
    },
    text = Locale["ma_PlayEmote"]
  })

  FrameLib:BuildFrame({
    name = "ma_npcemotedropdown_a",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 525,
      offY = -34
    },
    inherits = "UIDropDownMenuTemplate"
  })
  
  FrameLib:BuildButton({
    name = "ma_npcdisplaydownbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcdisplaydownbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 490,
      offY = -230
    },
    text = "<<"
    })
    
  FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_npcdisplayid",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 580,
      offY = -230
    },
    inherits = "InputBoxTemplate"
  })

  FrameLib:BuildButton({
    name = "ma_npcdisplayupbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcdisplayupbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 665,
      offY = -230
    },
    text = ">>"
    })
 
  FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_NPC_idbutton",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 580,
      offY = -205
    },
    inherits = "InputBoxTemplate"
  })
  
  FrameLib:BuildButton({
    name = "ma_npcID_UPbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcID_UPbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 20,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 690,
      offY = -205
    },
    text = ">>"
  })

  FrameLib:BuildButton({
    name = "ma_npcID_DOWNbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcID_DOWNbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 20,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 665,
      offY = -205
    },
    text = "<<"
  })
 
  FrameLib:BuildButton({
    name = "ma_NPC_addbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_NPC_addbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 490,
      offY = -205
    },
    text = Locale["ma_NPCAdd"]
  })

  FrameLib:BuildButton({
    name = "ma_NPC_guidgetbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_NPC_guidgetbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 490,
      offY = -180
    },
    text = Locale["ma_getguid"]
  })

  FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_NPC_guidbutton",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 580,
      offY = -180
    },
    inherits = "InputBoxTemplate"
  })

  FrameLib:BuildFontString({
    name = "ma_npcparameterboxtext",
    group = "npc",
    parent = ma_midframe,
    text = Locale["ma_ParameterBox"],
    setpoint = {
      pos = "TOPLEFT",
      offX = 225,
      offY = -230
    }
  })
  
  FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_npccharactertarget",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 200,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 280,
      offY = -230
    },
    inherits = "InputBoxTemplate"
  })

  FrameLib:BuildButton({
    name = "ma_npcmorphbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcmorphbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 225,
      offY = -180
    },
    text = Locale["ma_NPCMorph"]
    })
    
  FrameLib:BuildButton({
    name = "ma_npcsaybutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcsaybutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 310,
      offY = -180
    },
    text = Locale["ma_NPCSay"]
    })

  FrameLib:BuildButton({
    name = "ma_npcyellbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcyellbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 395,
      offY = -180
    },
    text = Locale["ma_NPCYell"]
    })

  FrameLib:BuildButton({
    name = "ma_npcaurabutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcaurabutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 225,
      offY = -205
    },
    text = Locale["ma_NPCAura"]
    })

  FrameLib:BuildButton({
    name = "ma_npcunaurabutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunaurabutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 310,
      offY = -205
    },
    text = Locale["ma_NPCUnAura"]
    })

  FrameLib:BuildButton({
    name = "ma_npcbindsight",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcbindsight_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 225,
      offY = -82
    },
    text = Locale["ma_NPCBindsight"]
  })

  FrameLib:BuildButton({
    name = "ma_npcunbindsight",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunbindsight_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 310,
      offY = -82
    },
    text = Locale["ma_NPCUnBindsight"]
  })

  FrameLib:BuildButton({
    name = "ma_npccometomebutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npccometomebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 395,
      offY = -82
    },
    text = Locale["ma_NPCComeToMe"]
  })

  FrameLib:BuildButton({
    name = "ma_npcpossessbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcpossessbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 225,
      offY = -106
    },
    text = Locale["ma_npcpossess"]
  })

  FrameLib:BuildButton({
    name = "ma_npcunpossessbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunpossessbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 310,
      offY = -106
    },
    text = Locale["ma_npcunpossess"]
  })

end