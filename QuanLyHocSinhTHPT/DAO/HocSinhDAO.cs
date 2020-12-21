using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyHocSinhTHPT.DTO;

namespace QuanLyHocSinhTHPT.DAO
{
    class HocSinhDAO
    {
        private static HocSinhDAO instance;

        internal static HocSinhDAO Instance
        {
            get { if (instance == null) instance = new HocSinhDAO(); return instance; }
            private set { instance = value; }
        }


    }
}
