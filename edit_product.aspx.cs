using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechOnlineCSAC066
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Update_product_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();

                string updateQuery = "update ADD_product set Category= '" + this.Category.Text + "', Sales_Price = '" + this.Sales_Price.Text + "',Available_Quantity = '" + this.Available_Quantity.Text + "',Product_Name = '" + this.Product_Name.Text + "'where Product_Id='" + this.Product_Id.Text + "'";
                SqlDataAdapter SDA = new SqlDataAdapter(updateQuery, conn);
                SDA.SelectCommand.ExecuteNonQuery();
                Response.Write("Update Successfully  !!!thank you");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void delete_product_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();//Add data to the sql database
                string deleteQuery = "delete from ADD_product where Product_Id='" + this.Product_Id.Text + "';";
                SqlDataAdapter SDA = new SqlDataAdapter(deleteQuery, conn);
                SDA.SelectCommand.ExecuteNonQuery();
                Response.Write("Successfully deleted !!!thank you");

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}