using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Preg : System.Web.UI.Page
{
    static string actcode;
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void SignupBtn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R5AI93M\SQLEXPRESS;Initial Catalog=DAS;Integrated Security=True");
        con.Open();

        SqlCommand cmd3 = new SqlCommand("Select P_email from PatientTable where P_email=@e1", con);
        cmd3.Parameters.AddWithValue("@e1", Pemail.Text);
        SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
        DataTable dt3 = new DataTable();
        da3.Fill(dt3);
        if (dt3.Rows.Count == 1)
        {
            SStat.Visible = true;
            SStat.Text = "Email Already Exists";
            con.Close();
        }

        else {
            if (Pemail.Text != null && Pfname.Text != null && Plname.Text != null && Ppwd.Text == repass.Text && Pdob.Text != null && Pbg.SelectedItem != null && Pgender.SelectedItem != null && Pcontact.Text != null)
            {

                SqlCommand cmd = new SqlCommand("INSERT INTO PatientTable (P_email,P_fname,P_lname,P_pwd, P_dob, P_gender, P_bg, P_contact) VALUES (@Email,@fname,@lname,@Password,@dob,@gen,@bg,@con)", con);
                cmd.Parameters.AddWithValue("@Email", Pemail.Text);
                cmd.Parameters.AddWithValue("@fname", Pfname.Text);
                cmd.Parameters.AddWithValue("@lname", Plname.Text);
                cmd.Parameters.AddWithValue("@Password", Ppwd.Text);
                cmd.Parameters.AddWithValue("@dob", Pdob.Text);
                cmd.Parameters.AddWithValue("@gen", Pgender.SelectedValue);
                cmd.Parameters.AddWithValue("@bg", Pbg.SelectedValue);
                cmd.Parameters.AddWithValue("@con", Pcontact.Text);



                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    SqlCommand cmd2 = new SqlCommand("select * from PatientTable where P_email =@Email and P_pwd=@Password", con);
                    cmd2.Parameters.AddWithValue("@Email", Pemail.Text);
                    cmd2.Parameters.AddWithValue("@Password", Ppwd.Text);
                    SqlDataAdapter da = new SqlDataAdapter(cmd2);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {

                        //Label1.Visible = true;
                        //Label1.Text = dt.Rows[0][2].ToString();
                        Session["username"] = dt.Rows[0][2].ToString();
                        Session["id"] = dt.Rows[0][0].ToString();
                        
                        //send activation code
                        Random random = new Random();
                        actcode=random.Next(1001,9999).ToString();
                        SqlCommand cmd4 = new SqlCommand("UPDATE PatientTable SET ActivationCode=@act,Status=@stat where P_id=@id", con);
                        cmd4.Parameters.AddWithValue("@id", Session["id"]);
                        cmd4.Parameters.AddWithValue("@act", actcode);
                        cmd4.Parameters.AddWithValue("@stat", "Unverified");
                        cmd4.ExecuteNonQuery();
                        sendcode();



                        Response.Redirect("ActivationPage.aspx");


                    }

                   
                }
                else
                {
                    SStat.Text = "signup unsuccessful :(";
                    SStat.Visible = true;
                }

                con.Close();
            }
        }

        
    }

    private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host="smtp.gmail.com";
        smtp.Port=587;
        smtp.Credentials = new System.Net.NetworkCredential("appointmentschedulerkd@gmail.com", "komaldhanu");
        
        smtp.EnableSsl=true;
        MailMessage msg = new MailMessage();
        msg.Subject="Activation code to verify email address";
        msg.Body="Dear "+Session["username"].ToString()+ " You activation code is :"+actcode;
        string toaddress=Pemail.Text.ToString();
        msg.To.Add(toaddress);
        string fromaddress = "Appointment Scheduler <AppointmentschedulerKD@gmailcom>";
        msg.From=new MailAddress(fromaddress);
        try{
            smtp.Send(msg);
        }
        catch{
            throw;
        }

    
    }


}