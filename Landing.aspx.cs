using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Landing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("Index.aspx");
        }

        else {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
            con.Open();

            SqlCommand cmd1 = new SqlCommand("select * from PatientTable where P_id =@id", con);
            cmd1.Parameters.AddWithValue("@id", Convert.ToInt32(Session["id"]));

            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label9.Text = dt.Rows[0][1].ToString();
                Label10.Text = dt.Rows[0][2].ToString();
                Label11.Text = dt.Rows[0][3].ToString();
                Label12.Text = Convert.ToDateTime(dt.Rows[0][5]).ToString("dd-MM-yyyy");
                
                Label13.Text = dt.Rows[0][6].ToString();
                Label14.Text = dt.Rows[0][7].ToString();
                Label15.Text = dt.Rows[0][8].ToString();


            }


            //SqlCommand cmd = new SqlCommand("select Doc_name, A_date, Slot_name from AppointmentTable2 where Pat_id =@P_id", con);
            //cmd.Parameters.AddWithValue("@P_id", Session["id"]);

            //SqlDataAdapter da2 = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();  
            //da2.Fill(ds);  
            //GridView1.DataSource = ds;  

            //GridView1.DataBind();
            //GridView1.HeaderRow.Cells[0].Text = "DOCTOR";
            //GridView1.HeaderRow.Cells[1].Text = "DATE";
            //GridView1.HeaderRow.Cells[2].Text = "SLOT";




            con.Close();
        
        }
        


    }
    protected void AptLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Index.aspx");
    }


    protected void BookApt_Click(object sender, EventArgs e)
    {
        Response.Redirect("SpecFinal.aspx");
    }
}