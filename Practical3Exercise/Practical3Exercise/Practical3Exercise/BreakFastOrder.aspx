<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BreakFastOrder.aspx.cs" Inherits="Practical3Exercise.BreakFastOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 92px;
        }
        .auto-style3 {
            width: 78px;
        }
        .auto-style4 {
            width: 130px;
        }
        .auto-style5 {
            width: 143px;
        }
        .auto-style9 {
            width: 28%;
        }
    </style>
</head>
<body>
    <h1>FLYING BREAKFAST.COM</h1>
    <p>Order your breakfast online. Online order starts 2.00am - 11am everyday</p>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style1">Breakfast Set</td>
                    <td>
                        <asp:RadioButtonList ID="rblSet" runat="server" OnSelectedIndexChanged="rblSet_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem>Set 1</asp:ListItem>
                            <asp:ListItem>Set 2</asp:ListItem>
                            <asp:ListItem>Set 3</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="lblSetDetail" runat="server" Text="[lblSetDetail]"></asp:Label>
        <table>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">Quantity</td>
                <td class="auto-style4">Total(RM)</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:CheckBox ID="cbSet1" runat="server" Text="Set 1" AutoPostBack="True" OnCheckedChanged="cbSet1_CheckedChanged" />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtboxQuantitySet1" runat="server" TextMode="Number" Text="1" AutoPostBack="True" OnTextChanged="txtboxQuantitySet1_TextChanged">1</asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblPriceSet1" runat="server" Text="[lblPriceSet1]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:CheckBox ID="cbSet2" runat="server" Text="Set 2" AutoPostBack="True" OnCheckedChanged="cbSet2_CheckedChanged" />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtboxQuantitySet2" runat="server" TextMode="Number" Text="1" AutoPostBack="True" OnTextChanged="txtboxQuantitySet2_TextChanged">1</asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblPriceSet2" runat="server" Text="[lblPriceSet2]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:CheckBox ID="cbSet3" runat="server" Text="Set 3" AutoPostBack="True" OnCheckedChanged="cbSet3_CheckedChanged" />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtboxQuantitySet3" runat="server" TextMode="Number" Text="1" AutoPostBack="True" OnTextChanged="txtboxQuantitySet3_TextChanged">1</asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblPriceSet3" runat="server" Text="[lblPriceSet3]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">Total(RM)</td>
                <td class="auto-style4">
                    <asp:Label ID="lblTotalPrice" runat="server" Text="[lblTotalPrice]"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
        <br />
        <br />
        <asp:Button ID="btnConfirmOrder" runat="server" Text="Confirm Order" OnClientClick="javascript:confirm('Are you sure')" PostBackUrl="~/OrderConfirm.aspx"/>
    </form>

</body>
</html>
