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
    public partial class Worker_Registration : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataReader sdr;
        string str, ty;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new MySqlConnection("Data Source=localhost;Database=kormo0.0;User ID=root;Password= ");
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                str = "insert into worker (Name,NID,MobileNumber,Password,Email,Address) values ('" + name.Text + "','" + nid.Text + "','" + mobile.Text + "','" + pass.Text + "','" + email.Text + "','" + address.Text + "')";
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