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

            Product product = GetProductDetailsByName(productName);

            List<Product> cartProducts = Session["CartProducts"] as List<Product>;
            if (cartProducts == null)
            {
                cartProducts = new List<Product>();
            }
            cartProducts.Add(product);
            Session["CartProducts"] = cartProducts;

            // Redirect back to the Menu page
            Response.Redirect("Orders.aspx");
        }

        private Product GetProductDetailsByName(string productName)
        {
            string imageUrl = GetImageUrlForProduct(productName);
            decimal price = GetPriceForProduct(productName);
            string supplier = GetSupplierForProduct(productName);

            // Initialize Product using the constructor
            return new Product
            {
                Name = productName,
                Price = price,
                Supplier = supplier,
                ImageUrl = imageUrl
            };
        }

        private string GetImageUrlForProduct(string productName)
        {
            switch (productName.ToLower())
            {
                case "bacon":
                    return "/images/bacon.jpg";
                case "steak":
                    return "/images/steak.jpg";
                case "sausage":
                    return "/images/sausage.jpg";
                case "pile of fish":
                    return "/images/pileoffish.jpg";
                case "watermelon":
                    return "/images/watermelon.jpg";
                case "apple":
                    return "/images/apple.jpg";
                case "green apple":
                    return "/images/greenapple.jpg";
                case "orange":
                    return "/images/orange.jpg";
                case "strawberry":
                    return "/images/strawberry.jpg";
                case "sardines":
                    return "/images/sardines.jpg";
                case "flakes in oil":
                    return "/images/flakesinoil.jpg";
                case "spaghetti":
                    return "/images/spag.jpg";
                case "pasta sauce":
                    return "/images/sauce.png";
                case "hotdog":
                    return "/images/hotdog.png";
                case "skinless":
                    return "/images/skinless.png";
                case "cooked ham":
                    return "/images/cookedham.jpg";
                case "nova":
                    return "/images/nova.jpg";
                case "bundle of biscuit":
                    return "/images/biscuit.jpeg";
                case "gardenia":
                    return "/images/gardenia.jpg";
                case "redhorse":
                    return "/images/redhorse.jpg";
                case "primera":
                    return "/images/primera.jpg";
                case "tanduay":
                    return "/images/tanduay.jpg";
                case "kulafu":
                    return "/images/kulafu.png";
                case "mop":
                    return "/images/mop.jpg";






                default:
                    return "";
            }
        }

        private decimal GetPriceForProduct(string productName)
        {
            switch (productName.ToLower())
            {
                case "bacon":
                    return 2.0m;
                case "steak":
                    return 3.0m;
                case "sausage":
                    return 1.0m;
                case "pile of fish":
                    return 6.0m;
                case "watermelon":
                    return 2.50m;
                case "apple":
                    return 1.50m;
                case "green apple":
                    return 1.55m;
                case "orange":
                    return 1m;
                case "strawberry":
                    return 1.50m;
                case "sardines":
                    return 0.50m;
                case "flakes in oil":
                    return 0.50m;
                case "spaghetti":
                    return 2.13m;
                case "pasta sauce":
                    return 0.20m;
                case "hotdog":
                    return 0.15m;
                case "skinless":
                    return 0.35m;
                case "cooked ham":
                    return 0.40m;
                case "nova":
                    return 0.42m;
                case "bundle of biscuit":
                    return 5.50m;
                case "gardenia":
                    return 1.10m;
                case "redhorse":
                    return 3m;
                case "primera":
                    return 4.20m;
                case "tanduay":
                    return 2.50m;
                case "kulafu":
                    return 1.75m;
                case "mop":
                    return 6.42m;



                default:
                    return 0;
            }
        }

        private string GetSupplierForProduct(string productName)
        {
            switch (productName.ToLower())
            {
                case "bacon":
                    return "Sm Supermarket";
                case "steak":
                    return "Gibo Supermarket";
                case "sausage":
                    return "Gibo Supermarket";
                case "pile of fish":
                    return "Victor Supermarket";
                case "watermelon":
                    return "Victor Supermarket";
                case "apple":
                    return "Jonin Supermarket";
                case "green apple":
                    return "Victor Supermarket";
                case "orange":
                    return "Victor Supermarket";
                case "strawberry":
                    return "Arvin Supermarket";
                case "sardines":
                    return "Victor Supermarket";
                case "flakes in oil":
                    return "Victor Supermarket";
                case "spaghetti":
                    return "Glendex Store";
                case "pasta sauce":
                    return "Dirk Store";
                case "hotdog":
                    return "Kidet Store";
                case "skinless":
                    return "Axel Store";
                case "cooked ham":
                    return "Sky Store";
                case "nova":
                    return "Henri Store";
                case "bundle of biscuit":
                    return "Rubin Drugstore";
                case "gardenia":
                    return "Gibo Store";
                case "redhorse":
                    return "Glendex Store";
                case "primera":
                    return "Sky Beerhouse";
                case "tanduay":
                    return "Tambayan ni Gibo";
                case "kulafu":
                    return "Kidet Mart";
                case "mop":
                    return "Henri Store";

                default:
                    return "";
            }
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