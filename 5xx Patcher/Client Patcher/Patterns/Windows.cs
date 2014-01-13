﻿/*
 * Copyright (C) 2012-2013 Arctium Emulation <http://arctium.org>
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace Connection_Patcher.Patterns
{
    class Windows
    {
        public static class x86
        {
            public static byte[] Send  = { 0x8B, 0x45, 0xF4, 0x8B, 0xC8, 0x81, 0xE1 };
            public static byte[] Email = { 0x74, 0x03, 0x33, 0xF6, 0x46, 0x3B, 0xCB };
            public static byte[] User  = { 0x40, 0x56, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x59, 0x59 };
            public static byte[] RaF   = { 0xE8, 0x00, 0x00, 0x00, 0x00, 0x5F, 0x5E, 0x84, 0xC0, 0x74, 0x23 };
        }

        public static class x64
        {
            public static byte[] Send  = { 0x8B, 0x54, 0x24, 0x50, 0x89, 0x77, 0x1C };
            public static byte[] Email = { 0x74, 0x05, 0xBB, 0x00, 0x00, 0x00, 0x00, 0x48, 0x85, 0xC9 };
            public static byte[] User  = { 0x40, 0x00, 0x00, 0x00, 0x48, 0x8B, 0xCF, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x48, 0x85, 0xC0, 0x75, 0x61 };
            public static byte[] RaF   = { 0xE8, 0x00, 0x00, 0x00, 0x00, 0x84, 0xC0, 0x74, 0x2A, 0x48, 0x8D, 0x8C, 0x24 };
        }
    }
}
