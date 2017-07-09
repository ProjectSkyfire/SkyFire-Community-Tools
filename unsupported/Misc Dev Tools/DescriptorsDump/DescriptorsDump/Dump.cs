using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System.Windows.Forms;
using System.IO;
using System.Threading;

namespace DescriptorsDump
{
    class Dump
    {
        static Magic.BlackMagic memory = null;

        internal static string Go(string prefixEnum) { return Go(prefixEnum, true); }
        internal static string Go(bool multiply) { return Go("", multiply); }
        internal static string Go(string prefixEnum, bool multiply)
        {
            try
            {
                // Open Process
                OpenFileDialog ChooseFile = new OpenFileDialog();
                ChooseFile.Filter = "Executable Wow (*.exe)|*.exe|All files (*.*)|*.*";
                ChooseFile.ShowDialog();
                if (ChooseFile.FileName == "")
                    return "";
                if (!File.Exists(ChooseFile.FileName))
                    return "Executable not found.";
                ProcessStartInfo processInfo = new ProcessStartInfo(@ChooseFile.FileName);
                Process myProcess = Process.Start(processInfo);
                Thread.Sleep(700);
                /*
                Process[] processesByNameList = Process.GetProcessesByName("Wow");
                if (processesByNameList.Length <= 0)
                    return "Process not found.";
                myProcess = processesByNameList[0];
                 */
                memory = new Magic.BlackMagic(myProcess.Id);
                if (!memory.IsProcessOpen)
                    return "Process not open.";

                // Check function
                uint dwStartFunc;
                dwStartFunc = memory.FindPattern("56 57 68 00 00 00 00 B8 06", "xxx????xx"); // Wow > 4.0.0
                if (dwStartFunc <= 0)
                    dwStartFunc = memory.FindPattern("56 57 68 00 00 00 00 B8 05", "xxx????xx"); // Wow < 4.0.0
                if (dwStartFunc <= 0)
                {
                    memory.Close();
                    myProcess.Kill();
                    myProcess.Close();
                    return "Descriptors function not found.";
                }

                // Get base adresse of all Field.
                uint s_objectDescriptors, s_unitDescriptors, s_itemDescriptors, s_playerDescriptors, s_containerDescriptors, s_gameobjectDescriptors, s_dynamicobjectDescriptors, s_corpseDescriptors;
                s_objectDescriptors = memory.ReadUInt(dwStartFunc + 0xD);
                s_itemDescriptors = memory.ReadUInt(dwStartFunc + 0x32);
                s_containerDescriptors = memory.ReadUInt(dwStartFunc + 0x57);
                s_unitDescriptors = memory.ReadUInt(dwStartFunc + 0x7C);
                s_playerDescriptors = memory.ReadUInt(dwStartFunc + 0xA1);
                s_gameobjectDescriptors = memory.ReadUInt(dwStartFunc + 0xC6);
                s_dynamicobjectDescriptors = memory.ReadUInt(dwStartFunc + 0xEB);
                s_corpseDescriptors = memory.ReadUInt(dwStartFunc + 0x110);
                if (s_objectDescriptors <= 0 || s_itemDescriptors <= 0 || s_containerDescriptors <= 0 || s_unitDescriptors <= 0 || s_playerDescriptors <= 0 || s_gameobjectDescriptors <= 0 || s_dynamicobjectDescriptors <= 0 || s_corpseDescriptors <= 0)
                {
                    memory.Close();
                    myProcess.Kill();
                    myProcess.Close();
                    return "Field not found.";
                }

                // Get Field
                string retVal = "";
                uint OBJECT_END = 0;
                uint UNIT_END = 0;
                uint ITEM_END = 0;
                uint PLAYER_END = 0;
                uint CONTAINER_END = 0;
                uint GAMEOBJECT_END = 0;
                uint DYNAMICOBJECT_END = 0;
                uint CORPSE_END = 0;

                retVal = retVal + DumpField("ObjectFields", "OBJECT", s_objectDescriptors, 0, out OBJECT_END, prefixEnum, multiply);
                retVal = retVal + DumpField("UnitFields", "UNIT", s_unitDescriptors, OBJECT_END, out UNIT_END, prefixEnum, multiply);
                UNIT_END = UNIT_END + OBJECT_END;
                retVal = retVal + DumpField("ItemFields", "ITEM", s_itemDescriptors, OBJECT_END, out ITEM_END, prefixEnum, multiply);
                ITEM_END = ITEM_END + OBJECT_END;
                retVal = retVal + DumpField("PlayerFields", "PLAYER", s_playerDescriptors, UNIT_END, out PLAYER_END, prefixEnum, multiply);
                PLAYER_END = PLAYER_END + UNIT_END;
                retVal = retVal + DumpField("ContainerFields", "CONTAINER", s_containerDescriptors, ITEM_END, out CONTAINER_END, prefixEnum, multiply);
                CONTAINER_END = CONTAINER_END + ITEM_END;
                retVal = retVal + DumpField("GameObjectFields", "GAMEOBJECT", s_gameobjectDescriptors, OBJECT_END, out GAMEOBJECT_END, prefixEnum, multiply);
                GAMEOBJECT_END = GAMEOBJECT_END + OBJECT_END;
                retVal = retVal + DumpField("DynamicObjectFields", "DYNAMICOBJECT", s_dynamicobjectDescriptors, OBJECT_END, out DYNAMICOBJECT_END, prefixEnum, multiply);
                DYNAMICOBJECT_END = DYNAMICOBJECT_END + OBJECT_END;
                retVal = retVal + DumpField("CorpseFields", "CORPSE", s_corpseDescriptors, OBJECT_END, out CORPSE_END, prefixEnum, multiply);
                CORPSE_END = CORPSE_END + OBJECT_END;

                // Dispose Process
                memory.Close();
                myProcess.Kill();
                myProcess.Close();
                // Return value
                return retVal;
            }
            catch (Exception e)
            {
                return e + Environment.NewLine + Environment.NewLine + " Exception caught.";
            }
        }

        static string DumpField(string szName, string szPrefix, uint dwPointer, uint LastIndex, out uint outLastIndex, string prefixEnum, bool multiply)
        {
            string valueReturn = "";
            uint dwLastIndex = 0;

            outLastIndex = 0;

            valueReturn = valueReturn + "public enum " + prefixEnum + szName + Environment.NewLine + "{" + Environment.NewLine;

            while (true)
            {
                // Get name:
                string pszName;
                pszName = memory.ReadASCIIString(memory.ReadUInt(dwPointer), 50);
                uint multiplyNum = 1;
                if (multiply)
                    multiplyNum = 4;

                if (pszName == "")
                    break;

                if (pszName.Replace(szPrefix, "").Length > 0 && pszName.Contains(szPrefix) || ("GAMEOBJECT" == szPrefix && pszName == "OBJECT_FIELD_CREATED_BY"))
                {
                    uint dwIndexTemps;
                    dwIndexTemps = memory.ReadUInt(dwPointer + 4);
                    dwLastIndex = dwIndexTemps + memory.ReadUInt(dwPointer + 8);

                    valueReturn = valueReturn + "   " + pszName + " = 0x" + ((LastIndex + dwIndexTemps) * multiplyNum).ToString("X") + "," + Environment.NewLine;
                }

                dwPointer = dwPointer + 0x14;
            }

            valueReturn = valueReturn + "};" + Environment.NewLine + Environment.NewLine;

            outLastIndex = dwLastIndex;
            return valueReturn;
        }
    }
}
