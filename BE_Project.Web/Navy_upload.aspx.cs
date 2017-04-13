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

namespace BE_Project.Web
{
    public partial class Navy_upload : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(fileid());
            Label3.Visible = false;
            Label2.Visible = false;
            grid();
        }

        public int fileid()
        {
            int fid;
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select max(fileid) from uploadfile", con);
            string id = Convert.ToString(cmd1.ExecuteScalar());
            if (id == "")
            {
                fid = 1;
            }
            else
            {
                fid = Convert.ToInt16(id);
                fid = fid + 1;
            }
            con.Close();
            return fid;
        }

       

        public void grid()
        {
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select * from uploadfile where name='Navy'", con);
            DataSet st = new DataSet();
            adp.Fill(st);
            if (st.Tables[0].Rows.Count > 0)
            {
                GridView1.Visible = true;
                GridView1.DataSource = st;
                GridView1.DataBind();
                Label2.Visible = false;
            }
            else
            {
                GridView1.Visible = false;
                Label2.Visible = true;
                Label2.Text = "No files are uploaded";
            }
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            byte[] filebytes = new byte[FileUpload1.PostedFile.InputStream.Length + 1];
            string fext = Path.GetExtension(FileUpload1.FileName);
            FileUpload1.PostedFile.InputStream.Read(filebytes, 0, filebytes.Length);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into uploadfile values('" + Label1.Text + "','" + TextBox1.Text + "',@files,'Navy','" + fext + "')", con);

            cmd.Parameters.AddWithValue("@files", filebytes);
            cmd.ExecuteNonQuery();
            Label3.Text = "File successfully uploaded";
            con.Close();

            grid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int a = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from uploadfile where fileid='" + a + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            grid();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            grid();
        }

       
    }
}
