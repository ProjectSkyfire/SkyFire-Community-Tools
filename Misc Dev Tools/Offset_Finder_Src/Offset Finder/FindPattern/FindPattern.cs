using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Magic;
using System.Windows.Forms;
using System.Diagnostics;

namespace Offset_Finder.FindPattern
{
    class FindPattern
    {
        public static Structs.PatternList FindPatternList(Structs.PatternList patternList)
        {
            Structs.PatternList newPatternList = new Structs.PatternList();
            newPatternList.processName = patternList.processName;
            uint baseModule = 0;

            BlackMagic memread = new BlackMagic();
            if (memread.OpenProcessAndThread(SProcess.GetProcessFromProcessName(patternList.processName)))
            {
                try
                {
                    // Dump module
                    ProcessModuleCollection modules = Process.GetProcessById(memread.ProcessId).Modules;
                    foreach (ProcessModule o in modules)
                    {
                        Structs.ModuleList m = new Structs.ModuleList();
                        m.Name = o.ModuleName;
                        m.baseAddressDec = (int)o.BaseAddress;
                        m.baseAddressHex = (o.BaseAddress).ToString("X");
                        patternList.Modules.Add(m);

                        // Check module base if exist.
                        if (patternList.baseModuleName != "")
                            if (patternList.baseModuleName.ToLower() == o.ModuleName.ToLower())
                                baseModule = (uint)o.BaseAddress;
                    }
                }
                catch { }

                foreach (Structs.Pattern p in patternList.Patterns)
                {
                    try
                    {
                        uint dwCodeLoc = memread.FindPattern(p.pattern, p.mask);
                        uint offset = memread.ReadUInt((uint)((int)dwCodeLoc + p.offsetLocation));
                        if (offset > 0)
                        {
                            offset = offset - baseModule;
                            dwCodeLoc = dwCodeLoc - baseModule;
                        }


                        if (offset > 0)
                        {
                            // Dump offset
                            p.offset = offset.ToString("X");
                            p.offsetDec = offset;
                            p.offsetUsedAtDec = (uint)((int)dwCodeLoc + p.offsetLocation);
                            p.offsetUsedAt = ((int)dwCodeLoc + p.offsetLocation).ToString("X");
                            try
                            {
                                switch (p.type)
                                {
                                    case "int64":
                                        p.value = Convert.ToString(memread.ReadUInt64(p.offsetDec));
                                        break;
                                    case "int":
                                        p.value = Convert.ToString(memread.ReadInt(p.offsetDec));
                                        break;
                                    case "float":
                                        p.value = Convert.ToString(memread.ReadFloat(p.offsetDec));
                                        break;
                                    case "string":
                                        p.value = Convert.ToString(memread.ReadASCIIString(p.offsetDec, 30));
                                        break;
                                }
                            }
                            catch { p.value = "No Found"; }
                        }
                        else
                            p.offset = "No Found";

                    }
                    catch
                    { p.offset = "No Found"; }
                    newPatternList.Patterns.Add(p);
                }
                memread.Close();
            }
            else
            {
                MessageBox.Show("Process no found.");
            }
            return patternList;
        }
    }
}
