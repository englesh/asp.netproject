using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class BookTickets : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    IDataReader dr;
    public void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = (@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\prince\Documents\movietb.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();
      if (!IsPostBack)
        {
            /* cmd.CommandText = "Select distinct theatre from movie";
             cmd.Connection = con;
             DropDownList1.DataTextField = "city";
             DropDownList1.DataValueField = "mname";
             DropDownList1.DataSource = cmd.ExecuteReader();
             DropDownList1.DataBind();*/
            SqlCommand cmd = new SqlCommand("Select distinct city from movie", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[0].ToString());
            }
            dr.Close();
        }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
           
        /* cmd.CommandText = "Select theatre,city,mname from movie where city='"+DropDownList1.SelectedIndex+"'";
             cmd.Connection = con;
             DropDownList2.DataTextField = "theatre";
             DropDownList2.DataValueField = "mname";
             DropDownList2.DataSource = cmd.ExecuteReader();
             DropDownList2.DataBind();*/
      //  if (!IsPostBack)
       // {
        DropDownList2.Items.Clear();
            SqlDataReader dr1 = null;
            SqlCommand cmd = new SqlCommand("Select theatre from movie where city='" + DropDownList1.SelectedItem + "'", con);
            dr1 = cmd.ExecuteReader();
            while (dr1.Read())
            {
                DropDownList2.Items.Add(dr1[0].ToString());
            }
                      
       // }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["t1"] = DropDownList1.Text;
        Session["t2"] = DropDownList2.Text;
        Session["t3"] = DropDownList3.Text;

        Response.Redirect("spage.aspx");
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
     //   if (!IsPostBack)
      //  {
            DropDownList3.Items.Clear();
            

       // }
        SqlCommand cmd = new SqlCommand("Select mname from movie where theatre='" + DropDownList2.SelectedItem + "'", con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            DropDownList3.Items.Add(dr[0].ToString());
        }
    }
}