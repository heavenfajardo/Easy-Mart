using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomePage
{
    public partial class Payment : Page
    {
        protected void payButton_Click(object sender, EventArgs e)
        {
            string customerName = this.customerName.Text;
            Response.Redirect("OrderConfirmation.aspx");
        }

        private void ShowConfirmation(OrderDetails order)
        {
            string confirmationMessage = $"Customer Name: {order.CustomerName}<br />";
            confirmationMessage += $"Gcash Name: {order.GcashName}<br />";
            confirmationMessage += $"Gcash Number: {order.GcashNumber}<br />";
            confirmationMessage += $"Contact Number: {order.ContactNumber}<br />";
            confirmationMessage += $"Price: {order.Price:C}<br />";
            // Add other order details as needed

            // You can use a Label control to display the message
            confirmationLabel.Text = confirmationMessage;

            // Optionally, you can hide the form elements after displaying the confirmation
            containerDiv.Visible = false;
        }
        public class OrderDetails
        {
            public string CustomerName { get; set; }
            public string GcashName { get; set; }
            public string GcashNumber { get; set; }
            public string ContactNumber { get; set; }
            public decimal Price { get; set; }
            // Add other order details as needed
        }
    }
}