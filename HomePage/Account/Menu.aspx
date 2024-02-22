<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="HomePage.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Menu</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .container {
            padding: 20px;
        }
        .menu-item {
            border: 1px solid #ddd;
            padding: 10px;
            margin-bottom: 10px;
        }
        .btn-add-to-cart {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }
        .btn-add-to-cart:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Menu</h1>
            <asp:ListView ID="lvMenu" runat="server" ItemPlaceholderID="menuItemPlaceholder">
                <ItemTemplate>
                    <div class="row menu-item">
                        <div class="col-md-8">
                            <h4><%# Eval("Name") %></h4>
                            <p><%# Eval("Description") %></p>
                            <p>Price: $<%# Eval("Price") %></p>
                        </div>
                        <div class="col-md-4 text-right">
                            <asp:Button ID="Button1" runat="server" Text="Add to Cart" CssClass="btn btn-add-to-cart" OnClick="AddToCart_Click" CommandArgument='<%# Container.DataItemIndex %>' />
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <div class="row">
                        <div class="col-md-12">
                            <div id="menuItemPlaceholder" runat="server"></div>
                        </div>
                    </div>
                </LayoutTemplate>
            </asp:ListView>

            <asp:Label ID="lblTotal" runat="server" Text="Total: $0.00"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="Checkout" CssClass="btn btn-primary" OnClick="Checkout_Click" />
        </div>
    </form>
</body>
</html>
