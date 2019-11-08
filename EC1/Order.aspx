<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>
<%--<%@ Page Language="C#" AutoEventWireup="true" Trace="true" CodeFile="Order.aspx.cs" Inherits="Order" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Shopping Cart</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 250px;
        }
        .style3
        {
            width: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/Images/banner.jpg" /><br /><br />
        <asp:Label ID="Label1" runat="server" 
            Text="Please select a product:"></asp:Label>&nbsp;
        <asp:DropDownList ID="ddlProducts" runat="server" 
            DataSourceID="AccessDataSource1" DataTextField="Name" 
            DataValueField="ProductID" Width="150px" AutoPostBack="True">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Halloween.mdb" 
            SelectCommand="SELECT [ProductID], [Name], [ShortDescription],
                                  [LongDescription], [ImageFile], [UnitPrice]
                           FROM [Products] ORDER BY [Name]">
        </asp:AccessDataSource>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="lblName" runat="server" 
                        Font-Bold="True" Font-Size="Larger">
                    </asp:Label>
                </td>
                <td class="style3" rowspan="4">
                </td>
                <td rowspan="4" valign="center">
                    <asp:Image ID="imgProduct" runat="server" Height="200px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblShortDescription" runat="server">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblLongDescription" runat="server">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblUnitPrice" runat="server" 
                        Font-Bold="True" Font-Size="Larger">
                    </asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="each" 
                        Font-Bold="True" Font-Size="Larger">
                    </asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Quantity:"></asp:Label>&nbsp;
        <asp:TextBox ID="txtQuantity" runat="server" Width="40px">
        </asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server" ControlToValidate="txtQuantity" Display="Dynamic" 
            ErrorMessage="Quantity is a required field." ForeColor="Red">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="txtQuantity" Display="Dynamic" 
            ErrorMessage="Quantity must range from 1 to 500."
            MaximumValue="500" MinimumValue="1" Type="Integer" ForeColor="Red">
        </asp:RangeValidator><br /><br />
        <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" 
            onclick="btnAdd_Click" />&nbsp;
        <asp:Button ID="btnCart" runat="server" CausesValidation="False" 
            PostBackUrl="~/Cart.aspx" Text="Go to Cart" />
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
