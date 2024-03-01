using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AkaryakıtOtomasyonSistemi
{
    public partial class userlogin : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=DESKTOP-E7ODSSN\\SQLOMEN;Database=SQLomen;Trusted_Connection=True");
            SqlCommand cmd = new SqlCommand("Select * from musteri_kayit where username=@username and password=@password", con);
            cmd.Parameters.AddWithValue("@username", txtUserNameUser.Text);
            cmd.Parameters.AddWithValue("@password", txtSifreUser.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "admin");
            if (ds.Tables["admin"].Rows.Count == 0)
            {
                Response.Write("Hatalı kullanıcı adı veya şifre girdiniz!");
            }
            else
            {
                Response.Redirect("userprofile.aspx");
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("newUser.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("sifre.aspx");
        }
    }
}