namespace Offset_Finder
{
    partial class MainForm
    {
        /// <summary>
        /// Variable nécessaire au concepteur.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Nettoyage des ressources utilisées.
        /// </summary>
        /// <param name="disposing">true si les ressources managées doivent être supprimées ; sinon, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Code généré par le Concepteur Windows Form

        /// <summary>
        /// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
        /// le contenu de cette méthode avec l'éditeur de code.
        /// </summary>
        private void InitializeComponent()
        {
            this.cbListPatternList = new System.Windows.Forms.ComboBox();
            this.tbResult = new System.Windows.Forms.TextBox();
            this.bForCsharp = new System.Windows.Forms.Button();
            this.bForAutoIT = new System.Windows.Forms.Button();
            this.bAllInfo = new System.Windows.Forms.Button();
            this.bForIni = new System.Windows.Forms.Button();
            this.bCreatePattern = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // cbListPatternList
            // 
            this.cbListPatternList.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.cbListPatternList.FormattingEnabled = true;
            this.cbListPatternList.Location = new System.Drawing.Point(12, 12);
            this.cbListPatternList.Name = "cbListPatternList";
            this.cbListPatternList.Size = new System.Drawing.Size(398, 21);
            this.cbListPatternList.TabIndex = 1;
            // 
            // tbResult
            // 
            this.tbResult.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.tbResult.Location = new System.Drawing.Point(12, 39);
            this.tbResult.Multiline = true;
            this.tbResult.Name = "tbResult";
            this.tbResult.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.tbResult.Size = new System.Drawing.Size(501, 331);
            this.tbResult.TabIndex = 2;
            // 
            // bForCsharp
            // 
            this.bForCsharp.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.bForCsharp.Location = new System.Drawing.Point(12, 373);
            this.bForCsharp.Name = "bForCsharp";
            this.bForCsharp.Size = new System.Drawing.Size(107, 23);
            this.bForCsharp.TabIndex = 3;
            this.bForCsharp.Text = "Dump for C#";
            this.bForCsharp.UseVisualStyleBackColor = true;
            this.bForCsharp.Click += new System.EventHandler(this.bForCsharp_Click);
            // 
            // bForAutoIT
            // 
            this.bForAutoIT.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.bForAutoIT.Location = new System.Drawing.Point(125, 373);
            this.bForAutoIT.Name = "bForAutoIT";
            this.bForAutoIT.Size = new System.Drawing.Size(113, 23);
            this.bForAutoIT.TabIndex = 4;
            this.bForAutoIT.Text = "Dump for AutoIT";
            this.bForAutoIT.UseVisualStyleBackColor = true;
            this.bForAutoIT.Click += new System.EventHandler(this.bForAutoIT_Click);
            // 
            // bAllInfo
            // 
            this.bAllInfo.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.bAllInfo.Location = new System.Drawing.Point(363, 373);
            this.bAllInfo.Name = "bAllInfo";
            this.bAllInfo.Size = new System.Drawing.Size(150, 23);
            this.bAllInfo.TabIndex = 5;
            this.bAllInfo.Text = "Dump All Info";
            this.bAllInfo.UseVisualStyleBackColor = true;
            this.bAllInfo.Click += new System.EventHandler(this.bAllInfo_Click);
            // 
            // bForIni
            // 
            this.bForIni.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
            this.bForIni.Location = new System.Drawing.Point(244, 373);
            this.bForIni.Name = "bForIni";
            this.bForIni.Size = new System.Drawing.Size(113, 23);
            this.bForIni.TabIndex = 6;
            this.bForIni.Text = "Dump for INI file";
            this.bForIni.UseVisualStyleBackColor = true;
            this.bForIni.Click += new System.EventHandler(this.bForIni_Click);
            // 
            // bCreatePattern
            // 
            this.bCreatePattern.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bCreatePattern.Location = new System.Drawing.Point(416, 12);
            this.bCreatePattern.Name = "bCreatePattern";
            this.bCreatePattern.Size = new System.Drawing.Size(97, 21);
            this.bCreatePattern.TabIndex = 7;
            this.bCreatePattern.Text = "Create Pattern";
            this.bCreatePattern.UseVisualStyleBackColor = true;
            this.bCreatePattern.Click += new System.EventHandler(this.bCreatePattern_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(525, 397);
            this.Controls.Add(this.bCreatePattern);
            this.Controls.Add(this.bForIni);
            this.Controls.Add(this.bAllInfo);
            this.Controls.Add(this.bForAutoIT);
            this.Controls.Add(this.bForCsharp);
            this.Controls.Add(this.tbResult);
            this.Controls.Add(this.cbListPatternList);
            this.Name = "MainForm";
            this.ShowIcon = false;
            this.Text = "Offset Finder - v 0.4 - By RivaL";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cbListPatternList;
        private System.Windows.Forms.TextBox tbResult;
        private System.Windows.Forms.Button bForCsharp;
        private System.Windows.Forms.Button bForAutoIT;
        private System.Windows.Forms.Button bAllInfo;
        private System.Windows.Forms.Button bForIni;
        private System.Windows.Forms.Button bCreatePattern;
    }
}

