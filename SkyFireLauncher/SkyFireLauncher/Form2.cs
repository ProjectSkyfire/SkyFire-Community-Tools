using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.IO;
using System.Windows.Forms;

namespace SkyFirePatcher
{
    public partial class Form2 : Form
    {

        // WoW 4.0.6a 13623 (release)

        byte[] unpatchedBytes = new byte[] { 0xE8, 0x42, 0xE4, 0xFF, 0xFF };
        byte[] patchedBytes = new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00 };
        int patchOffset = 0x91229;
        int exeLength = 9217176;
        byte[] wowExe = null;

        bool NotConfirmed = true;


        public Form2()
        {
            InitializeComponent();
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            
            try
            {
                InfoText.Text = "This application will Patch Wow.exe, launch the program, then unpatch when it closes.";
                InfoText2.Text = "Please click Patch to continue. The application will stay open in the background.";
                StatusText.Text = "Loading Wow.exe into memory...";
                wowExe = ReadByteArrayFromFile("wow.exe");
                ConfirmText.Text = "Success!";
                ConfirmText.ForeColor = Color.Green;
            }
            catch
            {
                ConfirmText.Text = "Error";
                ConfirmText.ForeColor = Color.Red;
            }

            if (wowExe != null)
            {
                if (wowExe.Length != 9217176)
                {
                    StatusText.Text = "Wrong version, this patch will only work for WoW 4.0.6 13623.";
                    ConfirmText.Text = "Error";
                    ConfirmText.ForeColor = Color.Red;
                }
                else
                {
                    byte[] testPatched = new byte[unpatchedBytes.Length];
                    System.Buffer.BlockCopy(wowExe, patchOffset, testPatched, 0, unpatchedBytes.Length);

                    if (testPatched.SequenceEqual(unpatchedBytes))
                    {
                        StatusText.Text = "Click Launch to begin.";
                        ConfirmText.Text = "Ready!";
                        ConfirmText.ForeColor = Color.Orange;
                        Patch.Text = "Launch!";
                        Patch.Enabled = true;
                    }
                    if (testPatched.SequenceEqual(patchedBytes))
                    {
                        StatusText.Text = "Wow is already patched. Click Launch to begin.";
                        ConfirmText.Text = "Ready!";
                        ConfirmText.ForeColor = Color.Orange;
                        Patch.Text = "Launch";
                        Patch.Enabled = true;
                    }
                }
            }
        }

        private void Patch_Click(object sender, EventArgs e)
        {
            if (((Button)sender).Text == "Launch!")
            {
                System.Buffer.BlockCopy(patchedBytes, 0, wowExe, patchOffset, patchedBytes.Length);
                try { File.Delete("Wow_backup.exe"); } catch { }
                try { File.Move("Wow.exe", "Wow_backup.exe"); } catch {}

                if (WriteByteArrayToFile(wowExe, "Wow.exe") == true)
                {
                    StatusText.Text = "Successfully patched Wow.exe and created a backup Wow_backup.exe!";
                    ConfirmText.Text = "Launching World of Warcraft";
                    ConfirmText.ForeColor = Color.Green;

                    Process WoW = new Process();

                    WoW.StartInfo.FileName = "wow.exe";

                    WoW.Start();

                    Wait.Start();

                }
                else
                {
                    ConfirmText.Text = "Error!";
                    ConfirmText.ForeColor = Color.Red;
                }
            }
            else
            {
                System.Buffer.BlockCopy(unpatchedBytes, 0, wowExe, patchOffset, unpatchedBytes.Length);
                try { File.Delete("Wow.exe"); File.Delete("Wow_backup.exe"); } catch {};

                if (WriteByteArrayToFile(wowExe, "Wow.exe") == true)
                {
                    StatusText.Text = "World of Warcraft is ready to play.";
                    ConfirmText.Text = "Launching World of Warcraft";
                    ConfirmText.ForeColor = Color.Green;

                    Process WoW = new Process();

                    WoW.StartInfo.FileName = "wow.exe";

                    WoW.Start();

                    Wait.Start();
                    
                }
                else
                {
                    ConfirmText.Text = "Error!";
                    ConfirmText.ForeColor = Color.Red;
                }
            }
            StatusText.Text = "Waiting.";
            Patch.Enabled = false;
        }

        public byte[] ReadByteArrayFromFile(string fileName)
        {
            byte[] buff = null;
            FileStream fs = new FileStream(fileName, FileMode.Open, FileAccess.Read);
            BinaryReader br = new BinaryReader(fs);
            long numBytes = new FileInfo(fileName).Length;
            buff = br.ReadBytes((int)numBytes);
            br.Close();
            return buff;
        }

        public bool WriteByteArrayToFile(byte[] buff, string fileName)
        {
            bool response = false;

            try
            {
                FileStream fs = new FileStream(fileName, FileMode.Create, FileAccess.ReadWrite);
                BinaryWriter bw = new BinaryWriter(fs);
                bw.Write(buff);
                bw.Close();
                response = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return response;
        }

        private void IsWoWOpen()
        {
            if (!IsProcessOpen("Wow") && NotConfirmed)
            {   
                StatusText.Text = "World of Warcraft is opening";
                
                ConfirmText.Text = "Waiting for World of Warcraft to Open";
                
                ConfirmText.ForeColor = Color.Orange;

                NotConfirmed = true;

                IsWoWOpen();
            }
            else if (IsProcessOpen("Wow") && NotConfirmed)
            {
                StatusText.Text = "World of Warcraft is detected";
                
                ConfirmText.Text = "Waiting for World of Warcraft to Close";
                
                ConfirmText.ForeColor = Color.Green;

                NotConfirmed = false;

                IsWoWOpen();

            }
            else if (IsProcessOpen("Wow") && !NotConfirmed)
            {
                StatusText.Text = "World of Warcraft is detected";
                
                ConfirmText.Text = "Waiting for World of Warcraft to Close";
                
                ConfirmText.ForeColor = Color.Green;

                IsWoWOpen();

            }
            else if (!IsProcessOpen("Wow") && !NotConfirmed)
            {
                StatusText.Text = "World of Warcraft has been closed";
                
                ConfirmText.Text = "Unpatching the client";
                
                ConfirmText.ForeColor = Color.Orange;

                WoWIsClosed();
            }

        }

        public bool IsProcessOpen(string name)
        {
                foreach (Process clsProcess in Process.GetProcesses())
                {

		            if (clsProcess.ProcessName.Contains(name))
                    { 
                        return true;
                    }
                }
    
                return false;

            }

        private void WoWIsClosed()
        {
            System.Buffer.BlockCopy(unpatchedBytes, 0, wowExe, patchOffset, unpatchedBytes.Length);
            try { File.Delete("Wow.exe"); File.Delete("Wow_backup.exe"); }
            catch { };

            if (WriteByteArrayToFile(wowExe, "Wow.exe") == true)
            {
                StatusText.Text = "Successfully unpatched Wow.exe!";
                ConfirmText.Text = "You may now close the SkyFirePatcher";
                ConfirmText.ForeColor = Color.Green;

            }
            else
            {
                StatusText.Text = "Unable to unpatch Wow.exe";
                ConfirmText.Text = "Error!";
                ConfirmText.ForeColor = Color.Red;
            }

            Wait.Stop();
        }

        private void Wait_Tick(object sender, EventArgs e)
        {
            try
            {
                Thread WoWOpen = new Thread(new ThreadStart(IsWoWOpen));

                Wait.Start();

                WoWOpen.Start();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
    }
}
