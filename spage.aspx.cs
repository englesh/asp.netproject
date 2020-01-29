using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class spage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
            {
                Session["r"] = RadioButton2.Text;
            }
        if (RadioButton3.Checked == true)
        {
            Session["r"] = RadioButton3.Text;
        }
        if (RadioButton4.Checked == true)
        {
            Session["r"] = RadioButton4.Text;
        }
        if (RadioButton5.Checked == true)
        {
            Session["r"] = RadioButton5.Text;
        }
        
        Response.Redirect("cpage.aspx");
    }
}