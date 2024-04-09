<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Practical6.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link id="css" href="<%= (string)Session["SelectedCss"] %>" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 139px;
        }

        .auto-style2 {
            width: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">You are visitor(s)</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:Label ID="lblVisitor" runat="server" Text="[lblVisitor]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">You access on</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:Label ID="lblTime" runat="server" Text="[lblTime]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="linkPreviousPage" runat="server" NavigateUrl="~/WebForm1.aspx">Previous Page</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
