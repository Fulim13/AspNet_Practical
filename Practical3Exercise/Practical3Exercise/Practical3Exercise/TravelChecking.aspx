<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelChecking.aspx.cs" Inherits="Practical3Exercise.TravelChecking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 170px;
        }
        .auto-style2 {
            width: 232px;
        }
        .auto-style3 {
            width: 29%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Holiday Travel Package<br />
            <br />
            <asp:Label ID="lblWelcomeMessage" runat="server" Text="[lblWelcomeMessage]"></asp:Label>
            <br />
            Your Budget:<asp:TextBox ID="tbxBudget" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            Choose your destination:<br />
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style1">From</td>
                    <td class="auto-style2">To</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:DropDownList ID="ddlFrom" runat="server">
                            <asp:ListItem>KL</asp:ListItem>
                            <asp:ListItem>Penang</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlTo" runat="server">
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Auckland</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Button ID="btnCheck" runat="server" OnClick="btnCheck_Click" Text="Check" />
        </p>
        <p>
            Your destination : <asp:Label ID="lblMessage" runat="server" Text="[lblMessage]"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
