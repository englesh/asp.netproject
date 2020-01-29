using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlCommand cmd=new SqlCommand();
    SqlConnection con=new SqlConnection();
    SqlDataAdapter sda=new SqlDataAdapter();
    DataSet ds=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString=(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\prince\Documents\movietb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        cmd.CommandText="select * from login where uname='"+TextBox1.Text+"'and pass='"+TextBox2.Text+"'";
        cmd.Connection=con;
        sda.SelectCommand=cmd;
        sda.Fill(ds ,"login");
        if(ds.Tables [0].Rows.Count>0)
        {
            Label3.Text="Data Found";
            Session["name"]="Hello "+TextBox1.Text;

            Response.Redirect("booktickets.aspx");
        }
        else
        {
            Label3.Text="Data Not Found";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");

    }
}