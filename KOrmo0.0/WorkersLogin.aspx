<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkersLogin.aspx.cs" Inherits="KOrmo0._0.WorkersLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User_Login</title>
    
    <link href="workerloginStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/bg10.jpg">
    <form id="form1" runat="server">
        <section>
            <img src="Image/bg2.jpg" class="panel"/>
        </section>
        <div class="sec2">
            <div class="container">
                <div class="social">
                </div>

                <div class="content">
                    <h2>Worker Login</h2>
                    <asp:TextBox ID="TextBox1" placeholder="Enter Email" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Medium" ForeColor="Black" Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="Please Enter Email."></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="TextBox2" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Medium"  ForeColor="Black" Display="Dynamic" ControlToValidate="TextBox2"  ErrorMessage="Please Enter Password."></asp:RequiredFieldValidator><br />
                    <br />
                <br />
                    <asp:Button ID="Login" runat="server" onclick="Button1_Click" Text="Login" /><br />
                    <asp:Label ID="Label1" Style="padding-left:4vw;padding-top:2vw;" Font-Size="Medium" Forecolor="Red" runat="server" Text=""></asp:Label>
                    <li><a href ="Worker Registration.aspx">Create Account</a></li>
                    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Go to User Login</asp:LinkButton>
                    </li>
                </div>
               </div> 
         </div>
    </form>
        </asp:Panel>
</body>
</html>
