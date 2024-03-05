<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="Practical3.ConfirmBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>
        ABC BUS BOOKING CONFIRMATION
    </h1>
    <form id="form1" runat="server">
        <div>
            <p>You have confirmed your booking with the following details</p>
        </div>

        <asp:Label ID="lblDetails" runat="server" Text="[lblDetails]"></asp:Label>

        <p>Plase make payment at our counter.</p>
    </form>
</body>
</html>
