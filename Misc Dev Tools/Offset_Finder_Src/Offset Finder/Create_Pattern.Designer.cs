namespace Offset_Finder
{
    partial class Create_Pattern
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
            this.cbProcess1 = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tbOffset1 = new System.Windows.Forms.TextBox();
            this.tbOffset2 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.cbProcess2 = new System.Windows.Forms.ComboBox();
            this.bCreatePattern = new System.Windows.Forms.Button();
            this.tbPattern = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label10 = new System.Windows.Forms.Label();
            this.bCreatePatternByBytes = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.nOffsetLocation = new System.Windows.Forms.NumericUpDown();
            this.label8 = new System.Windows.Forms.Label();
            this.tbOldBytes = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.tbNewBytes = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.tbOffsetName = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.cbValueType = new System.Windows.Forms.ComboBox();
            this.baseModuleNameTB = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nOffsetLocation)).BeginInit();
            this.SuspendLayout();
            // 
            // cbProcess1
            // 
            this.cbProcess1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbProcess1.FormattingEnabled = true;
            this.cbProcess1.Location = new System.Drawing.Point(76, 13);
            this.cbProcess1.Name = "cbProcess1";
            this.cbProcess1.Size = new System.Drawing.Size(123, 21);
            this.cbProcess1.TabIndex = 0;
            this.cbProcess1.Click += new System.EventHandler(this.cbProcess1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(57, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Process 1:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(205, 16);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(88, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Offset Process 1:";
            // 
            // tbOffset1
            // 
            this.tbOffset1.Location = new System.Drawing.Point(299, 13);
            this.tbOffset1.Name = "tbOffset1";
            this.tbOffset1.Size = new System.Drawing.Size(90, 20);
            this.tbOffset1.TabIndex = 3;
            // 
            // tbOffset2
            // 
            this.tbOffset2.Location = new System.Drawing.Point(299, 41);
            this.tbOffset2.Name = "tbOffset2";
            this.tbOffset2.Size = new System.Drawing.Size(90, 20);
            this.tbOffset2.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(205, 44);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(88, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Offset Process 2:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(13, 44);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(57, 13);
            this.label4.TabIndex = 5;
            this.label4.Text = "Process 2:";
            // 
            // cbProcess2
            // 
            this.cbProcess2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbProcess2.FormattingEnabled = true;
            this.cbProcess2.Location = new System.Drawing.Point(76, 41);
            this.cbProcess2.Name = "cbProcess2";
            this.cbProcess2.Size = new System.Drawing.Size(123, 21);
            this.cbProcess2.TabIndex = 4;
            this.cbProcess2.Click += new System.EventHandler(this.cbProcess2_Click);
            // 
            // bCreatePattern
            // 
            this.bCreatePattern.Location = new System.Drawing.Point(220, 68);
            this.bCreatePattern.Name = "bCreatePattern";
            this.bCreatePattern.Size = new System.Drawing.Size(169, 23);
            this.bCreatePattern.TabIndex = 8;
            this.bCreatePattern.Text = "Create Pattern By Process";
            this.bCreatePattern.UseVisualStyleBackColor = true;
            this.bCreatePattern.Click += new System.EventHandler(this.bCreatePattern_Click);
            // 
            // tbPattern
            // 
            this.tbPattern.Location = new System.Drawing.Point(12, 237);
            this.tbPattern.Multiline = true;
            this.tbPattern.Name = "tbPattern";
            this.tbPattern.Size = new System.Drawing.Size(376, 170);
            this.tbPattern.TabIndex = 9;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.baseModuleNameTB);
            this.groupBox1.Controls.Add(this.label11);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.cbProcess1);
            this.groupBox1.Controls.Add(this.bCreatePattern);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.tbOffset2);
            this.groupBox1.Controls.Add(this.tbOffset1);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.cbProcess2);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Location = new System.Drawing.Point(1, 25);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(398, 100);
            this.groupBox1.TabIndex = 10;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "By Process (not stable)";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label10);
            this.groupBox2.Controls.Add(this.bCreatePatternByBytes);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.nOffsetLocation);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.tbOldBytes);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.tbNewBytes);
            this.groupBox2.Location = new System.Drawing.Point(1, 131);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(398, 100);
            this.groupBox2.TabIndex = 11;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "By Bytes";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(10, 79);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(83, 13);
            this.label10.TabIndex = 15;
            this.label10.Text = "(Start value is 0)";
            // 
            // bCreatePatternByBytes
            // 
            this.bCreatePatternByBytes.Location = new System.Drawing.Point(195, 65);
            this.bCreatePatternByBytes.Name = "bCreatePatternByBytes";
            this.bCreatePatternByBytes.Size = new System.Drawing.Size(194, 23);
            this.bCreatePatternByBytes.TabIndex = 9;
            this.bCreatePatternByBytes.Text = "Create Pattern By Bytes";
            this.bCreatePatternByBytes.UseVisualStyleBackColor = true;
            this.bCreatePatternByBytes.Click += new System.EventHandler(this.bCreatePatternByBytes_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(13, 67);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(82, 13);
            this.label9.TabIndex = 14;
            this.label9.Text = "Offset Location:";
            // 
            // nOffsetLocation
            // 
            this.nOffsetLocation.Location = new System.Drawing.Point(99, 65);
            this.nOffsetLocation.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.nOffsetLocation.Minimum = new decimal(new int[] {
            1000,
            0,
            0,
            -2147483648});
            this.nOffsetLocation.Name = "nOffsetLocation";
            this.nOffsetLocation.Size = new System.Drawing.Size(60, 20);
            this.nOffsetLocation.TabIndex = 13;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(13, 42);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(55, 13);
            this.label8.TabIndex = 11;
            this.label8.Text = "Old Bytes:";
            // 
            // tbOldBytes
            // 
            this.tbOldBytes.Location = new System.Drawing.Point(76, 39);
            this.tbOldBytes.Name = "tbOldBytes";
            this.tbOldBytes.Size = new System.Drawing.Size(313, 20);
            this.tbOldBytes.TabIndex = 12;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(13, 16);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(61, 13);
            this.label7.TabIndex = 9;
            this.label7.Text = "New Bytes:";
            // 
            // tbNewBytes
            // 
            this.tbNewBytes.Location = new System.Drawing.Point(76, 13);
            this.tbNewBytes.Name = "tbNewBytes";
            this.tbNewBytes.Size = new System.Drawing.Size(313, 20);
            this.tbNewBytes.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(-2, 6);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(69, 13);
            this.label5.TabIndex = 9;
            this.label5.Text = "Offset Name:";
            // 
            // tbOffsetName
            // 
            this.tbOffsetName.Location = new System.Drawing.Point(77, 3);
            this.tbOffsetName.Name = "tbOffsetName";
            this.tbOffsetName.Size = new System.Drawing.Size(123, 20);
            this.tbOffsetName.TabIndex = 10;
            this.tbOffsetName.Text = "OFFSET NAME";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(206, 9);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(64, 13);
            this.label6.TabIndex = 12;
            this.label6.Text = "Value Type:";
            // 
            // cbValueType
            // 
            this.cbValueType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbValueType.FormattingEnabled = true;
            this.cbValueType.Items.AddRange(new object[] {
            "int",
            "int64",
            "string",
            "float"});
            this.cbValueType.Location = new System.Drawing.Point(276, 6);
            this.cbValueType.Name = "cbValueType";
            this.cbValueType.Size = new System.Drawing.Size(116, 21);
            this.cbValueType.TabIndex = 13;
            // 
            // baseModuleNameTB
            // 
            this.baseModuleNameTB.Location = new System.Drawing.Point(109, 70);
            this.baseModuleNameTB.Name = "baseModuleNameTB";
            this.baseModuleNameTB.Size = new System.Drawing.Size(105, 20);
            this.baseModuleNameTB.TabIndex = 10;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(5, 73);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(103, 13);
            this.label11.TabIndex = 9;
            this.label11.Text = "Base Module Name:";
            // 
            // Create_Pattern
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(400, 419);
            this.Controls.Add(this.cbValueType);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.tbOffsetName);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.tbPattern);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "Create_Pattern";
            this.ShowIcon = false;
            this.Text = "Create Pattern";
            this.Shown += new System.EventHandler(this.Create_Pattern_Shown);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nOffsetLocation)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cbProcess1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tbOffset1;
        private System.Windows.Forms.TextBox tbOffset2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cbProcess2;
        private System.Windows.Forms.Button bCreatePattern;
        private System.Windows.Forms.TextBox tbPattern;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox tbOffsetName;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cbValueType;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox tbOldBytes;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox tbNewBytes;
        private System.Windows.Forms.NumericUpDown nOffsetLocation;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button bCreatePatternByBytes;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox baseModuleNameTB;
        private System.Windows.Forms.Label label11;
    }
}