using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString =(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\prince\Documents\movietb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into login"+"(phone,email,pass,uname)values(@phone,@email,@pass,@uname)",con);
        cmd.Parameters.AddWithValue("@phone", TextBox4.Text);
        cmd.Parameters.AddWithValue("@email", TextBox5.Text);
        cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
        cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
        cmd.ExecuteNonQuery();
        Label6.Text = "Registered";

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}