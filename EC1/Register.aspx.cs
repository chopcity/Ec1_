using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace _EC1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=.;Initial Catalog=EC1;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Clear(); 
                if(!String.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    int UserId = Convert.ToInt32(Request.QueryString["id"]);
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        SqlDataAdapter sqlDa = new SqlDataAdapter("UserViewByID", sqlCon);
                        sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                        sqlDa.SelectCommand.Parameters.AddWithValue("@UserId", UserId);
                        DataTable dtbl = new DataTable();
                        sqlDa.Fill(dtbl);

                        hfUserId.Value = UserId.ToString();
                        Fnamebox.Text = dtbl.Rows[0][1].ToString();
                        Lnamebox.Text = dtbl.Rows[0][2].ToString();
                        Emailbox.Text = dtbl.Rows[0][3].ToString();
                        DOBbox.Text = dtbl.Rows[0][4].ToString();
                        Phonebox.Text = dtbl.Rows[0][5].ToString();
                        PWDbox.Text = dtbl.Rows[0][6].ToString();
                        PWDbox.Attributes.Add("Value", dtbl.Rows[0][6].ToString());
                        CPWDbox.Text = dtbl.Rows[0][7].ToString();
                        CPWDbox.Attributes.Add("Value", dtbl.Rows[0][7].ToString());

                    }
                    
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DOBbox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Emailbox.Text == "" || PWDbox.Text == "")
                lblErrorMessage.Text = "Please Fill Manditory Field";
            else if (PWDbox.Text != CPWDbox.Text)
                lblErrorMessage.Text = "Password Does not Match";
            else
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserId", Convert.ToInt32(hfUserId.Value == "" ? "0" : hfUserId.Value));
                    sqlCmd.Parameters.AddWithValue("@fname", Fnamebox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@lname", Lnamebox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@email", Emailbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@DOB", DOBbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@phoneNumber", Phonebox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@password", PWDbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Cpassword", CPWDbox.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Clear();
                    lblSuccessMessage.Text = "Submitted Successfully";

                }
            }
        }
        void Clear()
        {
            Fnamebox.Text = Lnamebox.Text = Emailbox.Text = DOBbox.Text = Phonebox.Text= PWDbox.Text = CPWDbox.Text = "";
            hfUserId.Value = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";

            
        }

        protected void PWDbox_TextChanged(object sender, EventArgs e)
        {

        }
    }

}