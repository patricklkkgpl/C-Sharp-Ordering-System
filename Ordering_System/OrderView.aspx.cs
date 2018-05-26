using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ordering_System
{
    public partial class OrderView : System.Web.UI.Page
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
            DataView dv = (DataView)OrderViewSqlDataSource.Select(DataSourceSelectArguments.Empty);
            DataRowView drv = dv[0];

            idLbl.Text = drv["id"].ToString();
            custidLbl.Text = drv["custid"].ToString();
            nameLbl.Text = drv["first"].ToString() + " " + drv["last"].ToString();
            orderDateLbl.Text = drv["orderDate"].ToString();
            orderTimeLbl.Text = drv["orderTime"].ToString();
            cheesePizzaLbl.Text = drv["prod1Qty"].ToString();
            StromboliLbl.Text = drv["prod2Qty"].ToString();
            HotCknLbl.Text = drv["prod3Qty"].ToString();
            BBQCknLbl.Text = drv["prod4Qty"].ToString();
            spaghettiLbl.Text = drv["prod5Qty"].ToString();
            saladLbl.Text = drv["prod6Qty"].ToString();
            subTotalLbl.Text = drv["subTotal"].ToString();
            taxLbl.Text = drv["taxAmt"].ToString();
            totalLabl.Text = drv["grandTotal"].ToString();

        }
    }
}