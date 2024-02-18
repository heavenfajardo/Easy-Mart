using System;
using System.Web.UI;

namespace HomePage
{
    public partial class Home : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SettingsButton_Click(object sender, EventArgs e)
        {
            // Redirect to the Settings.aspx page
            Response.Redirect("Settings.aspx");
        }
    }
}
