  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HomePage.Home" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Easy Mart</title>
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
            overflow: hidden;
        }
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
            overflow: hidden;
        }
        .section {
            flex-grow: 1;
            text-align: center;
            padding: 20px 0;
            cursor: pointer;
            transition: transform 0.3s ease, color 0.3s ease;
            position: relative;
        }
        .section h2 {
            margin: 0;
            color: #fff;
            font-size: 20px;
            text-transform: uppercase;
            text-decoration: none;
        }
        .section:hover {
            transform: scale(1.05);
            color: #ffa31a;
        }
        .section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 50%;
            width: 0;
            height: 100%;
            background-color: rgba(255, 163, 26, 0.5);
            border-radius: 10px;
            transition: width 0.3s ease, left 0.3s ease;
            z-index: -1;
        }
        .section:hover::before {
            width: 100%;
            left: 0;
        }
        .logout-section {
            margin-left: auto;
            padding-right: 20px;
        }
        .logout-button {
            background-color: transparent;
            color: #fff;
            font-size: 20px;
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: color 0.3s ease;
        }
        .logout-button:hover {
            color: #f9bc42;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="section profile-section" onclick="viewProfile()">
                <h2>Profile</h2>
            </div>
            <div class="section menu-section" onclick="viewMenu()">
                <h2>Menu</h2>
            </div>
            <div class="section orders-section" onclick="viewOrders()">
                <h2>Orders</h2>
            </div>
            <div class="section payment-section" onclick="viewPayment()">
                <h2>Payment</h2>
             </div>
            <div class="section mycart-section" onclick="viewMyCart()">
                <h2>My Cart</h2>
            </div>
            <div class="section settings-section" onclick="viewSettings()">
                <h2>Settings</h2>
            </div>
            <div class="section logout-section" onclick="logout()">
            <h2>Log Out</h2>
            </div>
        </div>

        <div class="container">
    <h1><asp:Label ID="lblUsername" runat="server"></asp:Label></h1>
</div>
    </form>

    <script>
        function viewProfile() {
            window.location.href = "Profile.aspx";
        }

        function viewMenu() {
            window.location.href = "Menu.aspx";
        }

        function viewOrders() {
            window.location.href = "Orders.aspx";
        }

        function viewPayment() {
            window.location.href = "Payment.aspx";
        }

        function viewOrderHistory() {
            windows.location.href = "MyCart.aspx";
        }

        function viewSettings() {
            window.location.href = "Settings.aspx";
        }

        function logout() {
            window.location.href = "Login.aspx";
        }
    </script>
</body>
</html>