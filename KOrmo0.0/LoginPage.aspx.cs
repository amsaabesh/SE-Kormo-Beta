using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace KOrmo0._0
{
    public partial class LoginPage : System.Web.UI.Page
    {
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
        MySqlConnection con;
        MySqlCommand cmd;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
        con = new MySqlConnection("Data Source=localhost;Database=dbtest;User ID=root;Password= ");
        con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
        str = "insert into details values ('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        cmd = new MySqlCommand(str, con);
            MsgBox("Login Successfull! ", this.Page, this);
            cmd.ExecuteNonQuery();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            MsgBox("Kormo is a website. From here, skilled workers can be hired based on their profiles. We prioritize skills. So if you take our staff from here, you can make them work as you like. If we think they are safe for you and only if you are also safe for them then a deal will be done. Our payment will be online based. This will reduce the hassle a lot. On the one hand, they do not have to look for work, on the other hand, people will easily find skilled workers.", this.Page, this);
        }
    }
}