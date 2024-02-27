<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 45px;
        }
        .auto-style2 {
            width: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Server Control Object<br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
            - Properties (EG: ID, ForeColor, Text ...)<br />
            - Method (txtName.Focus())<br />
            - Event (triggered by external party - User click event)<br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Name</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMsg" runat="server" Text="[lblMsg]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
