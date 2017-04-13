using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
namespace BE_Project.Web
{
    public partial class Navy_reg : System.Web.UI.Page
    {
       
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        string encrypt, encrypttime;
        Cryptography cr = new Cryptography();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            encrypt_data();
            string g1 = DropDownList1.SelectedItem.Value + "/";
            string g2 = DropDownList2.SelectedItem.Value + "/";
            string g3 = DropDownList3.SelectedItem.Value;
            string g4 = g1 + g2 + g3;
            string n = TextBox2.Text;
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into reg values('" + TextBox1.Text + "','" + encrypt + "','" + x1.Text + "','" + y1.Text + "','" + x2.Text + "','" + y2.Text + "','" + x3.Text + "','" + y3.Text + "','" + x4.Text + "','" + y4.Text + "','" + x5.Text + "','" + y5.Text + "','" + g4 + "','" + encrypttime + "','" + RadioButtonList1.SelectedItem.Value + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','Navy','0')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            #region email - Password, CCP and Count

            MailMessage mail = new MailMessage();

            mail.From = new MailAddress("youcloud420@gmail.com");

            mail.To.Add(TextBox5.Text);

            // mail.CC.Add(TextBox3.Text);

            mail.Subject = "Successful REgistration";

            mail.IsBodyHtml = true;

            mail.Body = "Hello There!, Thank you for registering with us " + TextBox1.Text + ". Your traditional password is: " + TextBox6.Text + ". Your Click Points are - x1,y1: " + x1.Text + "," + y1.Text + " | " + "x2,y2: " + x2.Text + "," + y2.Text + " | " + "x3,y3: " + x3.Text + "," + y3.Text + " | " + "x4,y4: " + x4.Text + "," + y4.Text + " | " + "x5,y5: " + x5.Text + "," + y5.Text + ". Your Count is: " + TextBox2.Text + ". Thank you!";

            //mail.Attachments.Add(new Attachment(textBox2.Text));

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);

            smtp.Credentials = new System.Net.NetworkCredential("youcloud420@gmail.com", "shefali420");

            smtp.EnableSsl = true;

            smtp.Send(mail);

            #endregion
            {
                msgBox.Show("Registered successfully");
            }
        }

        private void encrypt_data()
        {
            encrypt = cr.Encrypt(TextBox6.Text);
            encrypttime = cr.Encrypt(TextBox2.Text);
            // encrypt = encrypt.Replace(' ','+');
            // msgBox.Show(encrypt);
        }

        

       
    }
}
