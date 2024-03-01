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
    public partial class sifre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtUserNameUser.Text;
            string yeniSifre = txtSifreUser.Text;

            SqlConnection con = new SqlConnection("Server=DESKTOP-E7ODSSN\\SQLOMEN;Database=SQLomen;Trusted_Connection=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM musteri_kayit WHERE username=@username", con);
            cmd.Parameters.AddWithValue("@username", kullaniciAdi);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "admin");

            if (ds.Tables["admin"].Rows.Count == 0)
            {
                Response.Write("Hatalı kullanıcı adı!");
            }
            else
            {
                con.Open();
                SqlCommand updateCmd = new SqlCommand("UPDATE musteri_kayit SET password = @password WHERE username = @username", con);
                updateCmd.Parameters.AddWithValue("@password", yeniSifre);
                updateCmd.Parameters.AddWithValue("@username", kullaniciAdi);
                updateCmd.ExecuteNonQuery();
                con.Close();

                Response.Write("Şifre başarıyla güncellendi!");
            }
        }
    }
}