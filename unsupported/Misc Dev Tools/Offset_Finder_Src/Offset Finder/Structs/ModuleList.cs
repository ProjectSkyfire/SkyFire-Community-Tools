using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Offset_Finder.Structs
{
    [Serializable]
    public class ModuleList
    {
        public string Name = "";
        public int baseAddressDec = 0;
        public string baseAddressHex = "";
    }
}
