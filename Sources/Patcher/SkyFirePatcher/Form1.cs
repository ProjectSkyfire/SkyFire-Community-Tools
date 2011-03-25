using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.IO;
using System.Windows.Forms;

namespace SkyFirePatcher
{
    internal class PatchInfo
    {
        public const string fileWin = "Wow.exe";
        public const string fileMac = "World of Warcraft";
        public byte[] unpatchedBytes;
        public byte[] patchedBytes;
        public int patchOffset;
        public byte[] unpatchedBytes2;
        public byte[] patchedBytes2;
        public int patchOffset2;
        public int exeLength;
        public string fileName;
        public string backupFile;
        internal PatchInfo(bool win)
        {
            
            // WoW 4.0.6a 13623 (release)
            if (win)
            {
                fileName = fileWin;
                backupFile = "Wow_backup.exe";

                exeLength = 9217176;

                patchOffset = 0x91229;
                unpatchedBytes = new byte[] { 0xE8, 0x42, 0xE4, 0xFF, 0xFF };
                patchedBytes = new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00 };

                patchOffset2 = 0x90A8D;
                unpatchedBytes2 = new byte[] { 0x0F, 0xB5, 0x40, 0x01, 0x00, 0x00 };
                patchedBytes2 = new byte[] { 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 };
            }
            else // mac
            {
                
                fileName = fileMac;
                backupFile = "World of Warcraft backup";

                exeLength = 16305824;

                patchOffset = 0x347E0E;
                unpatchedBytes = new byte[] { 0xE8, 0x9D, 0xF2, 0xFF, 0xFF };
                patchedBytes = new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00 };

                patchOffset2 = 0x348BD7;
                unpatchedBytes2 = new byte[] { 0x0F, 0x85, 0x33, 0xFE, 0xFF, 0xFF };
                patchedBytes2 = new byte[] { 0x90, 0x90, 0x90, 0x90, 0x90 };
            }
        }
    }
    public partial class Form1 : Form
    {
        byte[] wowExe = null;
        PatchInfo patch = null;

        // WoW 4.0.6 13596 (release)
        /*byte[] unpatchedBytes = new byte[] { 0xE8, 0x42, 0xE4, 0xFF, 0xFF };
        byte[] patchedBytes = new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00 };
        int patchOffset = 0x091369;
        int exeLength = 9216664;
        byte[] wowExe = null;*/

        // WoW 4.0.3 13329 (release)
        /*byte[] unpatchedBytes = new byte[] { 0xE8, 0xC2, 0xE5, 0xFF, 0xFF };
        byte[] patchedBytes =   new byte[] { 0xB8, 0x00, 0x00, 0x00, 0x00 };
        int patchOffset = 0x08FAA9;
        int exeLength = 9175192;*/

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            try
            {
                richTextBox1.AppendText("Loading Wow.exe into memory...\n");
                wowExe = ReadByteArrayFromFile(PatchInfo.fileWin);
                richTextBox1.AppendText("Success Windows 'wow.exe' loaded!\n");
                patch = new PatchInfo(true);
            }
            catch
            {
                try
                {
                    richTextBox1.AppendText("Loading Mac 'World of Warcraft' binary into memory...\n");
                    wowExe = ReadByteArrayFromFile(PatchInfo.fileMac);
                    richTextBox1.AppendText("Success Mac 'World of Warcraft' loaded!\n");
                    patch = new PatchInfo(false);
                }
                catch
                {
                    richTextBox1.AppendText("Could not load Win 'Wow.exe' or Mac 'World of Warcraft' into memory. Make sure this program is in your WoW directory and that WoW is closed.\n");
                    label2.Text = "Error";
                    label2.ForeColor = Color.Red;
                }
                //filenotfound or fileinuse
            }

            if (wowExe != null)
            {
                if (wowExe.Length != patch.exeLength)
                {
                    richTextBox1.AppendText("Wrong version, this patch will only work for WoW 4.0.6a 13623. \n");
                    label2.Text = "Error";
                    label2.ForeColor = Color.Red;
                }
                else
                {
                    byte[] testPatched = new byte[patch.unpatchedBytes.Length];
                    System.Buffer.BlockCopy(wowExe, patch.patchOffset, testPatched, 0, patch.unpatchedBytes.Length);

                    if (testPatched.SequenceEqual(patch.unpatchedBytes))
                    {
                        richTextBox1.AppendText("Ready to patch " + patch.fileName + ".\n");
                        label2.Text = "Ready!";
                        label2.ForeColor = Color.Orange;
                        button1.Text = "Patch";
                        button1.Enabled = true;
                    }
                    if (testPatched.SequenceEqual(patch.patchedBytes))
                    {
                        richTextBox1.AppendText("To restore " + patch.fileName + " click \"Unpatch\".\n");
                        label2.Text = "Ready!";
                        label2.ForeColor = Color.Orange;
                        button1.Text = "Unpatch";
                        button1.Enabled = true;
                    }
                }

            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (((Button)sender).Text == "Patch")
            {
                System.Buffer.BlockCopy(patch.patchedBytes, 0, wowExe, patch.patchOffset, patch.patchedBytes.Length);
                System.Buffer.BlockCopy(patch.patchedBytes2, 0, wowExe, patch.patchOffset2, patch.patchedBytes2.Length);
                try { File.Delete(patch.backupFile); } catch { }
                try { File.Move(patch.fileName, patch.backupFile); } catch {}

                if (WriteByteArrayToFile(wowExe, patch.fileName) == true)
                {
                    richTextBox1.AppendText("Successfully patched " + patch.fileName + " and created a backup " + patch.backupFile +"!\n");
                    label2.Text = "Success!";
                    label2.ForeColor = Color.Green;
                }
                else
                {
                    label2.Text = "Error!";
                    label2.ForeColor = Color.Red;
                }
            }
            else
            {
                System.Buffer.BlockCopy(patch.unpatchedBytes, 0, wowExe, patch.patchOffset, patch.unpatchedBytes.Length);
                System.Buffer.BlockCopy(patch.unpatchedBytes2, 0, wowExe, patch.patchOffset2, patch.unpatchedBytes2.Length);
                try { File.Delete(patch.fileName); File.Delete(patch.backupFile); }
                catch { };

                if (WriteByteArrayToFile(wowExe, patch.fileName) == true)
                {
                    richTextBox1.AppendText("Successfully unpatched " + patch.fileName + "!\n");
                    label2.Text = "Success!";
                    label2.ForeColor = Color.Green;
                }
                else
                {
                    label2.Text = "Error!";
                    label2.ForeColor = Color.Red;
                }
            }
            richTextBox1.AppendText("Done.\n");
            button1.Enabled = false;
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
    }
}
