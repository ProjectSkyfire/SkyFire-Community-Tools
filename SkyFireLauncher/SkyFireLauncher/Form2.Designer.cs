namespace SkyFirePatcher
{
    partial class Form2
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.InfoText = new System.Windows.Forms.Label();
            this.StatusText = new System.Windows.Forms.Label();
            this.ConfirmText = new System.Windows.Forms.Label();
            this.InfoText2 = new System.Windows.Forms.Label();
            this.Patch = new System.Windows.Forms.Button();
            this.Wait = new System.Windows.Forms.Timer(this.components);
            this.SuspendLayout();
            // 
            // InfoText
            // 
            this.InfoText.Location = new System.Drawing.Point(12, 9);
            this.InfoText.Name = "InfoText";
            this.InfoText.Size = new System.Drawing.Size(452, 28);
            this.InfoText.TabIndex = 0;
            this.InfoText.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // StatusText
            // 
            this.StatusText.Location = new System.Drawing.Point(12, 65);
            this.StatusText.Name = "StatusText";
            this.StatusText.Size = new System.Drawing.Size(452, 28);
            this.StatusText.TabIndex = 1;
            this.StatusText.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // ConfirmText
            // 
            this.ConfirmText.Location = new System.Drawing.Point(12, 93);
            this.ConfirmText.Name = "ConfirmText";
            this.ConfirmText.Size = new System.Drawing.Size(452, 28);
            this.ConfirmText.TabIndex = 2;
            this.ConfirmText.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // InfoText2
            // 
            this.InfoText2.Location = new System.Drawing.Point(12, 37);
            this.InfoText2.Name = "InfoText2";
            this.InfoText2.Size = new System.Drawing.Size(452, 28);
            this.InfoText2.TabIndex = 3;
            this.InfoText2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // Patch
            // 
            this.Patch.Enabled = false;
            this.Patch.Location = new System.Drawing.Point(190, 124);
            this.Patch.Name = "Patch";
            this.Patch.Size = new System.Drawing.Size(96, 29);
            this.Patch.TabIndex = 4;
            this.Patch.Text = "Launch";
            this.Patch.UseVisualStyleBackColor = true;
            this.Patch.Click += new System.EventHandler(this.Patch_Click);
            // 
            // Wait
            // 
            this.Wait.Interval = 5000;
            this.Wait.Tick += new System.EventHandler(this.Wait_Tick);
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(487, 173);
            this.Controls.Add(this.Patch);
            this.Controls.Add(this.InfoText2);
            this.Controls.Add(this.ConfirmText);
            this.Controls.Add(this.StatusText);
            this.Controls.Add(this.InfoText);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(495, 200);
            this.MinimumSize = new System.Drawing.Size(495, 200);
            this.Name = "Form2";
            this.Text = "SkyFireLauncher";
            this.Load += new System.EventHandler(this.Form2_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label InfoText;
        private System.Windows.Forms.Label StatusText;
        private System.Windows.Forms.Label ConfirmText;
        private System.Windows.Forms.Label InfoText2;
        private System.Windows.Forms.Button Patch;
        private System.Windows.Forms.Timer Wait;


    }
}