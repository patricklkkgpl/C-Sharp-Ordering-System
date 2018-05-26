using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ordering_System
{
    public partial class CustomerView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                WriteData();
            }
        }

        private void WriteData()
        {
            DataView dv = (DataView)CustInfoSqlDataSource.Select(DataSourceSelectArguments.Empty);
            DataRowView drv = dv[0];

            idLbl.Text = drv["id"].ToString();
            nameLbl.Text = drv["first"].ToString()+" "+ drv["last"].ToString();
            streetLbl.Text = drv["street"].ToString();
            cityLbl.Text = drv["city"].ToString();
            stateLbl.Text = drv["state"].ToString();
            zipLbl.Text = drv["zip"].ToString();
            phoneLbl.Text = drv["phone"].ToString();
            phonetypeLbl.Text = drv["phonetype"].ToString();
        }

    }
}