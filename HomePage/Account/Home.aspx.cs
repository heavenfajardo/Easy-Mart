using System;
using System.Web.UI;

namespace HomePage
{
    public partial class Home : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["username"] == null)
            {
              
                Response.Redirect("Login.aspx");
            }
            else
            {
                string username = Session["username"].ToString();
                lblUsername.Text = "Welcome, " + username + "!";
            }
        }

        protected void SettingsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Settings.aspx");
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            
         
        
            Response.Redirect("Login.aspx");
        }
    }
}
