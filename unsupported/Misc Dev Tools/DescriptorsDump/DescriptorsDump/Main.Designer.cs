namespace DescriptorsDump
{
    partial class Main
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
            this.dumpTB = new System.Windows.Forms.TextBox();
            this.dumpB = new System.Windows.Forms.Button();
            this.multiplyCB = new System.Windows.Forms.CheckBox();
            this.prefixEnumTB = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // dumpTB
            // 
            this.dumpTB.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.dumpTB.Location = new System.Drawing.Point(12, 12);
            this.dumpTB.Multiline = true;
            this.dumpTB.Name = "dumpTB";
            this.dumpTB.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.dumpTB.Size = new System.Drawing.Size(514, 374);
            this.dumpTB.TabIndex = 0;
            // 
            // dumpB
            // 
            this.dumpB.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.dumpB.Location = new System.Drawing.Point(12, 392);
            this.dumpB.Name = "dumpB";
            this.dumpB.Size = new System.Drawing.Size(235, 23);
            this.dumpB.TabIndex = 1;
            this.dumpB.Text = "Dump Descriptors";
            this.dumpB.UseVisualStyleBackColor = true;
            this.dumpB.Click += new System.EventHandler(this.dumpB_Click);
            // 
            // multiplyCB
            // 
            this.multiplyCB.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.multiplyCB.AutoSize = true;
            this.multiplyCB.Checked = true;
            this.multiplyCB.CheckState = System.Windows.Forms.CheckState.Checked;
            this.multiplyCB.Location = new System.Drawing.Point(253, 396);
            this.multiplyCB.Name = "multiplyCB";
            this.multiplyCB.Size = new System.Drawing.Size(84, 17);
            this.multiplyCB.TabIndex = 2;
            this.multiplyCB.Text = "Multiply by 4";
            this.multiplyCB.UseVisualStyleBackColor = true;
            // 
            // prefixEnumTB
            // 
            this.prefixEnumTB.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.prefixEnumTB.Location = new System.Drawing.Point(430, 394);
            this.prefixEnumTB.Name = "prefixEnumTB";
            this.prefixEnumTB.Size = new System.Drawing.Size(96, 20);
            this.prefixEnumTB.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(356, 397);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(68, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Prefix enum: ";
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(538, 418);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.prefixEnumTB);
            this.Controls.Add(this.multiplyCB);
            this.Controls.Add(this.dumpB);
            this.Controls.Add(this.dumpTB);
            this.Name = "Main";
            this.ShowIcon = false;
            this.Text = "Descriptors Dump - By RivaL v 1.0 beta 1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox dumpTB;
        private System.Windows.Forms.Button dumpB;
        private System.Windows.Forms.CheckBox multiplyCB;
        private System.Windows.Forms.TextBox prefixEnumTB;
        private System.Windows.Forms.Label label1;
    }
}

