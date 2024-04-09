<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Practical6.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 106px;
        }

        .auto-style2 {
            width: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Name</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Language</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:DropDownList ID="ddlLanguage" runat="server">
                            <asp:ListItem>English</asp:ListItem>
                            <asp:ListItem>Malay</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="lBtnGo" runat="server" OnClick="lBtnGo_Click">Go</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
