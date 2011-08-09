using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SkyFirePatcher
{
    internal class PatchBytes
    {
        public int Offset;
        public byte[] Unpatched;
        public byte[] Patched;
        public PatchBytes(int offset, byte[] unpatched, byte[] patched)
        {
            Offset = offset;
            Unpatched = unpatched;
            Patched = patched;
        }
    }

    internal abstract class PatchInfo
    {
        public int ExeLength;
        public List<PatchBytes> Patches = new List<PatchBytes>();
        protected abstract void Init();
        public PatchInfo()
        {
            Init();
        }
    }

    // WoW 4.2.0a 14480
    class Patch420aWin : PatchInfo
    {
        protected override void Init()
        {
            ExeLength = 10206872;

            Patches.Add(new PatchBytes(0x8705A,
                                       new byte[] { 0x8B, 0x45, 0x0C, 0x83, 0xF8, 0x02, 0x0F, 0x85, 0xA8, 0x00, 0x00, 0x00 },
                                       new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00, 0x90, 0xE9, 0xA9, 0x00, 0x00, 0x00, 0x90 }));

            Patches.Add(new PatchBytes(0x86685,
                                       new byte[] { 0x74, 0x28 },
                                       new byte[] { 0xEB, 0x28 }));
        }
    }

    // WoW 4.2.0 14333
    class Patch420Win : PatchInfo
    {
        protected override void Init()
        {
            ExeLength = 10205848;

            Patches.Add(new PatchBytes(0x86EFA,
                                       new byte[] { 0x8B, 0x45, 0x0C, 0x83, 0xF8, 0x02, 0x0F, 0x85, 0xA8, 0x00, 0x00, 0x00 },
                                       new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00, 0x90, 0xE9, 0xA9, 0x00, 0x00, 0x00, 0x90 }));

            Patches.Add(new PatchBytes(0x86525,
                                       new byte[] { 0x74, 0x28 },
                                       new byte[] { 0xEB, 0x28 }));
        }
    }

    // WoW 4.0.6a 13623 Windows
    class Patch406Win : PatchInfo
    {
        protected override void Init()
        {
            ExeLength = 9217176;

            Patches.Add(new PatchBytes(0x91229,
                                       new byte[] { 0xE8, 0x42, 0xE4, 0xFF, 0xFF },
                                       new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00 }));

            Patches.Add(new PatchBytes(0x90A8D,
                                       new byte[] { 0x0F, 0xB5, 0x40, 0x01, 0x00, 0x00 },
                                       new byte[] { 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 }));
        }
    }

    // WoW 4.0.6a 13623 Mac
    class Patch406Mac : PatchInfo
    {
        protected override void Init()
        {
            ExeLength = 16305824;

            Patches.Add(new PatchBytes(0x347E0E,
                                       new byte[] { 0xE8, 0x9D, 0xF2, 0xFF, 0xFF },
                                       new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00 }));

            Patches.Add(new PatchBytes(0x348BD7,
                                       new byte[] { 0x0F, 0x85, 0x33, 0xFE, 0xFF, 0xFF },
                                       new byte[] { 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 }));
        }
    }
}
