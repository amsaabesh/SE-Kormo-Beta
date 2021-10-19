<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkersLogin.aspx.cs" Inherits="KOrmo0._0.WorkersLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User_Login</title>
    
    <link href="workerloginStyleSheet.css" rel="stylesheet" />
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
                    <h2>Worker Login</h2>
                    <asp:TextBox ID="TextBox1" placeholder="Enter Email" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Medium" ForeColor="Black" Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="Please Enter Email."></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="TextBox2" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Medium"  ForeColor="Black" Display="Dynamic" ControlToValidate="TextBox2"  ErrorMessage="Please Enter Password."></asp:RequiredFieldValidator><br />
                    <asp:Button ID="Login" runat="server" onclick="Button1_Click" Text="Login" /><br />
                    <asp:Label ID="Label1" Style="padding-left:4vw;padding-top:2vw;" Font-Size="Medium" Forecolor="Red" runat="server" Text=""></asp:Label>
                    <li><a href ="Worker Registration.aspx">Create Account</a></li>
                </div>
               </div> 
         </div>
    </form>
</body>
</html>
