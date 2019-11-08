<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_EC1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="./Js/jquery-3.4.1.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Username:&nbsp;
            <asp:TextBox ID="EmailBox" runat="server"></asp:TextBox>
            <br />
            Password::&nbsp;
            <asp:TextBox ID="PWDbox" runat="server" OnTextChanged="PWDbox_TextChanged" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click"/>
&nbsp;
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Dont have an Account?...Register now</asp:HyperLink>
        </div>
    </form>
</body>
</html>
