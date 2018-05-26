using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Ordering_System
{
    public partial class OrderEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Populate Dropdown list
                BindDataToDropList();
            }
            
            
        }

        private void BindDataToDropList()
        {
            string connString = ConfigurationManager.ConnectionStrings["CustConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            SqlDataAdapter da = new SqlDataAdapter("Select * from Customers", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);

            ds.Tables[0].Columns.Add("CustomerInfo", typeof(string), "id + ' : ' + first + ' ' + last");

            CustDropDownList.DataValueField = "id";
            CustDropDownList.DataTextField = "CustomerInfo";
            CustDropDownList.DataSource = ds;
            CustDropDownList.DataBind();

            
        }

        protected void OrderAdd_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustConnectionString"].ConnectionString);

                conn.Open();
                string sql = "INSERT into Orders (custid,orderDate,orderTime,prod1Qty,prod2Qty,prod3Qty,prod4Qty,prod5Qty,prod6Qty,subTotal,taxAmt,grandTotal) values (@custid, @orderDate, @orderTime, @prod1Qty, @prod2Qty, @prod3Qty, @prod4Qty, @prod5Qty, @prod6Qty, @subTotal, @taxAmt, @grandTotal)";

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@custid", CustDropDownList.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@orderDate", DateTime.Now.ToShortDateString());
                cmd.Parameters.AddWithValue("@orderTime", DateTime.Now.ToShortTimeString());
                cmd.Parameters.AddWithValue("@prod1Qty", cheese.Text);
                cmd.Parameters.AddWithValue("@prod2Qty", stromboli.Text);
                cmd.Parameters.AddWithValue("@prod3Qty", hotCkn.Text);
                cmd.Parameters.AddWithValue("@prod4Qty", BBQCkn.Text);
                cmd.Parameters.AddWithValue("@prod5Qty", spaghetti.Text);
                cmd.Parameters.AddWithValue("@prod6Qty", salad.Text);
                cmd.Parameters.AddWithValue("@subTotal", subTotalLbl.Text);
                cmd.Parameters.AddWithValue("@taxAmt", taxLbl.Text);
                cmd.Parameters.AddWithValue("@grandTotal", totalLbl.Text);
                cmd.ExecuteNonQuery();



                Response.Redirect("OrderViewAll.aspx");

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }

        }

        


        protected void calc_Click(object sender, EventArgs e)
        {

            

            int cheeseUnit = int.Parse(CheesePrice.Text);
            int StromboliUnit = int.Parse(StromboliPrice.Text);
            int HotUnit = int.Parse(HotPrice.Text);
            int BBQUnit = int.Parse(BBQPrice.Text);
            int SpaghettiUnit = int.Parse(SpaghettiPrice.Text);
            int SaladUnit = int.Parse(SaladPrice.Text);
            
            if(cheese.Text == "" || stromboli.Text == "" || hotCkn.Text == "" || BBQCkn.Text == "" || spaghetti.Text == "" || salad.Text == "")
            {
                TotalError.Visible = true;
            }else if (cheese.Text == "0" && stromboli.Text == "0" && hotCkn.Text == "0" && BBQCkn.Text == "0" && spaghetti.Text == "0" && salad.Text == "0")
            {
                TotalError.Visible = true;
            }
            else
            {
                calc.Enabled = false;
                
                TotalError.Visible = false;
                cheese.Enabled = false;
                stromboli.Enabled = false;
                hotCkn.Enabled = false;
                BBQCkn.Enabled = false;
                spaghetti.Enabled = false;
                salad.Enabled = false;

                Editbtn.Enabled = true;
                OrderAdd.Enabled = true;

                int cheeseQty = int.Parse(cheese.Text);
                int StromboliQty = int.Parse(stromboli.Text);
                int HotQty = int.Parse(hotCkn.Text);
                int BBQQty = int.Parse(BBQCkn.Text);
                int SpaghettiQty = int.Parse(spaghetti.Text);
                int SaladQty = int.Parse(salad.Text);

                int subTotal = (cheeseQty * cheeseUnit) + (StromboliQty * StromboliUnit) + (HotQty * HotUnit) + (BBQQty * BBQUnit) + (SpaghettiQty * SpaghettiUnit) + (SaladQty * SaladUnit);
                double tax = (subTotal * 0.08);
                double grandTotal = subTotal + tax;

                subTotalLbl.Text = " $" + subTotal.ToString();
                taxLbl.Text = " $" + tax.ToString();
                totalLbl.Text = " $" + grandTotal.ToString();

                

            }

            

            
        }

        protected void Editbtn_Click(object sender, EventArgs e)
        {
            Editbtn.Enabled = false;
            OrderAdd.Enabled = false;
            calc.Enabled = true;
            cheese.Enabled = true;
            stromboli.Enabled = true;
            hotCkn.Enabled = true;
            BBQCkn.Enabled = true;
            spaghetti.Enabled = true;
            salad.Enabled = true;
        }
    }
}