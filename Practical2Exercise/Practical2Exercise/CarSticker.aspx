<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CarSticker.aspx.cs" Inherits="Practical2Exercise.CarSticker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 183px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">Student&#39;s Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Student&#39;s ID</td>
            <td>
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Joined Date</td>
            <td>
                <asp:TextBox ID="txtJoinedDate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Gender</td>
            <td>
                <asp:RadioButtonList ID="rbGender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Programmed</td>
            <td>
                <asp:DropDownList ID="ddlProg" runat="server">
                    <asp:ListItem>RSW</asp:ListItem>
                    <asp:ListItem>RIS</asp:ListItem>
                    <asp:ListItem>RDS</asp:ListItem>
                    <asp:ListItem>RIT</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Year of Study</td>
            <td>
                <asp:TextBox ID="txtYearStudy" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Vehicle’s Registration Number</td>
            <td>
                <asp:TextBox ID="txtVehicleRegNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Vehicle’s Type</td>
            <td>
                <asp:DropDownList ID="ddlVehicleType" runat="server">
                    <asp:ListItem>Class A</asp:ListItem>
                    <asp:ListItem>Class B</asp:ListItem>
                    <asp:ListItem>Class C</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblOutput" runat="server" Text="[lblOutput]"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
