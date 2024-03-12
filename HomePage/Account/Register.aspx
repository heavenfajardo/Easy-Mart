<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HomePage.Account.Register" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
            overflow: hidden;
        }
        .form-group label {
            color: #fff;
            font-weight: bold;
        }
        .profile-picture {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
        }
        .form-control {
            background-color: rgba(255, 255, 255, 0.2);
            border: none;
            border-radius: 5px;
            color: #fff;
            padding: 10px;
            margin-bottom: 20px;
            width: calc(100% - 20px);
        }
        .form-control:focus {
            background-color: rgba(255, 255, 255, 0.4);
            outline: none;
        }
        .btn-primary {
            background-color: #ffa31a;
            border: none;
            border-radius: 5px;
            color: #fff;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #f9bc42;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <label for="txtName">Full Name</label>
                <asp:TextBox ID="txtName" runat="server" placeholder="Enter your full name" CssClass="form-control" required />
            </div>

            <div class="form-group">
                <label for="txtAdd">Address</label>
                <asp:TextBox ID="txtAdd" runat="server" placeholder="Enter your address" CssClass="form-control" required />
            </div>
            <div class="form-group">
                <label>Gender</label>
                <div>
                    <asp:RadioButton ID="RadioButton1" runat="server" CssClass="mr-2" Text="Male" GroupName="user" Required="true" />
                    <asp:RadioButton ID="RadioButton2" runat="server" CssClass="mr-2" Text="Female" GroupName="user" Required="true" />
                    <asp:RadioButton ID="RadioButton3" runat="server" CssClass="mr-2" Text="Others" GroupName="user" Required="true" />
                </div>
            </div>
            <div class="form-group">
                <label for="txtPhone">Phone</label>
                <asp:TextBox ID="txtPhone" runat="server" placeholder="+639" CssClass="form-control" required />
            </div>
            <div class="form-group">
                <label for="txtEmail">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" type="email" placeholder="example@example.com" CssClass="form-control" required />
            </div>
            <div class="form-group">
                <label for="txtUser">Username</label>
                <asp:TextBox ID="txtUser" runat="server" placeholder="Enter username" CssClass="form-control" required />
            </div>
            <div class="form-group">
                <label for="txtPass">Password</label>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="*****" CssClass="form-control" required />
            </div>
            <div class="button-container">
               <asp:Button ID="btnHome" runat="server" Text="Back" CssClass="btn btn-primary back-btn" OnClick="btnHome_Click" />
                <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" CssClass="btn btn-primary register-btn" />
            </div>
        </div>
    </form>
</body>
</html>
