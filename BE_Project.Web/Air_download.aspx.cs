using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

namespace BE_Project.Web
{
    public partial class Air_download : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        string rnumb;
        string c,d;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        private void filldata()
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select * from uploadfile where name='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            DataGrid1.DataSource = ds;
            DataGrid1.DataBind();
            con.Close();
        }
        private void getrnumb()
        {
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("update reg set otp=" + rnumb + " where uid='" + Session["uid"] + "'", con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            //DataGrid1.DataSource = ds;
            //DataGrid1.DataBind();
            con.Close();
        }

        private void getmobile()
        {
            
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter("Select * from reg where uid='" + Session["uid"] + "'", con);
            DataSet s = new DataSet();
            ad.Fill(s);
            if (s.Tables[0].Rows.Count > 0)
            {
                string b = s.Tables[0].Rows[0]["uid"].ToString();
                c = s.Tables[0].Rows[0]["mobile"].ToString();
                d = s.Tables[0].Rows[0]["email"].ToString();
            }
            else
            {
                msgBox.Show("incorrect password");
            }
            //DataGrid1.DataSource = ds;
            //DataGrid1.DataBind();
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            filldata();
        }

        protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            DataGrid1.CurrentPageIndex = e.NewPageIndex;
            filldata();
        }

        protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["f3"] = DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text;
            Random r = new Random();
            rnumb = r.Next(1000, 9999).ToString();

            getmobile();
            string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=nutsmumbai@gmail.com:nuts2010&senderID=TEST SMS&receipientno=" + c + "&msgtxt=" + rnumb + "&state=4";
            WebRequest request = HttpWebRequest.Create(strUrl);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream s = (Stream)response.GetResponseStream();
            StreamReader readStream = new StreamReader(s);
            string dataString = readStream.ReadToEnd();
            response.Close();
            s.Close();
            readStream.Close();

            #region email - OTP

            MailMessage mail = new MailMessage();

            mail.From = new MailAddress("youcloud420@gmail.com");

            mail.To.Add(d);

            // mail.CC.Add(TextBox3.Text);

            mail.Subject = "OTP";

            mail.IsBodyHtml = true;

            mail.Body = "Your verification code is: " + rnumb;

            //mail.Attachments.Add(new Attachment(textBox2.Text));

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);

            smtp.Credentials = new System.Net.NetworkCredential("youcloud420@gmail.com", "shefali420");

            smtp.EnableSsl = true;

            smtp.Send(mail);

            #endregion

            getrnumb();
            Response.Redirect("Air_authenticate.aspx");
        }



       

       
    }
}
