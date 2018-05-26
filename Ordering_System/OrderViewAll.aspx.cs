using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ordering_System
{
    public partial class OrderViewAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int rowCount = ViewAllOrdersGrid.Rows.Count;

            if (rowCount == 0)
            {
                ViewAllOrdersGrid.Visible = false;
                emptyLbl.Visible = true;
            }
            else
            {
                ViewAllOrdersGrid.Visible = true;
                emptyLbl.Visible = false;
            }
        }

        protected void OrderInfoBtn_Command(object sender, CommandEventArgs e)
        {
            string[] arg = new string[2];
            arg = e.CommandArgument.ToString().Split(';');

            Response.Redirect("OrderView.aspx?id=" + arg[0] +"&custid="+ arg[1]);
            
        }
    }
}