using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.IO;
using System.Windows.Forms;

namespace SkyFirePatcher
{
    public partial class Form1 : Form
    {
        byte[] wowExe = null;
        Dictionary<int, List<PatchBytes>> Patches = new Dictionary<int, List<PatchBytes>>();
        List<PatchBytes> patches = null;
        const string FileWin = "Wow.exe";
        const string BackupWin = "Wow_backup.exe";
        const string FileMac = "World of Warcraft";
        const string BackupMac = "World of Warcraft backup";
        string FileName;
        string BackupFile;

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
            foreach (Type t in Assembly.GetExecutingAssembly().GetTypes())
            {
                if (t.IsSubclassOf(typeof(PatchInfo)))
                {
                    PatchInfo pInfo = (PatchInfo)t.GetConstructor(new Type[] { }).Invoke(new Object[] { });
                    Patches.Add(pInfo.ExeLength, pInfo.Patches);
                }
            }
            try
            {
                richTextBox1.AppendText("Loading Wow.exe into memory...\n");
                wowExe = ReadByteArrayFromFile(FileWin);
                if(!Patches.ContainsKey(wowExe.Length))
                {
                    richTextBox1.AppendText("This Wow.exe version is not supported\n");
                    throw new Exception("Version not supported");
                }
                patches = Patches[wowExe.Length];
                richTextBox1.AppendText("Success Windows 'wow.exe' loaded!\n");
                BackupFile = BackupWin;
                FileName = FileWin;
            }
            catch
            {
                try
                {
                    richTextBox1.AppendText("Loading Mac 'World of Warcraft' binary into memory...\n");
                    wowExe = ReadByteArrayFromFile(FileMac);
                    richTextBox1.AppendText("Success Mac 'World of Warcraft' loaded!\n");
                    BackupFile = BackupMac;
                    FileName = FileMac;
                    if (!Patches.ContainsKey(wowExe.Length))
                    {
                        richTextBox1.AppendText("This Mac version is not supported\n");
                        throw new Exception("Version not supported");
                    }
                    patches = patches = Patches[wowExe.Length];
                }
                catch
                {
                    richTextBox1.AppendText("Could not load Win 'Wow.exe' or Mac 'World of Warcraft' into memory. Make sure this program is in your WoW directory and that WoW is closed.\n");
                    label2.Text = "Error";
                    label2.ForeColor = Color.Red;
                    wowExe = null;
                }
                //filenotfound or fileinuse
            }

            if (wowExe != null)
            {
                byte[] testPatched = new byte[patches[0].Unpatched.Length];
                System.Buffer.BlockCopy(wowExe, patches[0].Offset, testPatched, 0, patches[0].Unpatched.Length);

                if (testPatched.SequenceEqual(patches[0].Unpatched))
                {
                    richTextBox1.AppendText("Ready to patch " + FileName + ".\n");
                    label2.Text = "Ready!";
                    label2.ForeColor = Color.Orange;
                    button1.Text = "Patch";
                    button1.Enabled = true;
                }
                if (testPatched.SequenceEqual(patches[0].Patched))
                {
                    richTextBox1.AppendText("To restore " + FileName + " click \"Unpatch\".\n");
                    label2.Text = "Ready!";
                    label2.ForeColor = Color.Orange;
                    button1.Text = "Unpatch";
                    button1.Enabled = true;
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (((Button)sender).Text == "Patch")
            {
                foreach (PatchBytes p in patches)
                {
                    System.Buffer.BlockCopy(p.Patched, 0, wowExe, p.Offset, p.Patched.Length);
                }
                try { File.Delete(BackupFile); } catch { }
                try { File.Move(FileName, BackupFile); } catch {}

                if (WriteByteArrayToFile(wowExe, FileName) == true)
                {
                    richTextBox1.AppendText("Successfully patched " + FileName + " and created a backup " + BackupFile +"!\n");
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
                foreach (PatchBytes p in patches)
                {
                    System.Buffer.BlockCopy(p.Unpatched, 0, wowExe, p.Offset, p.Unpatched.Length);
                }
                try { File.Delete(FileName); File.Delete(BackupFile); }
                catch { };

                if (WriteByteArrayToFile(wowExe, FileName) == true)
                {
                    richTextBox1.AppendText("Successfully unpatched " + FileName + "!\n");
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
