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
                if (!string.IsNullOrEmpty(Request.QueryString["welcome"]))
                {
                    lblWelcomeMessage.Text = Request.QueryString["welcome"];
                    lblWelcomeMessage.Visible = true;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Session["WelcomeMessage"] = "Welcome to EasyMart";
            Response.Redirect("Home.aspx");
        }
        
        protected void btnRegister_Click(object sender, EventArgs e)
        {

        }


    }
}
