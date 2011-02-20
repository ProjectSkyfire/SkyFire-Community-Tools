Imports System.Collections.Generic
Imports System.Text
Imports System.Diagnostics
Imports System.Runtime.InteropServices


Public Class clsMemory
    Private m_hProcess As IntPtr
    Private m_modBase As UInteger

    Public Sub New(ByVal processName As String)
        Dim matches As Process() = Process.GetProcessesByName(processName)
        If matches Is Nothing OrElse matches.Length = 0 Then
            Throw New ArgumentException("No process exists with that name!", "processName")
        End If
        m_hProcess = matches(0).Handle
        m_modBase = CUInt(matches(0).MainModule.BaseAddress.ToInt32())
    End Sub

    Public ReadOnly Property Base() As UInteger
        Get
            Return m_modBase
        End Get
    End Property

    Public Function Read(Of T As Structure)(ByVal address As IntPtr) As T
        Return Read(Of T)(CUInt(address.ToInt32()))
    End Function

    Private Function Read(Of T As Structure)(ByVal addr As UInteger) As T
        Dim size = Marshal.SizeOf(GetType(T))
        Dim buffer As Byte() = New Byte(size - 1) {}

        ReadProcessMemory(m_hProcess, addr, buffer, size)

        Dim ptr = Marshal.AllocCoTaskMem(size)
        Marshal.Copy(buffer, 0, ptr, size)
        Dim ret = DirectCast(Marshal.PtrToStructure(ptr, GetType(T)), T)
        Marshal.FreeCoTaskMem(ptr)

        Return ret
    End Function

    Public Sub Write(Of T As Structure)(ByVal addr As IntPtr, ByVal value As T)
        Write(CUInt(addr.ToInt32()), value)
    End Sub

    Public Sub Write(Of T As Structure)(ByVal addr As UInteger, ByVal value As T)
        Dim size As Integer = Marshal.SizeOf(value)
        Dim ptr As IntPtr = Marshal.AllocCoTaskMem(size)
        Marshal.StructureToPtr(value, ptr, False)
        Dim ret As Integer = WriteProcessMemory(m_hProcess, addr, ptr, size)
        Marshal.FreeCoTaskMem(ptr)
        If ret = 0 Then
            Throw New ArgumentException("address is not valid!", "address")
        End If
    End Sub




    <DllImport("Kernel32.dll")> _
    Private Shared Function ReadProcessMemory(ByVal hProcess As IntPtr, ByVal lpBaseAddress As IntPtr, <Out()> ByVal lpBuffer() As Byte, ByVal dwSize As Integer, Optional ByVal lpNumberOfBytesRead As Integer = 0) As Boolean
    End Function



    '    <DllImport("Kernel32.dll")> _
    '    Private Shared Function ReadProcessMemory(ByVal proc As IntPtr, ByVal addr As UInteger, <[In](), Out()> ByVal buffer As Byte(), ByVal len As Integer) As Integer
    '    End Function

    <DllImport("Kernel32.dll")> _
    Private Shared Function WriteProcessMemory(ByVal proc As IntPtr, ByVal addr As UInteger, ByVal buffer As IntPtr, ByVal len As Integer) As Integer
    End Function
End Class
