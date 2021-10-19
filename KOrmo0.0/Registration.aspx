<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="KOrmo0._0.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kormo_Registration</title>
    <link href="Registration.css" rel="stylesheet" />
    <style>

        @import url('https://font.gppgleapis.com/family=Bitter|Creat+Round|Pacifico');

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <h3>User Registration</h3>

                <asp:TextBox ID="name" placeholder="Name" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="name" ErrorMessage="Please Enter Username."></asp:RequiredFieldValidator><br />

                <asp:TextBox ID="nid" placeholder="NID" TextMode="Number" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="nid" ErrorMessage="Please Enter NID number."></asp:RequiredFieldValidator><br />

                <asp:TextBox ID="mobile" placeholder="Mobile" TextMode="Phone" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="mobile" ErrorMessage="Please Enter Mobile number."></asp:RequiredFieldValidator><br />

                <asp:TextBox ID="email" placeholder="Email" TextMode="Email" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="email" ErrorMessage="Please Enter Email."></asp:RequiredFieldValidator><br />

                <asp:TextBox ID="pass" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="pass" ErrorMessage="Please Enter Password."></asp:RequiredFieldValidator><br />

                <asp:TextBox ID="address" placeholder="Address" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Font-Size="Medium" ForeColor="Red" Display="Dynamic" ControlToValidate="address" ErrorMessage="Please Enter Address."></asp:RequiredFieldValidator><br />

                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" /><br />
                <asp:Label ID="Label1" Visible="false" runat="server" Text="You are Successfully Registered. Go to login page."></asp:Label><br />
                <a href="LoginPage.aspx">Login Page</a>
            </div>

        </section>
    </form>
</body>
</html>
