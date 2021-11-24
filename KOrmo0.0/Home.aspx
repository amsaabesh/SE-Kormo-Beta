<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="KOrmo0._0.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kormo_Home</title>
     <link href="Home.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 108px;
            text-align: left;
        }
        .auto-style3 {
            height: 108px;
            width: 585px;
        }
        .auto-style4 {
            width: 585px;
        }
        .auto-style5 {
            margin-left: 2;
            margin-top: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"><section>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:ImageButton ID="ImageButton1" href="Registration.aspx" runat="server" Height="250px" ImageUrl="~/Images/elect.jpg" Width="250px" OnClick="ImageButton1_Click" />
                        <br />
                        <asp:LinkButton ID="LinkButton1" href="Test.html" runat="server" OnClick="LinkButton1_Click">Electrician</asp:LinkButton>
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="ImageButton5" runat="server" Height="250px" Width="250px" ImageUrl="~/Images/water.jpg" />
                        <br />
                        <asp:LinkButton ID="LinkButton2" href="Registration.aspx" runat="server">Water Mechanics</asp:LinkButton>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="250px" Width="250px" ImageUrl="~/Images/gas.jpg" />
                        <br />
                        <asp:LinkButton ID="LinkButton3" href="Registration.aspx" runat="server">Gas Mechanics</asp:LinkButton>
                        <br />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton6" runat="server" CssClass="auto-style5" Height="250px" ImageUrl="~/Images/abour us.jpg" Width="250px" />
                        <br />
                        <strong>About Us</strong></td>
                </tr>
            </table>

        </div>
        </section>
    </form>
</body>
</html>
