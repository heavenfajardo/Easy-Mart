using System;
using System.Web.UI;

namespace HomePage.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Setting placeholders for textboxes
                txtUsername.Attributes["placeholder"] = "Username";
                txtPassword.Attributes["placeholder"] = "Password";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Redirect to Home.aspx upon login button click
            Response.Redirect("Home.aspx");
        }
        
        protected void btnRegister_Click(object sender, EventArgs e)
        {

        }


    }
}
