using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace HomePage.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if user is already authenticated
            if (Session["username"] != null)
            {
                string username = Session["username"].ToString();
                lblUsername.Text = "Welcome, " + username + "!";
                // Redirect to Home page if already logged in
                Response.Redirect("Home.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Authenticate user (placeholder logic)
            bool isAuthenticated = AuthenticateUser(txtUsername.Text, txtPassword.Text);
            if (isAuthenticated)
            {
                // Store username in session
                Session["username"] = txtUsername.Text;
                // Redirect to Home page
                Response.Redirect("Home.aspx");
            }
            else
            {
                // Display error message or handle invalid login
                lblErrorMessage.Text = "Invalid username or password.";
            }
        }

        private bool AuthenticateUser(string username, string password)
        {
            string connectionString = "Data Source=LAPTOP-PFFT1KR8\\SQLEXPRESS01;Initial Catalog=user_reg;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM [dbo].[users] WHERE [username] = @username AND [password] = @password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                con.Open();
                int count = (int)cmd.ExecuteScalar();
                con.Close();

                return count > 0;
            }
        }
    }
}
