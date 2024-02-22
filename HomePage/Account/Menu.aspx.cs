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
            if (!IsPostBack)
            {
                BindMenu();
            }
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            // Retrieve the index of the selected menu item
            int index = int.Parse(((Button)sender).CommandArgument);

            // Retrieve the menu item from the list view data source
            List<MenuItem> menuItems = (List<MenuItem>)Session["Menu"];
            MenuItem selectedItem = menuItems[index];

            // Add the selected menu item to the cart
            List<MenuItem> cartItems;
            if (Session["Cart"] != null)
            {
                cartItems = (List<MenuItem>)Session["Cart"];
            }
            else
            {
                cartItems = new List<MenuItem>();
            }
            cartItems.Add(selectedItem);
            Session["Cart"] = cartItems;

            // Refresh the cart display
            BindCart();
        }

        private void BindMenu()
        {
           
        }

        private void BindCart()
        {
          
            }
        }
    }

    // Define a class for menu items
    public class MenuItem
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public double Price { get; set; }
    }
