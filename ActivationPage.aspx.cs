using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ActivationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
        con.Open();

        SqlCommand cmd3 = new SqlCommand("Select ActivationCode from PatientTable where P_id=@id", con);
        cmd3.Parameters.AddWithValue("@id", Convert.ToInt32(Session["id"]));
        SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
        DataSet ds3 = new DataSet();
        da3.Fill(ds3);
        if (ds3.Tables[0].Rows.Count > 0) {
            String activationcode;
            activationcode = ds3.Tables[0].Rows[0]["ActivationCode"].ToString();
            if (activationcode == TextBox1.Text)
            {
                changestatus();
                Label2.Text = "Succesful";

            }
            else {
                Label2.Text = "Incorrect activation code";
            }

            con.Close();
        }
       
        
    }

    private void changestatus() {
        SqlConnection con2 = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
        con2.Open();
        SqlCommand cmd6 = new SqlCommand("UPDATE PatientTable SET Status=@stat where P_id=@id", con2);
        cmd6.Parameters.AddWithValue("@stat", "Verified");
        cmd6.Parameters.AddWithValue("@id", Convert.ToInt32(Session["id"]));
     
        int a = cmd6.ExecuteNonQuery();
        con2.Close();
        Session["status"] = "verified";
        Response.Redirect("Landing.aspx");

    
    }
}