using System;
using System.Web.UI;

namespace HomePage
{
    public partial class Settings : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            // Add your logic for changing the password here
        }

        // Add this method for handling the back button click event
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}
