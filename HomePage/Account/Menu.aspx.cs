using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace HomePage
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string productName = button.CommandArgument;

            // Redirect the user to the Orders.aspx page after adding the item to the cart
             Response.Redirect($"Orders.aspx?productName={HttpUtility.UrlEncode(productName)}");
        }

        private void AddItemToCart()
        {
            // Add code to bind menu items here
        }

        protected void redirectToOrders(object sender, EventArgs e)
        {
            // Redirect the user to the orders page
            
        }

        protected void btnViewCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Orders.aspx");
        }
    }
}


