using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookDoc1 : System.Web.UI.Page
{
    string popup = "Please Select Doctor First";
    int D_id1;
    int D_id2;
    int D_id3;
    string D1_name;
    string D2_name;
    string D3_name;
    protected void Page_Load(object sender, EventArgs e)
    {
        string spec;
        string user;
        if (Session["username"] != null)
        {
            user = Session["username"].ToString();
            username.Text = user;
        }

        BtnSpc.Text = "Speciality - " + Session["spec"].ToString();
        if (Session["spec"] != null)
        {
            spec = Session["spec"].ToString();
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from DoctorTable2 where D_spec in (Select Spec_id from SpecificationTable where Spec_name=@spec) ", con);
            cmd.Parameters.AddWithValue("@spec", spec);
        
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                
                D_id1= (int)(dt.Rows[0][0]);
                D1_Name.Text = dt.Rows[0][1].ToString();
                D1_Image.ImageUrl = dt.Rows[0][4].ToString();

                D_id2 = (int)(dt.Rows[1][0]);
                D2_Name.Text = dt.Rows[1][1].ToString();
                D2_Image.ImageUrl = dt.Rows[1][4].ToString();

                D_id3 = (int)(dt.Rows[2][0]);
                D3_Name.Text = dt.Rows[2][1].ToString();
                D3_Image.ImageUrl = dt.Rows[2][4].ToString();
            }
            
            con.Close();
        }

    
    }
    protected void D1_Btn_Click(object sender, EventArgs e)
    {
        Session["DocId"] = D_id1;
        Session["Doc_Name"] = D1_Name.Text;
        Response.Redirect("DateSlot.aspx");
        
    }
    protected void D2_Btn_Click(object sender, EventArgs e)
    {
        Session["DocId"] = D_id2;
        Session["Doc_Name"] = D2_Name.Text;
        Response.Redirect("DateSlot.aspx");
    }
    
    protected void D3_Btn_Click(object sender, EventArgs e)
    {
        Session["DocId"] = D_id3;
        Session["Doc_Name"] = D3_Name.Text;
        Response.Redirect("DateSlot.aspx");
    }
    protected void BtnSpc_Click(object sender, EventArgs e)
    {
        Response.Redirect("SpecFinal.aspx");
    }
    protected void BtnT_Click(object sender, EventArgs e)
    {
        if (Session["DocId"] == null)
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

