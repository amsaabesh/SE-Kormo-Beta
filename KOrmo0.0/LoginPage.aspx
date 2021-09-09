<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="KOrmo0._0.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kormo_Login</title>
    
    <link href="loginStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <img src="Image/bg2.jpg" class="panel"/>
        </section>
        <div class="sec2">
            <div class="container">
                <div class="social">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/round.png" />
                </div>

                <div class="content">
                    <h2>Login</h2>
                    <asp:TextBox ID="TextBox1" placeholder="Enter User name" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox2" placeholder="Password" runat="server"></asp:TextBox><br />
                    <asp:Button ID="Login" runat="server" onclick="Button1_Click" Text="Login" /><br />
                    <div class="abc">
                    <asp:Button ID="Button1" runat="server" onclick="Button2_Click" Text="About Us" /><br />
                </div>
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>
