<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Chapter4Extra.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table style="width:100%;">
     <tr>
         <td colspan="3">Search Product Information</td>
     </tr>
     <tr>
         <td class="auto-style1">Product ID</td>
         <td class="auto-style2">:</td>
         <td>
             <asp:TextBox ID="txtProductID" runat="server"></asp:TextBox>
             <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
         </td>
     </tr>
     <tr>
         <td class="auto-style1">&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
         <td>&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style1">Product Name</td>
         <td class="auto-style2">:</td>
         <td>
             <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td class="auto-style1">&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style1">&nbsp;</td>
         <td class="auto-style2">&nbsp;</td>
         <td>
             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" DataSourceID="SqlDataSource1" DataTextField="ProductId" DataValueField="ProductId">
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringA %>" ProviderName="<%$ ConnectionStrings:ConnectionStringA.ProviderName %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
         </td>
     </tr>
 </table>
        </div>
    </form>
</body>
</html>
