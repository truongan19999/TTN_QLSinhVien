using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyHocSinhTHPT.DAO;

namespace QuanLyHocSinhTHPT.GUI
{
    public partial class frmDiem : Form
    {
        BindingSource diemSoList = new BindingSource();
        BindingSource monHocList = new BindingSource();

        public frmDiem()
        {
            InitializeComponent();
            LoadFirstTime();
        }
        private void LoadFirstTime()
        {
            dgvMonHoc.DataSource = monHocList;
            dgvDiemSo.DataSource = diemSoList;
            LoadListMonHoc();
            EditDataGridView();
            BindingDataToFrom();
            LoadComboboxIdHocSinh();
            int idMonHoc;
            Int32.TryParse(txtIdMonHoc.Text, out idMonHoc);
            diemSoList.DataSource = BangDiemDAO.Instance.GetByIdMonHoc(idMonHoc);

        }
        private void LoadComboboxIdHocSinh()
        {
            cboHocSinh.DataSource = HocSinhDAO.Instance.GetAll();
            cboHocSinh.DisplayMember = "IdHocSinh";
            cboHocSinh.ValueMember = "IdHocSinh";
        }
  
        private void LoadListMonHoc()
        {
            monHocList.DataSource = MonHocDAO.Instance.GetAll();
            diemSoList.DataSource = BangDiemDAO.Instance.GetAll();
        }
        private void LoadListDiemSo(int idMonHoc)
        {
            diemSoList.DataSource = BangDiemDAO.Instance.GetByIdMonHoc(idMonHoc);
        }
		private void EditDataGridView()
        {
            dgvMonHoc.Columns["IdMonHoc"].HeaderText = "Id Môn học";
            dgvMonHoc.Columns["TenMonHoc"].HeaderText = "Tên môn học";
            dgvMonHoc.Columns["TenMonHoc"].FillWeight = 200;
            dgvMonHoc.Columns["SoTietHoc"].HeaderText = "Số tiết học";
            dgvMonHoc.Columns["NamHoc"].HeaderText = "Năm học";
            dgvMonHoc.Columns["KiHoc"].HeaderText = "Kì học";
            dgvMonHoc.Columns["IdGiaoVien"].HeaderText = "ID Giáo viên";
            dgvMonHoc.Columns["IdGiaoVien"].Visible = false;
            
            dgvDiemSo.Columns["IdBangDiem"].HeaderText = "Id điểm";
            dgvDiemSo.Columns["Diem15phut"].HeaderText = "Điểm 15'";
            dgvDiemSo.Columns["Diem45phut"].HeaderText = "Điểm 45'";
            dgvDiemSo.Columns["DiemHocKi"].HeaderText = "Điểm học kì";
            dgvDiemSo.Columns["IdMonHoc"].HeaderText = "Id môn học";
            dgvDiemSo.Columns["IdMonHoc"].Visible = false;

            txtIdMonHoc.DataBindings.Add(new Binding("Text", dgvMonHoc.DataSource, "IdMonHoc", true, DataSourceUpdateMode.Never));
            dgvDiemSo.Columns["IdHocSinh"].HeaderText = "Id học sinh";
        }
        private void BindingDataToFrom()
        {
            txtIdDiem.DataBindings.Add(new Binding("Text", dgvDiemSo.DataSource, "IdBangDiem", true, DataSourceUpdateMode.Never));
            txtDiem15phut.DataBindings.Add(new Binding("Text", dgvDiemSo.DataSource, "Diem15phut", true, DataSourceUpdateMode.Never));
            txtDiem45phut.DataBindings.Add(new Binding("Text", dgvDiemSo.DataSource, "Diem45phut", true, DataSourceUpdateMode.Never));
            txtDiemHocKi.DataBindings.Add(new Binding("Text", dgvDiemSo.DataSource, "DiemHocKi", true, DataSourceUpdateMode.Never));
            cboHocSinh.DataBindings.Add(new Binding("Text", dgvDiemSo.DataSource, "IdHocSinh", true, DataSourceUpdateMode.Never));
        }

        private void dgvMonHoc_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int idMonHoc;
            Int32.TryParse(txtIdMonHoc.Text, out idMonHoc);
            diemSoList.DataSource = BangDiemDAO.Instance.GetByIdMonHoc(idMonHoc);
        }
        private void MakeNull()
        {
            txtDiemHocKi.Text = "";
            txtDiem15phut.Text = "";
            txtDiem45phut.Text = "";
            cboHocSinh.DataSource = HocSinhDAO.Instance.GetAll();
        }
    }
}
