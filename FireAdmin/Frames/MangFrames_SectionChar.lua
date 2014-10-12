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
-- This script must be listed in the .toc after "MangFrames_SectionLog.lua"
-- Also some variables are globally taken from MangAdmin.lua

function MangAdmin:CreateCharSection()
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
    name = "ma_modelframe",
    group = "char",
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
    name = "ma_modelrotatelbutton",
    group = "char",
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
    name = "ma_modelrotaterbutton",
    group = "char",
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
    name = "ma_modelzoominbutton",
    group = "char",
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
    name = "ma_modelzoomoutbutton",
    group = "char",
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
    name = "ma_killbutton",
    group = "char",
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
      offX = 230,
      offY = -10
    },
    text = Locale["ma_KillButton"]
  })

  FrameLib:BuildButton({
    name = "ma_revivebutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_revivebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 230,
      offY = -34
    },
    text = Locale["ma_ReviveButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_savebutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_savebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 230,
      offY = -58
    },
    text = Locale["ma_SaveButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_kickbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_kickbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 230,
      offY = -82
    },
    text = Locale["ma_KickButton"]
  })

  FrameLib:BuildButton({
    name = "ma_cooldownbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_cooldownbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 230,
      offY = -106
    },
    text = Locale["ma_CooldownButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_demorphbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_demorphbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 315,
      offY = -106
    },
    text = Locale["ma_DemorphButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_showmapsbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_showmapsbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 400,
      offY = -10
    },
    text = Locale["ma_ShowMapsCharButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_hidemapsbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_hidemapsbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 400,
      offY = -34
    },
    text = Locale["ma_HideMapsButton"]
  })

  FrameLib:BuildButton({
    name = "ma_gpsbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_gpsbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 400,
      offY = -58
    },
    text = Locale["ma_GPSButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_guidbutton",
    group = "char",
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
      offX = 315,
      offY = -10
    },
    text = Locale["ma_GUIDButton"]
  })

  FrameLib:BuildButton({
    name = "ma_pinfobutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_pinfobutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 315,
      offY = -34
    },
    text = Locale["ma_PinfoButton"]
  })

  FrameLib:BuildButton({
    name = "ma_distancebutton",
    group = "char",
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
      offX = 315,
      offY = -58
    },
    text = Locale["ma_DistanceButton"]
  })

  FrameLib:BuildButton({
    name = "ma_recallbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_recallbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 315,
      offY = -82
    },
    text = Locale["ma_RecallButton"]
  })

  FrameLib:BuildFrame({
    name = "ma_learnlangdropdown",
    group = "char",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 520,
      offY = -10
    },
    inherits = "UIDropDownMenuTemplate"
  })
  
  FrameLib:BuildButton({
    name = "ma_learnlangbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_learnlangbutton_texture",
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
    text = Locale["ma_Learn"]
  })
  
  FrameLib:BuildFrame({
    name = "ma_modifydropdown",
    group = "char",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 480,
      offY = -40
    },
    inherits = "UIDropDownMenuTemplate"
  })
  
  FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_modifyeditbox",
    group = "char",
    parent = ma_midframe,
    size = {
      width = 30,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 620,
      offY = -45
    },
    inherits = "InputBoxTemplate"
  })
  
  FrameLib:BuildButton({
    name = "ma_modifybutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_modifybutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 660,
      offY = -45
    },
    text = Locale["ma_Modify"]
  })
  
  FrameLib:BuildFrame({
    name = "ma_resetdropdown",
    group = "char",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 520,
      offY = -70
    },
    inherits = "UIDropDownMenuTemplate"
  })
  
  FrameLib:BuildButton({
    name = "ma_resetbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_resetbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 660,
      offY = -75
    },
    text = Locale["ma_Reset"]
  })

  FrameLib:BuildButton({
    name = "ma_charbindsight",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charbindsight_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 400,
      offY = -82
    },
    text = Locale["ma_CharBindsight"]
  })

  FrameLib:BuildButton({
    name = "ma_charunbindsight",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charunbindsight_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 400,
      offY = -106
    },
    text = Locale["ma_CharUnBindsight"]
  })
     
  FrameLib:BuildButton({
    name = "ma_charrenamebutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charrenamebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 230,
      offY = -130
    },
    text = Locale["ma_charrename"]
  })

  FrameLib:BuildButton({
    name = "ma_charcustomizebutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charcustomizebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 315,
      offY = -130
    },
    text = Locale["ma_charcustomize"]
  })

  FrameLib:BuildButton({
    name = "ma_charchangeracebutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charchangeracebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 400,
      offY = -130
    },
    text = Locale["ma_charchangerace"]
  })

  FrameLib:BuildButton({
    name = "ma_charchangefactionbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charchangefactionbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 230,
      offY = -154
    },
    text = Locale["ma_charchnagefaction"]
  })

  FrameLib:BuildButton({
    name = "ma_charcombatstopbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charcombatstopbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 315,
      offY = -154
    },
    text = Locale["ma_charcombatstop"]
  })

  FrameLib:BuildButton({
    name = "ma_charmaxskillbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charmaxskillbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 400,
      offY = -154
    },
    text = Locale["ma_charmaxskill"]
  })

  FrameLib:BuildButton({
    name = "ma_charfreezebutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charfreezebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 230,
      offY = -178
    },
    text = Locale["ma_charfreeze"]
  })

  FrameLib:BuildButton({
    name = "ma_charunfreezebutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charunfreezebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 315,
      offY = -178
    },
    text = Locale["ma_charunfreeze"]
  })

  FrameLib:BuildButton({
    name = "ma_charlistfreezebutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charlistfreezebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 400,
      offY = -178
    },
    text = Locale["ma_charlistfreeze"]
  })

  FrameLib:BuildButton({
    name = "ma_charpossessbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charpossessbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 230,
      offY = -202
    },
    text = Locale["ma_charpossess"]
  })

  FrameLib:BuildButton({
    name = "ma_charunpossessbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charunpossessbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 315,
      offY = -202
    },
    text = Locale["ma_charunpossess"]
  })

  FrameLib:BuildButton({
    name = "ma_charrecallbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charrecallbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 400,
      offY = -202
    },
    text = Locale["ma_charrecall"]
  })

  FrameLib:BuildButton({
    name = "ma_charrepairitemsbutton",
    group = "char",
    parent = ma_midframe,
    texture = {
      name = "ma_charreppairitemsbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 230,
      offY = -226
    },
    text = Locale["ma_charrepair"]
  })

end
