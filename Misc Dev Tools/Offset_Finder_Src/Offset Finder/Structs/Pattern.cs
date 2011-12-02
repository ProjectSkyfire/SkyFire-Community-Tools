using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Offset_Finder.Structs
{
    [Serializable]
    public class Pattern
    {
        public string pattern = "";
        public string mask = "";
        public int offsetLocation = 0;
        public string type = "";
        public string offsetName = "";

        internal string offset = "";
        internal uint offsetDec = 0;

        internal string offsetUsedAt = "";
        internal uint offsetUsedAtDec = 0;
        internal string value = "";
    }
}
