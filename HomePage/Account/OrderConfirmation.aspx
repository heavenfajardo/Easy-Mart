<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConfirmation.aspx.cs" Inherits="HomePage.OrderConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Confirmation</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Order Confirmation</h1>
            <div>
                <!-- Display order details here -->
                <asp:Label ID="orderDetailsLabel" runat="server" EnableViewState="false"></asp:Label>
            </div>
        </div>

        <div>
    <label for="customerName">Customer Name:</label>
    <asp:Label ID="customerName" runat="server" EnableViewState="false"></asp:Label>
</div>

    </form>
</body>
</html>
