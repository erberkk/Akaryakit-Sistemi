using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace AkaryakıtOtomasyonSistemi
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            // SqlConnection sınıfını kullanarak veritabanına bağlanıyoruz
            string connectionString = "Server=DESKTOP-E7ODSSN\\SQLOMEN;Database=SQLomen;Trusted_Connection=True";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            // Kullanıcının seçtiği akaryakıt türünü alıyoruz
            string akaryakitCesidi = fuel.SelectedValue;

            // Kullanıcının girdiği litre fiyatını alıyoruz
            decimal litre = decimal.Parse(TextBox2.Text);

            // SQL sorgusunu hazırlıyoruz
            string sql = "SELECT akaryakit_fiyat FROM akaryakit WHERE akaryakit_isim = '" + akaryakitCesidi + "'";
            SqlCommand command = new SqlCommand(sql, connection);

            // SqlCommand sınıfını kullanarak sorguyu çalıştırıyoruz
            object result = command.ExecuteScalar();

            // SQL sorgusundan alınan akaryakit fiyatını akaryakit_fiyat değişkenine atıyoruz
            decimal akaryakit_fiyat = Convert.ToDecimal(result);

            // Toplam fiyatı bir Label kontrolünde gösteriyoruz
            Label1.Text = akaryakitCesidi + ": " + (akaryakit_fiyat * litre).ToString() + " TL";

            connection.Close();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            string connectionString = "Server=DESKTOP-E7ODSSN\\SQLOMEN;Database=SQLomen;Trusted_Connection=True";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            string akaryakitCesidi = fuel.SelectedValue;

            decimal litre = decimal.Parse(TextBox2.Text);

            decimal? litre_miktari = null;
            if (!string.IsNullOrEmpty(TextBox3.Text))
            {
                litre_miktari = decimal.Parse(TextBox3.Text);
            }

            string sql = "SELECT akaryakit_fiyat, litre_miktari FROM akaryakit WHERE akaryakit_isim = @akaryakitisim";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@akaryakitisim", akaryakitCesidi);

            SqlDataReader reader = null;
            decimal akaryakit_fiyat = 0;
            int mevcutLitre = 0;
            try
            {
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    if (!reader.IsDBNull(0))
                    {
                        akaryakit_fiyat = reader.GetDecimal(0);
                    }
                    if (!reader.IsDBNull(1))
                    {
                        mevcutLitre = reader.GetInt32(1);
                    }
                }
            }
            finally
            {
                reader?.Close();
            }

            int satinAlinanLitre = 0;
            if (litre_miktari != null)
            {
                satinAlinanLitre = Convert.ToInt32(litre_miktari);
            }

            int kalanLitre = mevcutLitre - satinAlinanLitre;

            if (kalanLitre < 0)
            {
                kalanLitre = 0;
            }

            string updateSql = "UPDATE akaryakit SET litre_miktari = @litreMiktari WHERE akaryakit_isim = @akaryakitisim";
            SqlCommand updateCommand = new SqlCommand(updateSql, connection);
            updateCommand.Parameters.AddWithValue("@litreMiktari", kalanLitre);
            updateCommand.Parameters.AddWithValue("@akaryakitisim", akaryakitCesidi);
            updateCommand.ExecuteNonQuery();

            Label2.Text = akaryakitCesidi + " " + satinAlinanLitre.ToString() + " litre: " + (akaryakit_fiyat * satinAlinanLitre).ToString() + " TL" + " Akaryakıt alımınız başarıyla gerçekleştirilmiştir.";

            decimal satisTutari = akaryakit_fiyat * satinAlinanLitre;

            Label2.Text = akaryakitCesidi + " " + satinAlinanLitre.ToString() + " litre: " + satisTutari.ToString() + " TL" + " Akaryakıt alımınız başarıyla gerçekleştirilmiştir.";

            // Önceki toplam tutarı alın
            decimal toplamTutar = 0;
            if (ViewState["ToplamTutar"] != null)
            {
                toplamTutar = (decimal)ViewState["ToplamTutar"];
            }

            // Yeni satisTutari'ni toplam tutara ekleyin
            toplamTutar += satisTutari;

            // Güncel toplam tutarı ViewState'e kaydedin
            ViewState["ToplamTutar"] = toplamTutar;

            // Toplam tutarı göstermek için Label3'ü güncelleyin
            TotalEarningsLabel.Text = "Toplam Kazanç: " + toplamTutar.ToString() + " TL";

            connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "completedMessage", "alert('Satın alma başarıyla tamamlandı!');", true);


         
        }
    }
}