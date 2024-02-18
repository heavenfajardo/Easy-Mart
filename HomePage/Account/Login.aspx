<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HomePage.Account.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: right;
        }

        .header a {
            color: #fff;
            text-decoration: none;
            margin-right: 10px;
        }

        .header a:hover {
            color: #f9bc42; /* Yellow color on hover */
        }

        .feature-photo {
            background-size: cover; 
            background-position: center;
            height: calc(100vh - 40px); /* Adjusted height for header padding */
            position: relative;
        }

        .photos-container {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            overflow: hidden;
        }

        .photo {
            flex: 1;
            overflow: hidden;
            display: none;
        }

        .photo.active {
            display: block;
        }

        #form1 {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 300px; 
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.6); 
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.3); 
        }

        h2 {
            text-align: center;
            color: #fff; 
        }

        div {
            margin-bottom: 10px;
        }

        .textbox {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
            background-color: rgba(255, 255, 255, 0.2); 
            color: #fff;
        }

        .textbox:focus {
            outline: none;
            background-color: rgba(255, 255, 255, 0.4); 
        }

        .button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #f9bc42; /* Yellow button color */
            color: #000; /* Text color */
            cursor: pointer;
        }

        .button:hover {
            background-color: #d2a329; /* Darker yellow on hover */
        }

        .message {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="header">
        <a href="#">About</a>
        <a href="#">Contact</a>
    </div>
    <div class="feature-photo">
        <div class="photos-container">
            <img src="https://marketplace.canva.com/EAFlJp1LtVM/1/0/1131w/canva-black-white-funny-simple-restaurant-food-menu-QbaczxwDD1k.jpg" class="photo active" alt="Feature Photo 1" />
            <img src="https://marketplace.canva.com/EAFrh_B7so0/1/0/1131w/canva-brown-modern-restaurant-food-menu-a4-document-8Pyr1Drh3jU.jpg" class="photo" alt="Feature Photo 2" />
            <img src="https://marketplace.canva.com/EAFiZ-bv_D4/1/0/1600w/canva-black-and-orange-modern-delicious-food-menu-instagram-post-eXXSGB8332s.jpg" class="photo" alt="Feature Photo 3" />
            <!-- Add more photos as needed -->
        </div>
        <form id="form1" runat="server">
            <div>
                <h2>Login</h2>
                <div>
                    <asp:Label ID="lblMessage" runat="server" Visible="false" ForeColor="Red" CssClass="message"></asp:Label>
                </div>
                <div>
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" CssClass="textbox"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="textbox"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="button" />
                </div>
            </div>
        </form>
    </div>
    <script>
        