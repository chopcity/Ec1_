using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace _EC1
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionString = @"Data Source=.;Initial Catalog=EC1;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("SELECT * FROM UserRegister WHERE email='" + EmailBox.Text + "' and password= '" + PWDbox.Text + "'", sqlCon);
                SqlDataReader dr = sqlCmd.ExecuteReader();
                if(dr.HasRows==true)
                {
                    dr.Read();
                    Session["fname"] = dr["fname"].ToString();
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "popup", "alert('Invalid Password')", true);
                }

            }
        }

        protected void PWDbox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}