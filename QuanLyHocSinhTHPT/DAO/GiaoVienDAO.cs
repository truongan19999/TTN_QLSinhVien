using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyHocSinhTHPT.DTO;

namespace QuanLyHocSinhTHPT.DAO
{
    class GiaoVienDAO
    {
        private static GiaoVienDAO instance;

        internal static GiaoVienDAO Instance
        {
            get { if (instance == null) instance = new GiaoVienDAO(); return instance; }
            private set { instance = value; }
        }
    }
}
