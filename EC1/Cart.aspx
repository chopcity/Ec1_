<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="_EC1.Cart" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Shopping Cart</title>
    <link href="Styles/Main.css" rel="stylesheet" type="text/css" />
    <link href="Styles/Cart.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="page">
        <div id="header">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/banner.jpg" />
        </div>
        <div id="main">
            <p id="carthead">Your shopping cart:</p>
            <div id="cartbuttons">
                <asp:Button ID="btnRemove" runat="server" Text="Remove Item" 
                    onclick="btnRemove_Click" /><br />
                <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" 
                    onclick="btnEmpty_Click" />
            </div>
            <asp:ListBox ID="lstCart" runat="server" ></asp:ListBox>
            <p id="shopbuttons">
                <asp:Button ID="btnContinue" runat="server"
                    PostBackUrl="~/Order.aspx" Text="Continue Shopping" Width="157px" />
                <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" Width="100px" 
                    onclick="btnCheckOut_Click" />
            </p>
            <p id="message">
                <asp:Label ID="lblMessage" runat="server" EnableViewState="False"></asp:Label>
            </p>
        </div>
    </div>
    </form>
</body>
</html>
