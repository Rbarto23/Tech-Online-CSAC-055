using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechOnlineCSAC066
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string userid = userName.Text;
            string password = password1.Text;
            SqlCommand cmd = new SqlCommand("select userName,password from signUp where userName='" + userName.Text + "'and password='" + password1.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("Sucessfully!!!!!!!!!!");
                Response.Redirect("categoryList.aspx");
            }
            else
            {
                Response.Write("INVALID LOGIN PASSWORD");
            }
            conn.Close();
        }        
    }
    }
