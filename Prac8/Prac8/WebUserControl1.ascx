<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="Prac8.WebUserControl1" %>
<div style="text-align:right; height:50px; background-color: #BCDEFF">
     You logged on as
    <asp:Label ID="lblName" runat="server"></asp:Label>
    <br />
    You logged on at
    <asp:Label ID="lblTime" runat="server"></asp:Label>
    <br />
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
</div>
