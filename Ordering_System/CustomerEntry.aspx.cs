using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Ordering_System
{
    public partial class CustomerEntry : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }


        protected void submit_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustConnectionString"].ConnectionString);

                conn.Open();
                string sql = "INSERT into Customers(first,last,street,city,state,zip,phone,phonetype) values (@first, @last, @street, @city, @state, @zip, @phone, @phonetype)";

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@first", first.Text);
                cmd.Parameters.AddWithValue("@last", last.Text);
                cmd.Parameters.AddWithValue("@street", street.Text);
                cmd.Parameters.AddWithValue("@city", city.Text);
                cmd.Parameters.AddWithValue("@state", state.Text);
                cmd.Parameters.AddWithValue("@zip", zip.Text);
                cmd.Parameters.AddWithValue("@phone", phone.Text);
                cmd.Parameters.AddWithValue("@phonetype", phoneType.SelectedItem.ToString());
                cmd.ExecuteNonQuery();

                Response.Redirect("CustomerViewAll.aspx");

                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
            
        }

    }
}