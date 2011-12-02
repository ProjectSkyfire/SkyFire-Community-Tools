using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Magic;
using System.IO;
using System.Diagnostics;

namespace Offset_Finder
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            Initializer();
        }

        private void Initializer()
        {
            DirectoryInfo repertoire;
            repertoire = Directory.CreateDirectory(Application.StartupPath + "\\PatternList\\");

            foreach (string subfolder in Directory.GetFiles(Directory.GetCurrentDirectory() + "\\PatternList\\", "*.xml"))
            {
                cbListPatternList.Items.Add((object)subfolder.Replace(".xml", "").Replace(Directory.GetCurrentDirectory() + "\\PatternList\\", ""));
            }
        }

        // Others:
        private Structs.PatternList XmlToPatternList(string path)
        {
            if (File.Exists(path))
            {
                try
                {
                    FileStream monXML = new FileStream(path, FileMode.Open, FileAccess.Read);
                    System.Xml.Serialization.XmlSerializer fluxLecture = new System.Xml.Serialization.XmlSerializer(typeof(Structs.PatternList));
                    Structs.PatternList tPatternList = (Structs.PatternList)fluxLecture.Deserialize(monXML);
                    monXML.Close();
                    return tPatternList;
                }
                catch { MessageBox.Show("Xml File have a error."); return null; }
            }
            else
            {
                MessageBox.Show("Select a XML Pattern List.");
                return null;
            }
        }

        // DUMP:
        private void bForCsharp_Click(object sender, EventArgs e)
        {
            tbResult.Clear();
            Structs.PatternList tPatternList = XmlToPatternList(Directory.GetCurrentDirectory() + "\\PatternList\\" + cbListPatternList.Text + ".xml");
            if (tPatternList == null)
                return;

            tPatternList = FindPattern.FindPattern.FindPatternList(tPatternList);
            if (tPatternList == null)
                return;

            string tResult = "";
            tResult = tResult + "///////////////////////////////////////////////////////////" + Environment.NewLine;
            tResult = tResult + "////                     Offset Finding" + Environment.NewLine;
            tResult = tResult + "////                     By RivaL" + Environment.NewLine;
            tResult = tResult + "////               http://www.wow-robot.com/" + Environment.NewLine;
            tResult = tResult + "///////////////////////////////////////////////////////////" + Environment.NewLine + Environment.NewLine;
            foreach (Structs.Pattern p in tPatternList.Patterns)
            {
                tResult = tResult + "public static readonly uint " + p.offsetName + " = 0x" + p.offset + ";" + Environment.NewLine;
            }
            tbResult.Text = tResult;
        }
        private void bForAutoIT_Click(object sender, EventArgs e)
        {
            tbResult.Clear();
            Structs.PatternList tPatternList = XmlToPatternList(Directory.GetCurrentDirectory() + "\\PatternList\\" + cbListPatternList.Text + ".xml");
            if (tPatternList == null)
                return;

            tPatternList = FindPattern.FindPattern.FindPatternList(tPatternList);
            if (tPatternList == null)
                return;

            string tResult = "";
            tResult = tResult + ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;" + Environment.NewLine;
            tResult = tResult + ";;;;                     Offset Finding" + Environment.NewLine;
            tResult = tResult + ";;;;                     By RivaL" + Environment.NewLine;
            tResult = tResult + ";;;;               http://www.wow-robot.com/" + Environment.NewLine;
            tResult = tResult + ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;" + Environment.NewLine + Environment.NewLine;

            foreach (Structs.Pattern p in tPatternList.Patterns)
            {
                tResult = tResult + "Global $" + p.offsetName + " = 0x" + p.offset + Environment.NewLine;
            }
            tbResult.Text = tResult;
        }
        private void bAllInfo_Click(object sender, EventArgs e)
        {
            tbResult.Clear();
            Structs.PatternList tPatternList = XmlToPatternList(Directory.GetCurrentDirectory() + "\\PatternList\\" + cbListPatternList.Text + ".xml");
            if (tPatternList == null)
                return;

            tPatternList = FindPattern.FindPattern.FindPatternList(tPatternList);
            if (tPatternList == null)
                return;

            string moduleShow = "";
            if (tPatternList.processName != "")
                moduleShow = tPatternList.baseModuleName + " + ";

            string tResult = "";

            tResult = tResult + "____________________________________________________________" + Environment.NewLine;
            tResult = tResult + "|                        Offset Finding                    " + Environment.NewLine;
            tResult = tResult + "|                        By RivaL                          " + Environment.NewLine;
            tResult = tResult + "|                  http://www.wow-robot.com/               " + Environment.NewLine;
            tResult = tResult + "|__________________________________________________________" + Environment.NewLine + Environment.NewLine;

            tResult = tResult + "Process: " + tPatternList.processName + ".exe" + Environment.NewLine + Environment.NewLine + "__________________ " + Environment.NewLine;

            tResult = tResult + "__________________ " + Environment.NewLine + "OFFSET:" + Environment.NewLine + Environment.NewLine;
            foreach (Structs.Pattern p in tPatternList.Patterns)
            {
                tResult = tResult + "Offset Name: " + p.offsetName + Environment.NewLine;
                tResult = tResult + "Pattern: " + p.pattern + Environment.NewLine;
                tResult = tResult + "Mask: " + p.mask + Environment.NewLine;
                tResult = tResult + "Offset Used At (Decimal): " + moduleShow + p.offsetUsedAtDec + Environment.NewLine;
                tResult = tResult + "Offset Used At (Haxadecimal): " + moduleShow + "0x" + p.offsetUsedAt + Environment.NewLine;
                tResult = tResult + "Offset Location: " + p.offsetLocation + Environment.NewLine;
                tResult = tResult + "Offset (Decimal): " + moduleShow + p.offsetDec + Environment.NewLine;
                tResult = tResult + "Offset (Hexadecimal): " + moduleShow + "0x" + p.offset + Environment.NewLine;
                tResult = tResult + "Type: " + p.type + Environment.NewLine;
                tResult = tResult + "Offset current Value: " + p.value + Environment.NewLine;
                tResult = tResult + "__________________ " + Environment.NewLine;
            }

            tResult = tResult + "Modules: " + Environment.NewLine + Environment.NewLine;
            foreach (Structs.ModuleList m in tPatternList.Modules)
            {
                tResult = tResult + "Name: " + m.Name + Environment.NewLine;
                tResult = tResult + "Base Addresse(Decimal): " + m.baseAddressDec + Environment.NewLine;
                tResult = tResult + "Base Addresse(Hexadecimal): " + "0x" + m.baseAddressHex + Environment.NewLine + Environment.NewLine;
            }

            tbResult.Text = tResult;
        }
        private void bForIni_Click(object sender, EventArgs e)
        {
            tbResult.Clear();
            Structs.PatternList tPatternList = XmlToPatternList(Directory.GetCurrentDirectory() + "\\PatternList\\" + cbListPatternList.Text + ".xml");
            if (tPatternList == null)
                return;

            tPatternList = FindPattern.FindPattern.FindPatternList(tPatternList);
            if (tPatternList == null)
                return;

            string tResult = "";
            tResult = tResult + ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;" + Environment.NewLine;
            tResult = tResult + ";;;;                     Offset Finding" + Environment.NewLine;
            tResult = tResult + ";;;;                     By RivaL" + Environment.NewLine;
            tResult = tResult + ";;;;               http://www.wow-robot.com/" + Environment.NewLine;
            tResult = tResult + ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;" + Environment.NewLine + Environment.NewLine;

            foreach (Structs.Pattern p in tPatternList.Patterns)
            {
                tResult = tResult + p.offsetName + " = " + p.offset + Environment.NewLine;
            }
            tbResult.Text = tResult;
        }

        private void bCreatePattern_Click(object sender, EventArgs e)
        {
            Create_Pattern formCreatePattern = new Create_Pattern();
            formCreatePattern.Show();
        }
    }
}
