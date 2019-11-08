<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOut1.aspx.cs" Inherits="EC1.CheckOut1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
            width: 95px;
        }
        .style4
        {
            width: 280px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/banner.jpg" />
        <br />
        <br />
    
        Please enter the following information:<br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    First Name:
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="style3" Width="275px" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFirstName" Display="Dynamic" 
                        ErrorMessage="First name is required." ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Last Name:</td>
                <td class="style4">
                    <asp:TextBox ID="txtLastName" runat="server" Width="275px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtLastName" Display="Dynamic" 
                        ErrorMessage="Last name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Email:</td>
                <td class="style4">
                    <asp:TextBox ID="txtEmail" runat="server" Width="275px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtEmail" Display="Dynamic" 
                        ErrorMessage="Email is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" 
            onclick="btnContinue_Click" />
            &nbsp;<asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
            Text="Cancel Order" onclick="btnCancel_Click" />
    
    </div>
        </div>
    </form>
</body>
</html>
