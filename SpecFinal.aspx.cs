using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SpecFinal : System.Web.UI.Page
{
    string spec;
    string user;
    string popup = "Please Select Speciality First";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            user = Session["username"].ToString();
            username1.Text = user;
        }
        else 
        {
            Response.Redirect("Index.aspx");
        }
        
    }
    protected void cardiology_Click(object sender, EventArgs e)
    {
        spec = "Cardiologist";
        
        Session["spec"] = spec;
        Response.Redirect("BookDoc1.aspx");
    }
    protected void gynaecology_Click(object sender, EventArgs e)
    {
        spec = "Gynecologist";
        Session["spec"] = spec;
        Response.Redirect("BookDoc1.aspx");
    }
    protected void dentistry_Click(object sender, EventArgs e)
    {
        spec = "Dentist";
        Session["spec"] = spec;
        Response.Redirect("BookDoc1.aspx");
    }
    protected void general_Click(object sender, EventArgs e)
    {
        spec = "General Physician";
        Session["spec"] = spec;
        Response.Redirect("BookDoc1.aspx");
    }
    protected void ent_Click(object sender, EventArgs e)
    {
        spec = "ENT Specialist";
        Session["spec"] = spec;
        Response.Redirect("BookDoc1.aspx");
    }
    protected void dermat_Click(object sender, EventArgs e)
    {
        spec = "Dermatologist";
        Session["spec"] = spec;
        Response.Redirect("BookDoc1.aspx");
    }
    protected void BtnD_Click(object sender, EventArgs e)
    {
        if (Session["spec"] == null)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + popup + "');", true);
        }
    }
    protected void BtnT_Click(object sender, EventArgs e)
    {
        if (Session["spec"] == null)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + popup + "');", true);
        }

    }
    protected void BtnBook_Click(object sender, EventArgs e)
    {
        if (Session["spec"] == null)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + popup + "');", true);
        }
    }
    protected void AptHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Landing.aspx");

    }
    protected void AptLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Index.aspx");

    }
}