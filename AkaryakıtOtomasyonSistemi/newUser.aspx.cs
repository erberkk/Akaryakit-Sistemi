using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaryakıtOtomasyonSistemi
{
    public partial class newUser : System.Web.UI.Page
    {

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection baglanti;
                SqlCommand komut;

                string baglanStr = ConfigurationManager.ConnectionStrings["SQLomenConnectionString"].ConnectionString;
                baglanti = new SqlConnection(baglanStr);


                try
                {

                    komut = new SqlCommand("INSERT INTO musteri_kayit (username,password,kayit_araba,kayit_plaka,kayit_kullanilacak_akaryakit) VALUES(@username,@password,@kayit_araba,@kayit_plaka,@kayit_kullanilacak_akaryakit)",baglanti);
                    

                    komut.Parameters.AddWithValue("@username", TextBox1.Text);
                    komut.Parameters.AddWithValue("@password", TextBox2.Text);
                    komut.Parameters.AddWithValue("@kayit_araba", TextBox3.Text);
                    komut.Parameters.AddWithValue("@kayit_plaka", TextBox4.Text);
                    komut.Parameters.AddWithValue("@kayit_kullanilacak_akaryakit", TextBox5.Text);

                    baglanti.Open();
                    komut.ExecuteNonQuery();
                    Response.Write("<script>confirm('Yeni Kayıt Başarıyla Oluşturuldu!')</script>");



                }
                catch
                {
                    Response.Write("<script>alert('Hata Geçersiz Değer Girdiniz!')</script>");
                }
                finally
                {

                    baglanti.Close();
                }
            }
        }

    }
}