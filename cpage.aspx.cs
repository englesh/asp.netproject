using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        int t1=Convert.ToInt32(TextBox1.Text);
        int a = Convert.ToInt32(TextBox1.Text); 
        int m= 100* a;
        Label3.Text = Convert.ToString(m);
        Session["m"] = Label3.Text; //this will send the final price of ticket
        Session["n"] = TextBox1.Text;
        Session["l"] = DropDownList1.Text;
        Response.Redirect("final.aspx");
    }
   
}