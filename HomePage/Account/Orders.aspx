<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="HomePage.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orders</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333;
            color: #fff;
            margin: 0;
            padding: 0;
            background-image: url('../Images/easymart1.png');
            background-size: cover;
            background-position: center;
            height: 100vh;
            position: relative;
        }
        .container {
            max-width: 800px; 
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
            overflow: hidden;
        }
        .card {
            background-color: rgba(0, 0, 0, 0.8);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            margin-bottom: 20px;
            overflow: hidden;
        }
        .card-img-top {
            height: 300px; 
            object-fit: cover;
        }
        .card-body {
            padding: 20px;
        }
        .card-title {
            color: #ffa31a;
            font-size: 20px;
            margin-bottom: 10px;
        }
        .card-text {
            color: #fff;
            font-size: 16px;
            margin-bottom: 10px;
        }
        .supplier {
            color: #ccc;
            font-size: 14px;
        }
        .total-price {
            color: #fff;
            font-size: 24px;
            margin-top: 20px;
        }
        .btn-view-menu {
            background-color: #ffa31a;
            border: none;
            border-radius: 5px;
            color: #fff;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }
        .btn-view-menu:hover {
            background-color: #f9bc42;
        }
        .btn-remove {
            background-color: #f44336;
            border: none;
            border-radius: 5px;
            color: #fff;
            padding: 5px 10px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }
        .btn-remove:hover {
            background-color: #ff6659;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Orders</h1>
            <div>
               <asp:Repeater ID="ProductRepeater" runat="server">
                <ItemTemplate>
                    <div class="card mb-4">
                        <asp:Image runat="server" CssClass="card-img-top" ImageUrl='<%# Eval("ImageUrl") %>' />
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Name") %></h5>
                            <p class="card-text">Price: <%# Eval("Price", "{0:C}") %></p>
                            <p class="supplier">Supplier: <%# Eval("Supplier") %></p>
                            <asp:Button ID="RemoveButton" runat="server" Text="Remove" CssClass="btn-remove" OnClick="RemoveButton_Click" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>


            </div>
            <div>
                <h2 class="total-price">Total Price: <asp:Label ID="TotalPriceLabel" runat="server"></asp:Label></h2>
            </div>
            <div>
                <asp:Button ID="ViewMenuButton" runat="server" Text="View Menu" OnClick="ViewMenuButton_Click" CssClass="btn-view-menu" />
            </div>
        </div>
    </form>
</body>
</html>