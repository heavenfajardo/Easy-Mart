<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="HomePage.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
            background-color: #222;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .form-group label {
            color: #fff;
            font-weight: bold;
        }
        .form-control {
            background-color: rgba(255, 255, 255, 0.2);
            border: none;
            border-radius: 5px;
            color: #fff;
            padding: 10px;
            margin-bottom: 20px;
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
        <div class="container" runat="server" id="containerDiv">
            <h1>Payment</h1>
            <div class="form-group">
                <label for="customerName">Customer Name</label>
                <asp:TextBox ID="customerName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="gcashName">Name of Gcash Account</label>
                <asp:TextBox ID="gcashName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="gcashNumber">Gcash Number</label>
                <asp:TextBox ID="gcashNumber" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="contactNumber">Contact Number</label>
                <asp:TextBox ID="contactNumber" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <asp:TextBox ID="price" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="proofOfPayment">Proof of Payment (Screenshot for Receipt)</label>
                <asp:FileUpload ID="proofOfPayment" runat="server" CssClass="form-control" />
            </div>
           <asp:Button ID="backButton" runat="server" Text="Back" CssClass="btn btn-secondary" OnClientClick="history.go(-1); return false;" />
            <asp:Button ID="payButton" runat="server" Text="Pay Now" CssClass="btn btn-primary ml-2" OnClick="payButton_Click" />

        </div>
    </form>
    <asp:Label ID="confirmationLabel" runat="server" EnableViewState="false" Visible="false" />
</body>
</html>
