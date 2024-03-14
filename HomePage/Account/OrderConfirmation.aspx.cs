using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static HomePage.Payment;

namespace HomePage
{
    public partial class OrderConfirmation : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve order details from session
                if (Session["OrderDetails"] != null)
                {
                    OrderDetails order = (OrderDetails)Session["OrderDetails"];
                    DisplayOrderDetails(order);
                }
            }
        }

        private void DisplayOrderDetails(OrderDetails order)
        {
            // Format and display order details
            string orderDetails = $"Customer Name: {order.CustomerName}<br />";
            orderDetails += $"Gcash Name: {order.GcashName}<br />";
            orderDetails += $"Gcash Number: {order.GcashNumber}<br />";
            orderDetails += $"Contact Number: {order.ContactNumber}<br />";
            orderDetails += $"Price: {order.Price:C}<br />";
            // Add other order details as needed

            orderDetailsLabel.Text = orderDetails;
        }
    


        protected void payButton_Click(object sender, EventArgs e)
        {
            string customerName = this.customerName.Text;
            // Retrieve other form fields
            // For demonstration purposes, let's assume all fields are retrieved similarly

            // Create an instance of OrderDetails and populate it with form data
            OrderDetails order = new OrderDetails
            {
                CustomerName = customerName,
                // Populate other properties similarly
            };

            // Store the order details in the session
            Session["OrderDetails"] = order;

            // Redirect to the OrderConfirmation.aspx page
            Response.Redirect("OrderConfirmation.aspx");
        }

    }
}