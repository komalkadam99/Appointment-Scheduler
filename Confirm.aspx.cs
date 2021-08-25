using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Confirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DetA1.Text = Session["username"].ToString();
        DetA2.Text = Session["Doc_Name"].ToString();
        DetA3.Text = Session["spec"].ToString();
        DetA4.Text = Session["date"].ToString();
        DetA5.Text = Session["slotname"].ToString();


    }
    protected void AptHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Landing.aspx");
    }
}