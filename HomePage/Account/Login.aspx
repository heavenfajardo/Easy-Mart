<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HomePage.Account.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login Page</title>
    <style>
       body {
            font-family: Arial, sans-serif;
            background-color: #333;
            color: #fff;
            margin: 0;
            padding: 0;
            background-image: url('../Images/login.jpg');
            background-size: contain; /* Change from 'cover' to 'contain' */
            background-position: center;
            height: 100vh;
            overflow: hidden;
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
            transition: color 0.3s ease; 
        }

        .header a:hover {
            color: #f9bc42; 
            transform: translateY(-2px); 
        }

        .feature-photo {
            background-size: cover; 
            background-position: center;
            height: calc(100vh - 40px); 
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
            width: 350px;
            padding: 30px;
            background-color: rgba(0, 0, 0, 0.6); 
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.3); 
        }

        h2 {
            text-align: center;
            color: #fff; 
        }

        div {
            margin-bottom: 15px; 
        }

        .textbox {
            width: 100%;
            padding: 12px;
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
            padding: 12px;
            border: none;
            border-radius: 5px;
            background-color: #f9bc42; 
            color: #000; 
            cursor: pointer;
            transition: background-color 0.3s ease; 
        }

        .button:hover {
            background-color: #d88829;
        }

        .message {
            text-align: center;
        }

        @keyframes gradient-animation {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        .feature-photo {
            animation: gradient-animation 10s infinite linear;
        }

        .additional-options {
            text-align: center;
            margin-top: 10px;
        }

        .additional-options a {
            color: #f9bc42;
            text-decoration: none;
            margin-right: 10px;
        }

        .additional-options a:hover {
            text-decoration: underline;
        }

        .forgot-password a,
        .register-link a {
            color: #d88829; /* Change color to #ffa31a */
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
                <div class="forgot-password">
                    <a href="#">Forgot Password?</a>
                </div>
                <div>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="button" />
                </div>
               <div class="register-link">
               <a href="#" onclick="redirectToRegister()">Don't have an account? Register here</a>
            </div>
            </div>
        </form>
        <script>
    function redirectToRegister() {
        window.location.href = "Register.aspx";
    }
        </script>
    </div>
</body>
</html>
