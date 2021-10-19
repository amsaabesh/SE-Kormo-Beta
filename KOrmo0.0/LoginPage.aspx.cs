﻿using System;
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
            TextBox2.Text = enc(TextBox2.Text);
            str = "select * from user where Email=@email and Password=@password ";
            cmd = new MySqlCommand(str, con);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Response.Redirect("Test.aspx");
            }
            else
            {
                Label1.Text = "Username or Password Incorrect !!";
            }
            con.Close();
            
        }
    }
}