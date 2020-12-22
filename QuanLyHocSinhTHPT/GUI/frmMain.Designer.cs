namespace QuanLyHocSinhTHPT.GUI
{
    partial class frmMain
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
            this.btnGiaoVien = new System.Windows.Forms.Button();
            this.btnHocSinh = new System.Windows.Forms.Button();
            this.btnLopHoc = new System.Windows.Forms.Button();
            this.btnMonHoc = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.btnDiem = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnGiaoVien
            // 
            this.btnGiaoVien.BackColor = System.Drawing.Color.Lime;
            this.btnGiaoVien.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGiaoVien.Location = new System.Drawing.Point(140, 244);
            this.btnGiaoVien.Name = "btnGiaoVien";
            this.btnGiaoVien.Size = new System.Drawing.Size(163, 56);
            this.btnGiaoVien.TabIndex = 5;
            this.btnGiaoVien.Text = "Giáo viên";
            this.btnGiaoVien.UseVisualStyleBackColor = false;
            this.btnGiaoVien.Click += new System.EventHandler(this.btnGiaoVien_Click);
            // 
            // btnHocSinh
            // 
            this.btnHocSinh.BackColor = System.Drawing.Color.Lime;
            this.btnHocSinh.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnHocSinh.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnHocSinh.Location = new System.Drawing.Point(140, 128);
            this.btnHocSinh.Name = "btnHocSinh";
            this.btnHocSinh.Size = new System.Drawing.Size(163, 56);
            this.btnHocSinh.TabIndex = 6;
            this.btnHocSinh.Text = "Học sinh";
            this.btnHocSinh.UseVisualStyleBackColor = false;
            this.btnHocSinh.Click += new System.EventHandler(this.btnHocSinh_Click);
            // 
            // btnLopHoc
            // 
            this.btnLopHoc.BackColor = System.Drawing.Color.Lime;
            this.btnLopHoc.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLopHoc.Location = new System.Drawing.Point(140, 363);
            this.btnLopHoc.Name = "btnLopHoc";
            this.btnLopHoc.Size = new System.Drawing.Size(163, 56);
            this.btnLopHoc.TabIndex = 7;
            this.btnLopHoc.Text = "Lớp học";
            this.btnLopHoc.UseVisualStyleBackColor = false;
            this.btnLopHoc.Click += new System.EventHandler(this.btnLopHoc_Click);
            // 
            // btnMonHoc
            // 
            this.btnMonHoc.BackColor = System.Drawing.Color.Lime;
            this.btnMonHoc.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMonHoc.Location = new System.Drawing.Point(423, 128);
            this.btnMonHoc.Name = "btnMonHoc";
            this.btnMonHoc.Size = new System.Drawing.Size(163, 56);
            this.btnMonHoc.TabIndex = 8;
            this.btnMonHoc.Text = "Môn học";
            this.btnMonHoc.UseVisualStyleBackColor = false;
            this.btnMonHoc.Click += new System.EventHandler(this.btnMonHoc_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 22.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Red;
            this.label1.Location = new System.Drawing.Point(12, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(746, 43);
            this.label1.TabIndex = 9;
            this.label1.Text = "Phần mềm quản lý học sinh, giáo viên THPT";
            // 
            // btnDiem
            // 
            this.btnDiem.BackColor = System.Drawing.Color.Lime;
            this.btnDiem.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDiem.Location = new System.Drawing.Point(423, 244);
            this.btnDiem.Name = "btnDiem";
            this.btnDiem.Size = new System.Drawing.Size(163, 56);
            this.btnDiem.TabIndex = 10;
            this.btnDiem.Text = "Điểm";
            this.btnDiem.UseVisualStyleBackColor = false;
            this.btnDiem.Click += new System.EventHandler(this.btnDiem_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(762, 515);
            this.Controls.Add(this.btnDiem);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnMonHoc);
            this.Controls.Add(this.btnLopHoc);
            this.Controls.Add(this.btnHocSinh);
            this.Controls.Add(this.btnGiaoVien);
            this.Name = "frmMain";
            this.Text = "Phần mềm quản lý học sinh, giáo viên THPT";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnGiaoVien;
        private System.Windows.Forms.Button btnHocSinh;
        private System.Windows.Forms.Button btnLopHoc;
        private System.Windows.Forms.Button btnMonHoc;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnDiem;
    }
}