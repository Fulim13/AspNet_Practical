<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="Practical3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99px;
        }
        .auto-style2 {
            width: 99px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <h1>ABC BUS ONLINE BOOKING & TICKETING SYSTEM</h1>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTime" runat="server" Text="[lblTime]"></asp:Label>
        </div>
        <p>
            <asp:Button ID="btnPostback" runat="server" Text="Postback" />
        </p>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:ListBox ID="lblItem" runat="server">
                    <asp:ListItem></asp:ListItem>
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Date:</td>
            <td>
                <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Adult</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtAdult" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Child</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtChild" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">From</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlFrom" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                    <asp:ListItem>&lt;- Select Departure Point -&gt;</asp:ListItem>
                    <asp:ListItem>Hentian Duta</asp:ListItem>
                    <asp:ListItem>Hentian Putra</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Destination</td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                    <asp:ListItem>&lt;- Select Destination -&gt;</asp:ListItem>
                    <asp:ListItem>Butterworth</asp:ListItem>
                    <asp:ListItem>Seremban</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ticket Price</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPrice" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
        <p>
            <asp:Label ID="lblError" runat="server" Text="[lblError]"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnBookTkt" runat="server" Text="Book Ticket" OnClientClick="javascript:alert('You are now will be directed to the booking confirmation page')" PostBackUrl="~/ConfirmBooking.aspx" />
            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" OnMouseOver="this.value='Click if you confirm to reset selection'" OnMouseOut="this.value='Cancel'"/>
        </p>
    </form>
    </body>
</html>
