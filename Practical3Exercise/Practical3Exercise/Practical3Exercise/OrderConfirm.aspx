<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConfirm.aspx.cs" Inherits="Practical3Exercise.OrderConfirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            This is to confirm that you have ordered:<br />
            <br />
            <asp:Label ID="lblOrder" runat="server" Text="[lblOrder]"></asp:Label>
            <br />
            <br />
            The time now is
            <asp:Label ID="lblTimeNow" runat="server" Text="[lblTimeNow]"></asp:Label>
            . You will receive your order withing 25 minutes. We will reach at your doorstep before or at
            <asp:Label ID="lblReceiveTime" runat="server" Text="[lblReceiveTime]"></asp:Label>
            .<br />
            <br />
            Thank you.</div>
    </form>
</body>
</html>
