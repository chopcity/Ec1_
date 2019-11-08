<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart1.aspx.cs" Inherits="EC1.Cart1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 179px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/banner.jpg" />
            <p id="carthead">Your shopping cart:</p>
                <asp:Button ID="btnRemove" runat="server" Text="Remove Item" 
                    onclick="btnRemove_Click" />
            <br />
                <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" 
                    onclick="btnEmpty_Click" />
            <br />
            <asp:ListBox ID="lstCart" runat="server" ></asp:ListBox>
            <br />
                <asp:Button ID="btnContinue" runat="server"
                    PostBackUrl="~/Order.aspx" Text="Continue Shopping" Width="157px" />
                <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" Width="100px" 
                    onclick="btnCheckOut_Click" />
            <br />
            <br />
                <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label>
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
            <br />
        </div>
    </form>
</body>
</html>
