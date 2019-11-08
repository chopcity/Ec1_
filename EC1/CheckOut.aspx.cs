using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EC1
{
    public partial class CheckOut : System.Web.UI.Page
    {
        private Customer customer;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                customer = (Customer)Session["Customer"];

                if (customer != null)
                {
                    txtFirstName.Text = customer.FirstName;
                    txtLastName.Text = customer.LastName;
                    txtEmail.Text = customer.Email;
                }
            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            if (customer == null)
                customer = new Customer();

            customer.FirstName = txtFirstName.Text;
            customer.LastName = txtLastName.Text;
            customer.Email = txtEmail.Text;

            Session["Customer"] = customer;

            Response.Redirect("Order.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session.Remove("Customer");
            Session.Remove("Cart");

            Response.Redirect("Order.aspx");
        }

    }
}