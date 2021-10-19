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
    public partial class Registration : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataReader sdr;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new MySqlConnection("Data Source=localhost;Database=kormo0.0;User ID=root;Password= ");
            con.Open();
        }
        public string enc(string enpass)
        {
            byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(enpass);
            string encrypt = Convert.ToBase64String(b);
            return encrypt;
        }
            protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                pass.Text = enc(pass.Text);
                str = "insert into user (Name,NID,MobileNumber,Password,Email,Address) values ('" + name.Text + "','" + nid.Text + "','" + mobile.Text + "','" + pass.Text + "','" + email.Text + "','" + address.Text + "')";
                cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();
                Label1.Visible = true;
            }
            catch
            {
                Label1.Text = "Wrong Input";
                throw;
            }
            finally
            {
                con.Close();
            }
        }
    }
}