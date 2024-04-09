<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link id="css" href="<%= (string)Session["SelectedCss"] %>" type="text/css" rel="stylesheet" />
    <%--    <link id="css" href="special.css" type="text/css" rel="stylesheet" />
    <link id="css" href="standard.css" type="text/css" rel="stylesheet" />--%>
    <style type="text/css">
        .auto-style1 {
            width: 141px;
        }

        .auto-style2 {
            width: 19px;
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Choose your team</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:DropDownList ID="ddlTheme" runat="server">
                            <asp:ListItem>Special</asp:ListItem>
                            <asp:ListItem>Standard</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnApply" runat="server" Text="Apply" OnClick="btnApply_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:CheckBox ID="chkRemember" runat="server" Text="Remember Preference" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="linkNextPage" runat="server" NavigateUrl="~/WebForm2.aspx">Next Page</asp:HyperLink>
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
