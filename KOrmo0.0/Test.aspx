<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="KOrmo0._0.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="teststyle.css" rel="stylesheet" />
    <style>
        @import url("https://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico");
    </style>
</head>
<body>
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/bg10.jpg">
    <form id="form1" runat="server">
        <section>
            <div class="container1">
                <asp:Label ID="Label1" Style="padding-left:4vw;padding-top:10vh;" Font-Underline="true" Font-Size="Large" Font-Bold="true" ForeColor="Black" runat="server" Text="Login"></asp:Label><br /><br />
                <li><a href="LoginPage.aspx">User Login</a></li><br />
                <li><a href="WorkersLogin.aspx">Worker Login</a></li><br />
            </div>
            <div class="container2">
                <asp:Label ID="Label2" Style="padding-left:5vw;padding-top:4vw;" Font-Underline="true" Font-Size="Large" Font-Bold="true" ForeColor="Black" runat="server" Text="Signup"></asp:Label><br /><br />
                <li><a href="Registration.aspx">User Regestration</a></li><br />
                <li><a href="Worker Registration.aspx">Worker Regestration</a></li><br />
            </div>
            <div class="container3">
                <asp:Label ID="Label3" Style="padding-right:10vw;padding-top:10vh;" Font-Size="Larger" Font-Bold="true" ForeColor="White" runat="server" Text="KORMO"></asp:Label>
            </div>
        </section>
    </form>
        </asp:Panel>
</body>
</html>
