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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_product_Click(object sender, EventArgs e)
        {
            if (Product_Id.Text == "" || Product_Name.Text == "" || Available_Quantity.Text == "" || Sales_Price.Text == "" || Category.Text == "")
            {

                Response.Write("Please fill all the fields!!");
            }
            else
            {

                try
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();

                    string insertQuery = "insert into ADD_product (Product_Id,Category,Product_Name,Sales_Price,Available_Quantity)values (@Product_Id,@Category,@Product_Name,@Sales_Price,@Available_Quantity)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@Category", Category.Text);
                    cmd.Parameters.AddWithValue("@Product_Id", Product_Id.Text);
                    cmd.Parameters.AddWithValue("@Sales_Price", Sales_Price.Text);
                    cmd.Parameters.AddWithValue("@Product_Name", Product_Name.Text);
                    cmd.Parameters.AddWithValue("@Available_Quantity", Available_Quantity.Text);
                    cmd.ExecuteNonQuery();

                    Response.Write("Successfully!!!thank you");

                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }
            }
        }
    }
}