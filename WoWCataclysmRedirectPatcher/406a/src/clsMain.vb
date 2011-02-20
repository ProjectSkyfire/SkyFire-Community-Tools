Imports System.IO

Module clsMain
    'WoW 4.0.6a 13623 (release)

    'Exe Patcher'
    Private unpatchedBytes As Byte() = New Byte() {&HE8, &H42, &HE4, &HFF, &HFF}
    Private patchedBytes As Byte() = New Byte() {&HB8, &H0, &H0, &H0, &H0}
    Private patchOffset As Integer = &H91229
    Private wowExe As Byte() = Nothing
    Private wowExeLength As Integer = 9217176
    ''

    'Memory Patcher'
    Private gNetClient As Integer = &H8B3F8C
    Private offset1 As Integer = &H4660
    Private offset2 As Integer = &H4661
    Private offset3 As Integer = &H4630
    Private offset4 As Integer = &H4634
    ''

    Sub Main()

        ' Change the Console appearance and redisplay.
        Console.Title = "Novo's WoW Cataclysm Redirector Patcher"
        Console.BackgroundColor = ConsoleColor.DarkBlue
        Console.ForegroundColor = ConsoleColor.Cyan
        Console.Clear()
        Console.CursorVisible = False

        Console.WriteLine("              *************************************************              ")
        Console.WriteLine("              * Novo's WoW Cataclysm Redirector Patcher v.0.2 *              ")
        Console.WriteLine("              * (c) 2010 by Novo              www.easy-emu.de *              ")
        Console.WriteLine("              * special thanks to:       TehAvatar and Cromon *              ")
        Console.WriteLine("              *************************************************              ")
        Console.WriteLine(vbCr)

        Console.WriteLine("Patch the process temporarily in Memory or make a permanent patched WoW.exe")
        Console.WriteLine("Press 1 for MemoryPatching or 2 for Permanent ExePatching:")

        Dim cki As ConsoleKeyInfo
        cki = Console.ReadKey
        Console.WriteLine(vbCrLf)

        If cki.Key.ToString = "D1" Then
            PatchInMemory()
        Else
            If cki.Key.ToString = "D2" Then
                LoadProcessInMemory()

            Else
                Console.WriteLine("Invalid Option. Choose between 1 or 2!")
                Console.WriteLine("Press any key to Exit.")
                Console.ReadKey(True)
            End If
        End If

    End Sub


    Private Sub PatchInMemory()
        Try
            Console.WriteLine("Ready to temporarily patch Wow.exe in Memory ...")
            Console.WriteLine("Make sure you are logged in into the Characters Menu!")
            Console.WriteLine(vbCrLf & "Press any key to temporarily patch Wow.exe in Memory ...")
            Console.ReadKey(True)

            Dim mem As New clsMemory("WoW")
            Dim netClient As UInteger = gNetClient + mem.Base
            Dim basePtr As UInteger = mem.Read(Of UInteger)(netClient)
            Dim ofs1 As UInteger = basePtr + offset1
            ' bool QueuePacketsForConnection1;
            Dim ofs2 As UInteger = basePtr + offset2
            ' bool QueuePacketsForConnection2;
            Dim ofs3 As UInteger = basePtr + offset3
            ' ServerConnection* pConnection1;
            Dim ofs4 As UInteger = basePtr + offset4
            ' ServerConnection* pConnection2;
            Dim val1 As Byte = mem.Read(Of Byte)(ofs1)
            Dim ptr1 As UInteger = mem.Read(Of UInteger)(ofs3)
            mem.Write(ofs2, val1)
            ' QueuePacketsForConnection2 = QueuePacketsForConnection1;
            mem.Write(ofs4, ptr1)
            ' pConnection2 = pConnection1;
            Console.WriteLine("WoW patched! You may now enter the world!" & vbCrLf)
            Console.WriteLine("When you wanna close WoW, log out into Characters Menu")
            Console.WriteLine("then press [ENTER] to make changes undone!")
            Console.ReadKey()
            mem.Write(ofs2, CByte(1))
            mem.Write(ofs4, CUInt(0))
            Console.WriteLine("WoW patched back! You can now close WoW without error!")
            Console.WriteLine(vbCrLf & "Press any key to Exit.")
            Console.ReadKey(True)
            Return
        Catch generatedExceptionName As ArgumentException
            Console.WriteLine("Could not open WoW! Please start it first, enter char list and then try again!")
            Console.ReadKey()
            Return
        End Try
    End Sub


    Private Sub LoadProcessInMemory()
        Try
            Console.Write("Loading Wow.exe into memory ...  ")
            wowExe = ReadByteArrayFromFile("Wow.exe")
            Console.WriteLine("Success!")
        Catch
            Console.WriteLine("Failed!")
            Console.WriteLine("Could not load Wow.exe into memory.")
            Console.WriteLine("Make sure this program is in your WoW directory and that WoW is closed.")

            Console.WriteLine(vbCrLf & "Press any key to Exit.")
            Console.ReadKey(True)
            Exit Sub
        End Try

        If wowExe IsNot Nothing Then
            If wowExe.Length <> wowExeLength Then
                Console.Write("WoW.exe Size mismatch.")
                Console.Write("Wrong Wow version, this patch will only work for WoW 4.0.6a 13623.")

                Console.WriteLine(vbCrLf & "Press any key to Exit.")
                Console.ReadKey(True)
                Exit Sub

            Else
                Dim testPatched As Byte() = New Byte(unpatchedBytes.Length - 1) {}
                System.Buffer.BlockCopy(wowExe, patchOffset, testPatched, 0, unpatchedBytes.Length)

                If testPatched.SequenceEqual(unpatchedBytes) Then
                    Console.WriteLine("Ready to patch Wow.exe ...")

                    Console.WriteLine(vbCrLf & "Press any key to patch Wow.exe ...")
                    Console.ReadKey(True)
                    PatchExe()
                Else
                    Console.WriteLine("Correct ByteArray not found.")
                    Console.Write("Wrong Wow version, this patch will only work for WoW 4.0.6a 13623.")

                    Console.WriteLine(vbCrLf & "Press any key to Exit.")
                    Console.ReadKey(True)
                    Exit Sub
                End If

            End If
        End If
    End Sub


    Private Sub PatchExe()
        System.Buffer.BlockCopy(patchedBytes, 0, wowExe, patchOffset, patchedBytes.Length)

        Try
            File.Copy("Wow.exe", "Wow_patched.exe", True)
        Catch
            '
        End Try

        If WriteByteArrayToFile(wowExe, "Wow_patched.exe") = True Then
            Console.WriteLine("Successfully patched Wow.exe to Wow_patched.exe!")

            Console.WriteLine(vbCrLf & "Press any key to Exit.")
            Console.ReadKey(True)
            Exit Sub
        Else
            Console.WriteLine("Failed to patch Wow.exe. Could not create Wow_patched.exe!")

            Console.WriteLine(vbCrLf & "Press any key to Exit.")
            Console.ReadKey(True)
            Exit Sub
        End If
    End Sub


    Public Function ReadByteArrayFromFile(ByVal fileName As String) As Byte()
        Dim buff As Byte() = Nothing
        Dim fs As New FileStream(fileName, FileMode.Open, FileAccess.Read)
        Dim br As New BinaryReader(fs)
        Dim numBytes As Long = New FileInfo(fileName).Length
        buff = br.ReadBytes(CInt(numBytes))
        br.Close()
        Return buff
    End Function


    Public Function WriteByteArrayToFile(ByVal buff As Byte(), ByVal fileName As String) As Boolean
        Dim response As Boolean = False

        Try
            Dim fs As New FileStream(fileName, FileMode.Create, FileAccess.ReadWrite)
            Dim bw As New BinaryWriter(fs)
            bw.Write(buff)
            bw.Close()
            response = True
        Catch ex As Exception
            Console.WriteLine(ex.Message)
        End Try

        Return response
    End Function


End Module
