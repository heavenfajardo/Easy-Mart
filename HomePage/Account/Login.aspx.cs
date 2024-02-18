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
                
                txtUsername.Attributes["placeholder"] = "Username";
                txtPassword.Attributes["placeholder"] = "Password";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Home.aspx");
        }
    }
}
