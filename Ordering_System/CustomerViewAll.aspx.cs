using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ordering_System
{
    public partial class CustomerViewAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int rowCount = CustGrid.Rows.Count;

            if(rowCount == 0)
            {
                CustGrid.Visible = false;
                emptyLbl.Visible = true;
            }
            else
            {
                CustGrid.Visible = true;
                emptyLbl.Visible = false;
            }
        }
        

        

        protected void SelectCustBtn_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("CustomerView.aspx?id="+e.CommandArgument);
        }
    }
}