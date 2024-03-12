using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomePage
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void payButton_Click(object sender, EventArgs e)
        {
            string customerName = this.customerName.Text;
            string gcashName = this.gcashName.Text;
            string gcashNumber = this.gcashNumber.Text;
            string contactNumber = this.contactNumber.Text;

            decimal price;

            if (!decimal.TryParse(this.price.Text, out price))
            {
               
                return;
            }

            if (proofOfPayment.HasFile)
            {
                string fileName = Path.GetFileName(proofOfPayment.FileName);
                string directoryPath = Server.MapPath("~/ProofOfPayments/");

                if (!Directory.Exists(directoryPath))
                {
                    Directory.CreateDirectory(directoryPath);
                }

                string filePath = Path.Combine(directoryPath, fileName);
                proofOfPayment.SaveAs(filePath);
            }

            
            ScriptManager.RegisterStartupScript(this, GetType(), "PaymentAlert", "alert('Thank you for your payment. Please come again.');", true);

        
            Response.AddHeader("REFRESH", "3;URL=Home.aspx");
        }

        protected void backButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}
