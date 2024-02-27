<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="servercontrol.aspx.cs" Inherits="Practical2.servercontrol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Programmed</td>
            <td>
                <asp:DropDownList ID="ddlProg" runat="server">
                    <asp:ListItem>RIS</asp:ListItem>
                    <asp:ListItem>RSD</asp:ListItem>
                    <asp:ListItem>RIT</asp:ListItem>
                    <asp:ListItem>RSW</asp:ListItem>
                    <asp:ListItem>REI</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Area of Interest</td>
            <td>
                <asp:CheckBoxList ID="cblInterest" runat="server">
                    <asp:ListItem>Programming</asp:ListItem>
                    <asp:ListItem>Database</asp:ListItem>
                    <asp:ListItem>Networking</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="lblSelect" runat="server" Text="[lblSelect]"></asp:Label>
</asp:Content>
