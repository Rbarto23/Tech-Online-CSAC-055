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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Edit_category0_Click(object sender, EventArgs e)
        {

        }

        protected void add_category_Click(object sender, EventArgs e)
        {
            if(Category_Id.Text == "" || Category_Name.Text== "")
            {

                Response.Write("Please fill all the fields!!");
            }
            else
            {
                try
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();
                    
                    string insertQuery = "insert into AddCategory(Category_Id,Category_Name)values (@Category_Id,@Category_Name)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@Category_Id", Category_Id.Text);
                    cmd.Parameters.AddWithValue("@Category_Name", Category_Name.Text);

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

        protected void edit_category_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit_category.aspx");
        }
    }
}