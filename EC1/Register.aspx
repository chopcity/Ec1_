<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_EC1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Cs/StyleSheet1.css" rel="stylesheet" />
      <script src="./Js/jquery-3.4.1.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 280px;
        }
        .auto-style3 {
            width: 240px;
        }
        .auto-style10 {
            text-align: right;
            width: 280px;
            height: 42px;
        }
        .auto-style11 {
            width: 240px;
            height: 42px;
        }
        .auto-style12 {
            height: 42px;
        }
        .auto-style13 {
            text-align: right;
            width: 280px;
            height: 26px;
        }
        .auto-style14 {
            width: 240px;
            height: 26px;
        }
        .auto-style15 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Register</h1>
        <asp:HiddenField ID="hfUserId" runat="server" />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">First Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Fnamebox" runat="server" Height="21px" OnTextChanged="TextBox1_TextChanged" Width="156px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Fnamebox" ErrorMessage="Please enter First Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Lnamebox" runat="server" Width="156px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Emailbox" ErrorMessage="Please eneter Last Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Email Address</td>
                <td class="auto-style11">
                    <asp:TextBox ID="Emailbox" runat="server" Width="156px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Emailbox" ErrorMessage="Please enter An Email "></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Emailbox" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Date of Birth </td>
                <td class="auto-style11">
                    <asp:TextBox ID="DOBbox" runat="server" OnTextChanged="DOBbox_TextChanged" TextMode="Date" Width="156px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DOBbox" ErrorMessage="Please eneter DOB"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DOBbox" ErrorMessage="Must be older than 18 YEARS" MaximumValue="2001-09-01" MinimumValue="1960-01-01"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Phone Number</td>
                <td class="auto-style11">
                    <asp:TextBox ID="Phonebox" runat="server" Width="156px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Phonebox" ErrorMessage="Enter Phone Number"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Phonebox" ErrorMessage="Invalid Number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Password</td>
                <td class="auto-style14">
                    <asp:TextBox ID="PWDbox" runat="server" TextMode="Password" Width="156px" OnTextChanged="PWDbox_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="PWDbox" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirmed Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="CPWDbox" runat="server" TextMode="Password" Width="156px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="CPWDbox" ErrorMessage="Re-Enter Password"></asp:RequiredFieldValidator>
                &nbsp;<br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PWDbox" ControlToValidate="CPWDbox" ErrorMessage="Password Does Not Match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Label text="" ID="lblSuccessMessage" runat="server" ForeColor="Green"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label text="" ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <br />
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
