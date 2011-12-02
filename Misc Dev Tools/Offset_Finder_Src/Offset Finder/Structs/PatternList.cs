using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Offset_Finder.Structs
{
    [Serializable]
    public class PatternList
    {
        public string processName = "";
        public string baseModuleName = "";
        internal List<ModuleList> Modules = new List<ModuleList>();
        public List<Pattern> Patterns = new List<Pattern>();
    }
}
