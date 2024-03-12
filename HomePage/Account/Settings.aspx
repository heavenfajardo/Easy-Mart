<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="HomePage.Settings" %>

<!DOCTYPE html>
<<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>User Settings</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #333; 
            color: #fff; 
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto; 
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
            color: #fff; 
            font-size: 24px;
            text-transform: uppercase;
            border-bottom: 2px solid #f9bc42; 
            padding-bottom: 10px;
        }

        .textbox {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
            background-color: rgba(255, 255, 255, 0.2); 
            color: #fff;
            margin-bottom: 10px;
        }

        .button {
            display: inline-block;
            background-color: #f9bc42;
            color: #000; 
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            margin-right: 10px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #d2a329; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="section">
                <h2>User Settings</h2>
                <div>
                    <label for="txtCurrentPassword">Current Password</label>
                    <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" CssClass="textbox" placeholder="Current Password"></asp:TextBox>
                </div>
                <div>
                    <label for="txtNewPassword">New Password</label>
                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="textbox" placeholder="New Password"></asp:TextBox>
                </div>
                <div>
                    <label for="txtConfirmPassword">Confirm New Password</label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="textbox" placeholder="Confirm New Password"></asp:TextBox>
                </div>
                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="btnChangePassword_Click" CssClass="button" />
                <!-- Back button -->
                <asp:Button ID="btnBack" runat="server" Text="Back to Home" OnClick="btnBack_Click" CssClass="button" />
                
            </div>
        </div>
    </form>
</body>
</html>
