using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DateSlot : System.Web.UI.Page
{
    
    DateTime d;
    int Slot_id;
    int P_id;
    int Doc_id;
    string spec;
    string user;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            user = Session["username"].ToString();
            username.Text = user;
        }
        else
        {
            Response.Redirect("Index.aspx");
        }
        BtnSpc.Text = "Speciality - " + Session["spec"].ToString();
        BtnD.Text = "Doctor - " + Session["Doc_Name"].ToString();
        
    }
    protected void Calendar1_DayRender(object sender, System.Web.UI.WebControls.DayRenderEventArgs e)
    {
        // Select all dates in the past
        if (e.Day.Date < System.DateTime.Today)
        {
            // Disable date
            e.Day.IsSelectable = false;
            // Change color of disabled date
            e.Cell.CssClass = "DateColor";
        }

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        SDate.CssClass = "selectD1";
        SLotLabel.CssClass = "SlotL1";
        Doc_id = (int)Session["DocId"];
        //int docid = Int32.Parse(DropDownList3.SelectedValue);
        d = Calendar1.SelectedDate.Date;
        

        
        

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
        con.Open();
        
        SqlCommand cmd = new SqlCommand("SELECT * FROM SlotTable3 WHERE S_id IN (SELECT A_Slot FROM AppointmentTable2 WHERE Doc_id=@id AND A_date=@date)", con);
        cmd.Parameters.AddWithValue("@id", Doc_id);
        cmd.Parameters.AddWithValue("@date", d);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            int k;
           
            List<int> TakenSlot = new List<int>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                
                
                k=(int)(dt.Rows[i][0]);
                TakenSlot.Add(k);

                
                //Response.Redirect("FinalBook.aspx");
            }
            
            for (int i = 0; i < TakenSlot.Count; i++)
            {
                if (TakenSlot[i] != 1)
                {
                    slot1.Enabled = true;
                    slot1.CssClass = "slot";
                    slot1.Click += slot1_Click;
                }
                if (TakenSlot[i] != 2)
                {
                    slot2.Enabled = true;
                    slot2.CssClass = "slot";
                    slot2.Click += slot2_Click;
                }
                if (TakenSlot[i] != 3)
                {
                    slot3.Enabled = true;
                    slot3.CssClass = "slot";
                    slot3.Click += slot3_Click;
                }
                if (TakenSlot[i] != 4)
                {
                    slot4.Enabled = true;
                    slot4.CssClass = "slot";
                    slot4.Click += slot4_Click;
                }
                if (TakenSlot[i] != 5)
                {
                    slot5.Enabled = true;
                    slot5.CssClass = "slot";
                    slot5.Click += slot5_Click;
                }
                if (TakenSlot[i] != 6)
                {
                    slot6.Enabled = true;
                    slot6.CssClass = "slot";
                    slot6.Click += slot6_Click;
                }
                if (TakenSlot[i] != 7)
                {
                    slot7.Enabled = true;
                    slot7.CssClass = "slot";
                    slot7.Click += slot7_Click;

                }
                if (TakenSlot[i] != 8)
                {
                    slot8.Enabled = true;
                    slot8.CssClass = "slot";
                    slot8.Click += slot8_Click;
                }
            }
            for (int i = 0; i < TakenSlot.Count; i++)
            {
                if (TakenSlot[i] == 1)
                {
                    slot1.Enabled = false;
                    slot1.CssClass = "selectedBtn";
                    
                }
                if (TakenSlot[i] == 2)
                {
                    slot2.Enabled = false;
                    slot2.CssClass = "selectedBtn";
                   
                }
                if (TakenSlot[i] == 3)
                {
                    slot3.Enabled = false;
                    slot3.CssClass = "selectedBtn";
                }
                if (TakenSlot[i] == 4)
                {
                    slot4.Enabled = false;
                    slot4.CssClass = "selectedBtn";
                }
                if (TakenSlot[i] == 5)
                {
                    slot5.Enabled = false;
                    slot5.CssClass = "selectedBtn";
                }
                if (TakenSlot[i] == 6)
                {
                    slot6.Enabled = false;
                    slot6.CssClass = "selectedBtn";
                }
                if (TakenSlot[i] == 7)
                {
                    slot7.Enabled = false;
                    slot7.CssClass = "selectedBtn";

                }
                if (TakenSlot[i] == 8)
                {
                    slot8.Enabled = false;
                    slot8.CssClass = "selectedBtn";
                }
            }

        }
        else
        {
            slot1.Enabled = true;
            slot1.CssClass = "slot";
            slot1.Click += slot1_Click;
            slot2.Enabled = true;
            slot2.Click += slot2_Click;
            slot2.CssClass = "slot";
            slot3.Enabled = true;
            slot3.CssClass = "slot";
            slot3.Click += slot3_Click;
            slot4.Enabled = true;
            slot4.CssClass = "slot";
            slot4.Click += slot4_Click;
            slot5.Enabled = true;
            slot5.CssClass = "slot";
            slot5.Click += slot5_Click;
            slot6.Enabled = true;
            slot6.CssClass = "slot";
            slot6.Click += slot6_Click;
            slot7.Enabled = true;
            slot7.CssClass = "slot";
            slot7.Click += slot7_Click;
            slot8.Enabled = true;
            slot8.CssClass = "slot";
            slot8.Click += slot8_Click;
        }
        

        //SELECT * FROM SlotTable3 WHERE S_id <> (SELECT A_Slot FROM AppointmentTable2 WHERE Doc_id=1 AND A_date='2020-12-22')

    }


    
    protected void slot1_Click(object sender, EventArgs e)
    {
        Session["slotselected"] = 1;
        Session["slotname"] = "10:00-10:20";
        Slot_id = 1;
        slot1.CssClass = "slot2";

    }
    protected void slot2_Click(object sender, EventArgs e)
    {
        Session["slotselected"] = 2;
        Session["slotname"] = "10:20-10:40";
        Slot_id = 2;
        slot2.CssClass = "slot2";
    }
    protected void slot3_Click(object sender, EventArgs e)
    {
        Session["slotselected"] = 3;
        Session["slotname"] = "10:40-11:00";
        Slot_id = 3;
        slot3.CssClass = "slot2";
    }
    protected void slot4_Click(object sender, EventArgs e)
    {
        Session["slotselected"] = 4;
        Session["slotname"] = "11:00-11:20";
        Slot_id = 4;
        slot4.CssClass = "slot2";
    }
    protected void slot5_Click(object sender, EventArgs e)
    {
        Session["slotselected"] = 5;
        Session["slotname"] = "11:20-11:40";
        Slot_id = 5;
        slot5.CssClass = "slot2";
    }
    protected void slot6_Click(object sender, EventArgs e)
    {
        Session["slotselected"] = 6;
        Session["slotname"] = "11:40-12:00";
        Slot_id = 6;
        slot6.CssClass = "slot2";
    }
    protected void slot7_Click(object sender, EventArgs e)
    {
        Session["slotselected"] = 7;
        Session["slotname"] = "12:00-12:20";
        Slot_id = 7;
        slot7.CssClass = "slot2";
    }
    protected void slot8_Click(object sender, EventArgs e)
    {
        Session["slotselected"] = 8;
        Session["slotname"] = "12:20-12:40";
        Slot_id = 8;
        slot8.CssClass = "slot2";
    }

    protected void Confirm_Click(object sender, EventArgs e)
    {
        P_id = Convert.ToInt32(Session["id"]);
        //Label1.Text = "PatientId" + P_id.ToString();
        Doc_id = Convert.ToInt32(Session["DocId"]);
        //Label2.Text = "Doc"+ Doc_id.ToString();
        d = Calendar1.SelectedDate;
        //tryDate.Text = "Date"+ d.ToString();
        Slot_id = Convert.ToInt32(Session["slotselected"]);
       
        //Label3.Text = "Slot" + Session["slotselected"].ToString();
        if (Doc_id != 0 && d != null && Slot_id != 0 && P_id != 0)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
            con.Open();

            SqlCommand command5 = new SqlCommand("insert into AppointmentTable2 (Doc_id,A_date,A_slot,Pat_id,Doc_name,Slot_name,Spec_name ) values (@doc,@date,@slot,@pat,@docname,@slotname,@specname) ", con);

            command5.Parameters.AddWithValue("@doc", Doc_id);
            command5.Parameters.AddWithValue("@date", d);
            command5.Parameters.AddWithValue("@slot", Slot_id);
            command5.Parameters.AddWithValue("@pat", P_id);
            command5.Parameters.AddWithValue("@docname", Session["Doc_Name"]);
            command5.Parameters.AddWithValue("@slotname", Session["slotname"]);
            command5.Parameters.AddWithValue("@specname", Session["spec"]);

            Session["date"] = d.ToShortDateString();

            int a = command5.ExecuteNonQuery();
            {
                if (a > 0)
                {
                    //SStat2.Text = "SUCCESSFUL";
                    Response.Redirect("Confirm.aspx");
                }
                else 
                {
                    //SStat2.Text = "UNSUCCESSFUL";
                }
            }

            con.Close();


        }
        else 
        {
            //SStat2.Text = "Some field empty";
        }
    }
    protected void BtnSpc_Click(object sender, EventArgs e)
    {
        Response.Redirect("SpecFinal.aspx");
    }
    protected void BtnD_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookDoc1.aspx");
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