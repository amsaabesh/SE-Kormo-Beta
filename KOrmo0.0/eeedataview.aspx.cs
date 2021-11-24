using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Text;
using System.Data;

namespace KOrmo0._0
{
    public partial class eeedataview : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        MySqlDataReader sdr;
        MySqlDataAdapter sda;
        DataTable dt;
        StringBuilder sb;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new MySqlConnection("Data Source=localhost;Database=kormo0.0;User ID=root;Password= ");
            con.Open();
            str = "select * from eeedataview";
            cmd = new MySqlCommand(str, con);
            sda = new MySqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            sb = new StringBuilder();
            sb.Append("<table border-25>");
            sb.Append("<tr>");
            foreach (DataColumn dc in dt.Columns)
            {
                sb.Append("<th>");
                sb.Append(dc.ColumnName.ToString());
                sb.Append("</th>");
            }
            sb.Append("</tr>");
            foreach (DataRow dr in dt.Rows)
            {

                sb.Append("<tr>");
                foreach (DataColumn dc in dt.Columns)
                {

                    sb.Append("<th>");
                    sb.Append(dr[dc.ColumnName].ToString());
                    sb.Append("</th>");

                }
                sb.Append("</tr>");

            }
            sb.Append("</table>");
            Panel1.Controls.Add(new Label { Text = sb.ToString() });
            con.Close();


        }
    }
}