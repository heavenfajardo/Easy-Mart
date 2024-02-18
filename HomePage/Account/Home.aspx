<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HomePage.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>POS System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333; /* Black background */
            color: #fff; /* White text */
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            position: relative; 
        }
        .section {
            background-color: #222; 
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
        }
        .section h2 {
            margin-top: 0;
            margin-bottom: 20px;
            color: #fff; /* White text */
            font-size: 24px;
            text-transform: uppercase;
            border-bottom: 2px solid #f9bc42; 
            padding-bottom: 10px;
        }
        .button {
            display: inline-block;
            background-color: #f9bc42; /* Yellow button */
            color: #000; /* Black text */
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            margin-right: 10px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: #d2a329; /* Darker yellow on hover */
        }
        .logout-button {
            position: absolute;
            top: 20px;
            right: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="section profile-section">
                <h2>Profile</h2>
                <a href="#" class="button" onclick="viewProfile()">View </a>
            </div>

            <div class="section menu-section">
                <h2>Menu</h2>
                <a href="#" class="button" onclick="viewMenu()">View </a>
            </div>

            <div class="section orders-section">
                <h2>Orders</h2>
                <a href="#" class="button" onclick="viewOrders()">View </a>
            </div>

            <div class="section ordershistory-section">
                <h2>Orders History</h2>
                <a href="#" class="button" onclick="viewOrdersHistory()">View </a>
            </div>

            <div class="section settings-section">
                <h2> Settings </h2>
                 <a href="Settings.aspx" class="button">View </a>
                    </div>
        </div>

        <div class="logout-button">
            <a href="#" class="button" onclick="logout()">Logout</a>
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

        function viewOrdersHistory() {
            window.location.href = "OrdersHistory.aspx";
        }

        function viewSettings() {
            window.location.href = "Settings.aspx";
        }

        function logout() {
            window.location.href = "Login.aspx"
        }
    </script>
</body>
</html>
