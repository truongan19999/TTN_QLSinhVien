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
    }
}
