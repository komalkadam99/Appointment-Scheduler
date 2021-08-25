using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void PloginBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Plogin.aspx");
    }
    protected void AloginBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Plogin.aspx");
    }
}