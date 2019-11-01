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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void delete_category0_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();//Add data to the sql database
                string deleteQuery =  "delete from AddCategory where Category_Id='" + this.editCategory_Id.Text + "';";
                SqlDataAdapter SDA = new SqlDataAdapter(deleteQuery,conn);
                SDA.SelectCommand.ExecuteNonQuery();              
                Response.Write("Successfully deleted !!!thank you");

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void update_category_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string updateQuery = "update AddCategory set Category_Name= '"+ this.editCategory_Name.Text + "'where Category_Id='"+this.editCategory_Id.Text+"'"; 
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
    }
}