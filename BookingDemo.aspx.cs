using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookingDemo : System.Web.UI.Page
{
    SqlDataAdapter da;
    SqlConnection con;
    DataSet ds = new DataSet();
    SqlCommand cmd = new SqlCommand();  
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            BindData();
        }  
    }

     

protected void Button1_Click(object sender, EventArgs e)
{
    int docid = Int32.Parse(DropDownList3.SelectedValue);
    DateTime d = Calendar1.SelectedDate;
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
    con.Open();
    SqlCommand cmd = new SqlCommand("SELECT * FROM SlotTable3 WHERE S_id <> (SELECT A_Slot FROM AppointmentTable2 WHERE (Doc_id=@did AND A_date=@date))", con);
    cmd.Parameters.AddWithValue("@did", docid);
    cmd.Parameters.AddWithValue("@date", d);

    //SELECT * FROM SlotTable3 WHERE S_id <> (SELECT A_Slot FROM AppointmentTable2 WHERE Doc_id=1 AND A_date='2020-12-22')

    SqlDataReader reader = cmd.ExecuteReader();
    reader.Read();
    //Label1.Text = reader[1].ToString();
    //GridView1.DataSource = reader;
    //GridView1.DataBind(); 
    
    //DropDownList4.DataSource = cmd.ExecuteReader();
    //DropDownList4.DataBind();
    //DropDownList4.DataTextField ="Slot";
    //DropDownList4.DataValueField = "S_id";

    // Fill the list box with the values retrieved
    //lbFound.Items.Clear();
    //GridView1.DataSource = rdr;
    //GridView1.DataBind(); 
           
}
protected void Button2_Click(object sender, EventArgs e)
{

}
protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
{

}



protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
    con.Open();
    Label lbldeleteID = (Label)GridView2.Rows[e.RowIndex].FindControl("A_id");
    SqlCommand cmd = new SqlCommand("Delete from AppointmentTable2 where A_id='" + lbldeleteID.Text + "'", con);
   
    cmd.ExecuteNonQuery();

    con.Close();
    BindData();
    
}
public void BindData()
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
    con.Open();

    SqlCommand cmd = new SqlCommand("Select A_id,A_date,Doc_name,Slot_name from AppointmentTable2 where A_id=1", con);
   
    cmd.Connection = con;
    da = new SqlDataAdapter(cmd);
    da.Fill(ds);
    
    cmd.ExecuteNonQuery();
    GridView2.DataSource = ds;
    GridView2.DataBind();
    con.Close();
}  
}

