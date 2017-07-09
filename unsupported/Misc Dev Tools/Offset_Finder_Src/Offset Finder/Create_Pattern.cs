using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;
using Magic;

namespace Offset_Finder
{
    public partial class Create_Pattern : Form
    {
        public Create_Pattern()
        {
            InitializeComponent();
        }

        private void Create_Pattern_Shown(object sender, EventArgs e)
        {
            cbValueType.Text = "int";
        }

        #region CreatePatternByProcess

        private void cbProcess1_Click(object sender, EventArgs e)
        {
            cbProcess1.Items.Clear();
            Process[] processesList = Process.GetProcesses();
            foreach (Process p in processesList)
            {
                cbProcess1.Items.Add((object)(p.Id + " - " + p.ProcessName));
            }
        }
        private void cbProcess2_Click(object sender, EventArgs e)
        {
            cbProcess2.Items.Clear();
            Process[] processesList = Process.GetProcesses();
            foreach (Process p in processesList)
            {
                cbProcess2.Items.Add((object)(p.Id + " - " + p.ProcessName));
            }
        }

        private void bCreatePattern_Click(object sender, EventArgs e)
        {
            if (cbProcess1.Text.Replace(" ", "") != "" && cbProcess2.Text.Replace(" ", "") != "" && tbOffset1.Text.Replace(" ", "").Replace("0x", "") != "" && tbOffset2.Text.Replace(" ", "").Replace("0x", "") != "")
            {
                string[] process1Array = cbProcess1.Text.Replace(" ", "").Split(Convert.ToChar("-"));
                string[] process2Array = cbProcess2.Text.Replace(" ", "").Split(Convert.ToChar("-"));
                if (process1Array != null && process2Array != null)
                {
                    if (process1Array.Length > 0 && process2Array.Length > 0)
                    {
                        try
                        {
                            // Process choose to ID
                            int process1Id = Convert.ToInt32(process1Array[0]);
                            int process2Id = Convert.ToInt32(process2Array[0]);

                            // Open Process
                            BlackMagic process1BM = new BlackMagic();
                            BlackMagic process2BM = new BlackMagic();
                            if (!process1BM.OpenProcessAndThread(process1Id))
                            {
                                MessageBox.Show("Open Process 1 failled.");
                                return;
                            }
                            if (!process2BM.OpenProcessAndThread(process2Id))
                            {
                                MessageBox.Show("Open Process 2 failled.");
                                return;
                            }

                            // Get Module
                            uint moduleBase1BM = 0;
                            uint moduleBase2BM = 0;
                            string moduleShow = "";
                            if (baseModuleNameTB.Text != "")
                            {
                                moduleBase1BM = (uint)process1BM.GetModule(baseModuleNameTB.Text).BaseAddress;
                                moduleBase2BM = (uint)process2BM.GetModule(baseModuleNameTB.Text).BaseAddress;
                                moduleShow = baseModuleNameTB.Text + " + ";
                                if (moduleBase1BM <= 0 || moduleBase2BM <= 0)
                                {
                                    MessageBox.Show("Module not found.");
                                    return;
                                }
                            }

                            // Offset choose to uint
                            uint offset1 = uint.Parse(tbOffset1.Text.Replace(" ", "").Replace("0x", ""), System.Globalization.NumberStyles.HexNumber) + moduleBase1BM;
                            uint offset2 = uint.Parse(tbOffset2.Text.Replace(" ", "").Replace("0x", ""), System.Globalization.NumberStyles.HexNumber) + moduleBase2BM;

                            // Offset to 4 Byte
                            string tPattern1 = offset1.ToString("X");
                            while (tPattern1.Length < 8)
                                tPattern1 = "0" + tPattern1;
                            string tPattern2 = offset2.ToString("X");
                            while (tPattern2.Length < 8)
                                tPattern2 = "0" + tPattern2;

                            // Offset 4 byte inverse
                            string t2Pattern1 = tPattern1.Substring(6, 2);
                            t2Pattern1 += " " + tPattern1.Substring(4, 2);
                            t2Pattern1 += " " + tPattern1.Substring(2, 2);
                            t2Pattern1 += " " + tPattern1.Substring(0, 2);
                            string t2Pattern2 = tPattern2.Substring(6, 2);
                            t2Pattern2 += " " + tPattern2.Substring(4, 2);
                            t2Pattern2 += " " + tPattern2.Substring(2, 2);
                            t2Pattern2 += " " + tPattern2.Substring(0, 2);

                            // Find offset used at
                            string tMask = "xxxx";
                            uint dwCodeLoc1 = process1BM.FindPattern(t2Pattern1, tMask);
                            uint dwCodeLoc2 = process2BM.FindPattern(t2Pattern2, tMask);
                            if (dwCodeLoc1 <= 0 || dwCodeLoc2 <= 0)
                            {
                                MessageBox.Show("Offset not found.");
                                return;
                            }

                            // Read Pattern
                            byte[] bytesPorcess1 = process1BM.ReadBytes(dwCodeLoc1, 16);
                            byte[] bytesPorcess2 = process2BM.ReadBytes(dwCodeLoc2, 16);

                            // Make mask
                            string mask = "";
                            for (int i = 0; i <= bytesPorcess1.Length - 1; i++)
                            {
                                if (bytesPorcess1[i] == bytesPorcess2[i] && i > 3)
                                    mask += "x";
                                else
                                {
                                    bytesPorcess1[i] = 0;
                                    bytesPorcess2[i] = 0;
                                    mask += "?";
                                }
                            }

                            // Pattern to String
                            string pattern = BitConverter.ToString(bytesPorcess1);
                            pattern = pattern.Replace("-", " ");

                            // Show Result
                            tbPattern.Text = "";
                            tbPattern.Text += "Offset 1 used at: " + moduleShow + "0x" + (dwCodeLoc1 - moduleBase1BM).ToString("x") + Environment.NewLine;
                            tbPattern.Text += "Offset 2 used at: " + moduleShow + "0x" + (dwCodeLoc2 - moduleBase2BM).ToString("x") + Environment.NewLine + Environment.NewLine;
                            tbPattern.Text += "<Pattern>" + Environment.NewLine;
                            tbPattern.Text += "     <offsetName>" + tbOffsetName.Text + "</offsetName>" + Environment.NewLine;
                            tbPattern.Text += "     <pattern>" + pattern + "</pattern>" + Environment.NewLine;
                            tbPattern.Text += "     <mask>" + mask + "</mask>" + Environment.NewLine;
                            tbPattern.Text += "     <offsetLocation>0</offsetLocation>" + Environment.NewLine;
                            tbPattern.Text += "     <type>" + cbValueType.Text + "</type>" + Environment.NewLine;
                            tbPattern.Text += "</Pattern>";

                            process1BM.Close();
                            process2BM.Close();
                        }
                        catch
                        {
                            MessageBox.Show("Error, please verif all info.");
                        }
                    }
                    else
                    {
                        MessageBox.Show("Please select Process.");
                    }
                }
                else
                {
                    MessageBox.Show("Please select Process.");
                }
            }
            else
            {
                MessageBox.Show("Please enter all information.");
            }
        }

        #endregion CreatePatternByProcess

        private void bCreatePatternByBytes_Click(object sender, EventArgs e)
        {
            try
            {
                if (tbNewBytes.Text.Replace(" ", "").Length <= 0 || tbOldBytes.Text.Replace(" ", "").Length <= 0)
                {
                    MessageBox.Show("Please enter all information.");
                    return;
                }

                string[] newBytesArray = tbNewBytes.Text.Replace("  ", "").Split(Convert.ToChar(" "));
                string[] oldBytesArray = tbOldBytes.Text.Replace("  ", "").Split(Convert.ToChar(" "));

                if (newBytesArray.Length != oldBytesArray.Length)
                {
                    MessageBox.Show("The size of New Byte is different of the size of Old Byte.");
                    return;
                }

                // Make mask
                string mask = "";
                for (int i = 0; i <= newBytesArray.Length - 1 && i <= 15 ; i++)
                {
                    if (newBytesArray[i] == oldBytesArray[i] && (i > (int)nOffsetLocation.Value + 3 || i < (int)nOffsetLocation.Value))
                        mask += "x";
                    else
                    {
                        newBytesArray[i] = "00";
                        oldBytesArray[i] = "00";
                        mask += "?";
                    }
                }

                // Pattern to String
                string pattern = "";
                for (int i = 0; i <= newBytesArray.Length - 1 && i <= 15 ; i++ )
                {
                    if (pattern != "")
                        pattern += " ";

                    pattern += newBytesArray[i].ToUpper();
                }
                pattern = pattern.Replace("-", " ");

                // Show Result
                tbPattern.Text = "";
                tbPattern.Text += "<Pattern>" + Environment.NewLine;
                tbPattern.Text += "     <offsetName>" + tbOffsetName.Text + "</offsetName>" + Environment.NewLine;
                tbPattern.Text += "     <pattern>" + pattern + "</pattern>" + Environment.NewLine;
                tbPattern.Text += "     <mask>" + mask + "</mask>" + Environment.NewLine;
                tbPattern.Text += "     <offsetLocation>" + nOffsetLocation.Value.ToString() + "</offsetLocation>" + Environment.NewLine;
                tbPattern.Text += "     <type>" + cbValueType.Text + "</type>" + Environment.NewLine;
                tbPattern.Text += "</Pattern>";
            }
            catch
            {
                MessageBox.Show("Error, please verif all info.");
            }
        }

    }
}
