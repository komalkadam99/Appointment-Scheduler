using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Plogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Plog_Click(object sender, EventArgs e)
    {
        String uname = PUname.Text.ToString();
        String pwd = PPwd.Text.ToString();
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from PatientTable where P_email =@Email and P_pwd=@Password", con);
        cmd.Parameters.AddWithValue("@Email", uname);
        cmd.Parameters.AddWithValue("@Password", pwd);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            //Label1.Visible = true;
            //Label1.Text = dt.Rows[0][2].ToString();
            Session["username"] = dt.Rows[0][2].ToString() +" " + dt.Rows[0][3].ToString();
            Session["status"] = dt.Rows[0][10].ToString();
            Session["id"] = dt.Rows[0][0].ToString();

            if (Session["status"].ToString() == "Verified")
            {
                Response.Redirect("Landing.aspx");
            }
            else 
            {
                Response.Redirect("ActivationPage.aspx");
            }
            

        }

        else
        {

            Label2.Visible = true;
            Label2.Text = "Wrong Details";
        }
        con.Close();
    }

    protected void signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("Preg.aspx");
    }
}