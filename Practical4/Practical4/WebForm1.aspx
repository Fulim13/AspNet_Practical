<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            width: 414px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Category</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:Button ID="btnFind" runat="server" CssClass="auto-style2" OnClick="btnFind_Click" Text="Find" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">
                        Your search return: <asp:Label ID="lblResult" runat="server" Text="[lblResult]"></asp:Label>
&nbsp;record(s).</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                Product Name: <%#Eval("ProductName") %>
                <br />
                Unit Price: <%#Eval("UnitPrice") %>
                <br />
                <br />
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([CategoryID] = @CategoryID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCategory" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
