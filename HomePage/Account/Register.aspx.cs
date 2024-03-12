using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using static DotNetOpenAuth.OpenId.Extensions.AttributeExchange.WellKnownAttributes.Contact;
using System.Net;
using System.Web.Providers.Entities;

namespace HomePage.Account
{
    public partial class Register : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "others";
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-PFFT1KR8\\SQLEXPRESS01;Initial Catalog=user_reg;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[users]
        ([fullname]
        , [address]
        , [gender]
        , [phone]
        , [email]
        , [username]
        , [password])
        VALUES         
        ('" + txtName.Text + "','" + txtAdd.Text + "', '" + gender + "', '" + txtPhone.Text + "', '" + txtEmail.Text + "', '" + txtUser.Text + "', '" + txtPass.Text + "')", con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

               
                ClientScript.RegisterStartupScript(this.GetType(), "RegistrationSuccess", "alert('User is successfully registered');", true);

             
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
        }


        protected void btnHome_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Home.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }
    }
}
