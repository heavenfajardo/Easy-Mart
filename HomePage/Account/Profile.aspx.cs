using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomePage
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if there is a profile picture saved in session
                if (Session["UploadedPicture"] != null)
                {
                    // If yes, load and display the picture
                    string imagePath = Session["UploadedPicture"].ToString();
                    imgProfile.ImageUrl = imagePath;
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Check if a file is uploaded
            if (profilePicture.HasFile)
            {
                try
                {
                    // Get the file extension
                    string fileExtension = Path.GetExtension(profilePicture.FileName).ToLower();
                    // Check if the file is an image
                    if (fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png" || fileExtension == ".gif")
                    {
                        // Save the uploaded file to the server
                        string filePath = Server.MapPath("~/Images/") + Path.GetFileName(profilePicture.FileName);
                        profilePicture.SaveAs(filePath);
                        // Save the file path to session
                        Session["UploadedPicture"] = "~/Images/" + Path.GetFileName(profilePicture.FileName);
                        // Display the uploaded picture
                        imgProfile.ImageUrl = Session["UploadedPicture"].ToString();
                    }
                    else
                    {
                        // If the file is not an image, show an error message
                        lblMessage.Text = "Only image files (.jpg, .jpeg, .png, .gif) are allowed!";
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
            else
            {
                lblMessage.Text = "Please select a file to upload.";
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}