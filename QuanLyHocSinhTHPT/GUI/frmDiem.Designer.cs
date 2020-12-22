namespace QuanLyHocSinhTHPT.GUI
{
    partial class frmDiem
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtIdMonHoc = new System.Windows.Forms.Label();
            this.cboHocSinh = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtDiemHocKi = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtDiem45phut = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtDiem15phut = new System.Windows.Forms.TextBox();
            this.txtIdDiem = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvMonHoc = new System.Windows.Forms.DataGridView();
            this.btnRefresh = new System.Windows.Forms.Button();
            this.txtTimKiem = new System.Windows.Forms.TextBox();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.dgvDiemSo = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMonHoc)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDiemSo)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnXoa);
            this.groupBox1.Controls.Add(this.btnRefresh);
            this.groupBox1.Controls.Add(this.txtIdMonHoc);
            this.groupBox1.Controls.Add(this.btnTimKiem);
            this.groupBox1.Controls.Add(this.txtTimKiem);
            this.groupBox1.Controls.Add(this.cboHocSinh);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.btnSua);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txtDiemHocKi);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtDiem45phut);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtDiem15phut);
            this.groupBox1.Controls.Add(this.txtIdDiem);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(25, 31);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1111, 242);
            this.groupBox1.TabIndex = 9;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin điểm";
            // 
            // txtIdMonHoc
            // 
            this.txtIdMonHoc.AutoSize = true;
            this.txtIdMonHoc.Location = new System.Drawing.Point(547, 33);
            this.txtIdMonHoc.Name = "txtIdMonHoc";
            this.txtIdMonHoc.Size = new System.Drawing.Size(71, 17);
            this.txtIdMonHoc.TabIndex = 17;
            this.txtIdMonHoc.Text = "idMonHoc";
            // 
            // cboHocSinh
            // 
            this.cboHocSinh.FormattingEnabled = true;
            this.cboHocSinh.Location = new System.Drawing.Point(958, 33);
            this.cboHocSinh.Name = "cboHocSinh";
            this.cboHocSinh.Size = new System.Drawing.Size(53, 24);
            this.cboHocSinh.TabIndex = 16;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(843, 33);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(80, 17);
            this.label6.TabIndex = 15;
            this.label6.Text = "ID Học sinh";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(424, 33);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(79, 17);
            this.label5.TabIndex = 13;
            this.label5.Text = "ID Môn học";
            // 
            // txtDiemHocKi
            // 
            this.txtDiemHocKi.Location = new System.Drawing.Point(550, 87);
            this.txtDiemHocKi.Name = "txtDiemHocKi";
            this.txtDiemHocKi.Size = new System.Drawing.Size(53, 22);
            this.txtDiemHocKi.TabIndex = 12;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(842, 90);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(81, 17);
            this.label4.TabIndex = 11;
            this.label4.Text = "Điểm học kì";
            // 
            // txtDiem45phut
            // 
            this.txtDiem45phut.Location = new System.Drawing.Point(958, 90);
            this.txtDiem45phut.Name = "txtDiem45phut";
            this.txtDiem45phut.Size = new System.Drawing.Size(53, 22);
            this.txtDiem45phut.TabIndex = 10;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(424, 87);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(92, 17);
            this.label3.TabIndex = 9;
            this.label3.Text = "Điểm 45 phút";
            // 
            // txtDiem15phut
            // 
            this.txtDiem15phut.Location = new System.Drawing.Point(127, 87);
            this.txtDiem15phut.Name = "txtDiem15phut";
            this.txtDiem15phut.Size = new System.Drawing.Size(53, 22);
            this.txtDiem15phut.TabIndex = 8;
            // 
            // txtIdDiem
            // 
            this.txtIdDiem.AutoSize = true;
            this.txtIdDiem.Location = new System.Drawing.Point(124, 33);
            this.txtIdDiem.Name = "txtIdDiem";
            this.txtIdDiem.Size = new System.Drawing.Size(21, 17);
            this.txtIdDiem.TabIndex = 7;
            this.txtIdDiem.Text = "-1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(19, 87);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(92, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "Điểm 15 phút";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(26, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(57, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "ID Điểm";
            // 
            // dgvMonHoc
            // 
            this.dgvMonHoc.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvMonHoc.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgvMonHoc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvMonHoc.Location = new System.Drawing.Point(25, 311);
            this.dgvMonHoc.Name = "dgvMonHoc";
            this.dgvMonHoc.RowHeadersWidth = 51;
            this.dgvMonHoc.RowTemplate.Height = 24;
            this.dgvMonHoc.Size = new System.Drawing.Size(503, 473);
            this.dgvMonHoc.TabIndex = 11;
            this.dgvMonHoc.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvMonHoc_CellClick);
            // 
            // btnRefresh
            // 
            this.btnRefresh.Location = new System.Drawing.Point(427, 165);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(100, 40);
            this.btnRefresh.TabIndex = 3;
            this.btnRefresh.Text = "Refresh";
            this.btnRefresh.UseVisualStyleBackColor = true;
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // txtTimKiem
            // 
            this.txtTimKiem.Location = new System.Drawing.Point(683, 174);
            this.txtTimKiem.Name = "txtTimKiem";
            this.txtTimKiem.Size = new System.Drawing.Size(222, 22);
            this.txtTimKiem.TabIndex = 2;
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Location = new System.Drawing.Point(911, 165);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(100, 40);
            this.btnTimKiem.TabIndex = 4;
            this.btnTimKiem.Text = "Tìm kiếm";
            this.btnTimKiem.UseVisualStyleBackColor = true;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // btnSua
            // 
            this.btnSua.Location = new System.Drawing.Point(22, 165);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(100, 40);
            this.btnSua.TabIndex = 2;
            this.btnSua.Text = "Sửa ";
            this.btnSua.UseVisualStyleBackColor = true;
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(225, 165);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(100, 40);
            this.btnXoa.TabIndex = 1;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // dgvDiemSo
            // 
            this.dgvDiemSo.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvDiemSo.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgvDiemSo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDiemSo.Location = new System.Drawing.Point(557, 311);
            this.dgvDiemSo.Name = "dgvDiemSo";
            this.dgvDiemSo.RowHeadersWidth = 51;
            this.dgvDiemSo.RowTemplate.Height = 24;
            this.dgvDiemSo.Size = new System.Drawing.Size(579, 473);
            this.dgvDiemSo.TabIndex = 12;
            // 
            // frmDiem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1182, 819);
            this.Controls.Add(this.dgvDiemSo);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvMonHoc);
            this.Name = "frmDiem";
            this.Text = "Điểm";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMonHoc)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDiemSo)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cboHocSinh;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtDiemHocKi;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtDiem45phut;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtDiem15phut;
        private System.Windows.Forms.Label txtIdDiem;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvMonHoc;
        private System.Windows.Forms.Button btnRefresh;
        private System.Windows.Forms.TextBox txtTimKiem;
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.DataGridView dgvDiemSo;
        private System.Windows.Forms.Label txtIdMonHoc;
    }
}