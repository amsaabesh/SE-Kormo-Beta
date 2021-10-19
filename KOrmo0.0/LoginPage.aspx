﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="KOrmo0._0.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User_Login</title>
    
    <link href="loginStyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 227px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <img src="Image/bg2.jpg" class="panel"/>
        </section>
        <div class="sec2">
            <div class="container">
                <div class="social">
                </div>

                <div class="auto-style1">
                    <h2>User Login</h2>
                    <asp:TextBox ID="TextBox1" placeholder="Enter Email" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Medium" ForeColor="Black" Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="Please Enter Email."></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="TextBox2" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Medium"  ForeColor="Black" Display="Dynamic" ControlToValidate="TextBox2"  ErrorMessage="Please Enter Password."></asp:RequiredFieldValidator><br />
                    <asp:Button ID="Login" runat="server" onclick="Button1_Click" Text="Login" /><br />
                    <asp:Label ID="Label1" Style="padding-left:4vw;padding-top:2vw;" Font-Size="Medium" Forecolor="Red" runat="server" Text=""></asp:Label>
                    <li><a href ="Registration.aspx">Create Account</a></li>
                </div>
               </div> 
         </div>
    </form>
</body>
</html>
