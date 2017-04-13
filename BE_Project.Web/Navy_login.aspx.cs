using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace BE_Project.Web
{
    public partial class Navy_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        Cryptography cr = new Cryptography();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select uid,name,passwd,x1,y1,time,x2,y2,x3,y3,x4,y4,x5,y5,email from reg where name='" + TextBox1.Text + "'and field='Navy'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            Session["uid"] = ds.Tables[0].Rows[0]["uid"].ToString();
            Session["na"] = ds.Tables[0].Rows[0]["name"].ToString();
            Session["em"] = ds.Tables[0].Rows[0]["email"].ToString();
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                string name, dbx1, dby1, time, dbx2, dby2, dbx3, dby3, dbx4, dby4, dbx5, dby5, dbpass, decpass, dectime;
                name = ds.Tables[0].Rows[0]["name"].ToString();
                dbx1 = ds.Tables[0].Rows[0]["x1"].ToString();
                dby1 = ds.Tables[0].Rows[0]["y1"].ToString();
                dbx2 = ds.Tables[0].Rows[0]["x2"].ToString();
                dby2 = ds.Tables[0].Rows[0]["y2"].ToString();
                dbx3 = ds.Tables[0].Rows[0]["x3"].ToString();
                dby3 = ds.Tables[0].Rows[0]["y3"].ToString();
                dbx4 = ds.Tables[0].Rows[0]["x4"].ToString();
                dby4 = ds.Tables[0].Rows[0]["y4"].ToString();
                dbx5 = ds.Tables[0].Rows[0]["x5"].ToString();
                dby5 = ds.Tables[0].Rows[0]["y5"].ToString();
                dbpass = ds.Tables[0].Rows[0]["passwd"].ToString();
                time = ds.Tables[0].Rows[0]["time"].ToString();
                dectime = cr.Decrypt(time);
                decpass = cr.Decrypt(dbpass);
                if (name == TextBox1.Text && decpass == TextBox3.Text && dbx1 == x1.Text && dby1 == y1.Text && dbx2 == x2.Text && dby2 == y2.Text && dbx3 == x3.Text && dby3 == y3.Text && dbx4 == x4.Text && dby4 == y4.Text && dbx5 == x5.Text && dby5 == y5.Text && dectime == TextBox2.Text)
                {
                    Response.Redirect("Navy_upload.aspx");
                }
                
                //if (name == TextBox1.Text && x1 == TextBox2.Text && y1 == TextBox3.Text && time == TextBox2.Text)
                //{
                //    Response.Redirect("inbox.aspx");
                //}
                else
                {
                    msgBox.Show("Enter valid details");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    //TextBox2.Text = "";
                    //TextBox3.Text = "";
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
                con.Open();
                SqlDataAdapter adp = new SqlDataAdapter("select * from reg where name='" + TextBox1.Text + "'and field='Navy'", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
           

            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                string email = ds.Tables[0].Rows[0]["email"].ToString();
                string password = ds.Tables[0].Rows[0]["passwd"].ToString();
                string decrypted_password = cr.Decrypt(password);

                MailMessage mail = new MailMessage();

                mail.From = new MailAddress("dataintegrity2013@gmail.com");

                mail.To.Add(email);

                // mail.CC.Add(TextBox3.Text);

                mail.Subject = "Password Recovery";

                mail.IsBodyHtml = true;

                mail.Body = "Your Password is: " + decrypted_password;

                //mail.Attachments.Add(new Attachment(textBox2.Text));

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);//476

                smtp.Credentials = new System.Net.NetworkCredential("dataintegrity2013@gmail.com", "cloudcomputing");

                smtp.EnableSsl = true;

                smtp.Send(mail);
                msgBox.Show("Password has been sent to your registered Email ID. Thank you.");
            }
            else { msgBox.Show("wrong username"); }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select * from reg where name='" + TextBox1.Text + "'and field='Defence'", con);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                string email = ds.Tables[0].Rows[0]["email"].ToString();
                string x1 = ds.Tables[0].Rows[0]["x1"].ToString();
                string y1 = ds.Tables[0].Rows[0]["y1"].ToString();
                string x2 = ds.Tables[0].Rows[0]["x2"].ToString();
                string y2 = ds.Tables[0].Rows[0]["y2"].ToString();
                string x3 = ds.Tables[0].Rows[0]["x3"].ToString();
                string y3 = ds.Tables[0].Rows[0]["y3"].ToString();
                string x4 = ds.Tables[0].Rows[0]["x4"].ToString();
                string y4 = ds.Tables[0].Rows[0]["y4"].ToString();
                string x5 = ds.Tables[0].Rows[0]["x5"].ToString();
                string y5 = ds.Tables[0].Rows[0]["y5"].ToString();

                MailMessage mail = new MailMessage();

                mail.From = new MailAddress("dataintegrity2013@gmail.com");

                mail.To.Add(email);

                // mail.CC.Add(TextBox3.Text);

                mail.Subject = "Password Recovery";

                mail.IsBodyHtml = true;

                mail.Body = "Your Click Points are: " + "x1 = " + x1 + " y1 = " + y1 + ", " + "x2 = " + x2 + " y2 = " + y2 + ", " + "x3 = " + x3 + " y3 = " + y3 + ", " + "x4 = " + x4 + " y4 = " + y4 + ", " + "x5 = " + x5 + " y5 = " + y5;

                //mail.Attachments.Add(new Attachment(textBox2.Text));

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);

                smtp.Credentials = new System.Net.NetworkCredential("dataintegrity2013@gmail.com", "cloudcomputing");

                smtp.EnableSsl = true;

                smtp.Send(mail);
                msgBox.Show("CP has been sent to your registered Email ID. Thank you.");
            }
        }

       
    }
}
