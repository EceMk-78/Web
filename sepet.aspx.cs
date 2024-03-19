using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sepet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["sepet"] == null)
        {
            Response.Redirect("default.aspx");

        }
        else if (Session["sepet"] == "boş")
        {

            urunler.InnerHtml += "sepetiniz boş";

        }
        else
        {



            string[] sepettekiUrunler = Session["sepet"].ToString().Trim('^').Split('^');

            string[] kitapFiyatlari = { "75₺", "100₺", "150₺", "30₺" };
            string[] kitaplar = { "Üçleme", "Sabahtan Akşama", "Toz", "İktidar ve Teknoloji" };
            string[] kitapAciklamalari = {
            "2023 Nobel Edebiyat Ödülü Alida Asle’yle halâ iki sevgili olduklarını düşünüyor, ikisi birlikteler, Alida Asle’yle, Asle Alida’yla beraber, Alida Asle’nin içinde, Asle Alida’nın içinde, Alida uzaklara, denize ve gökyüzüne doğru bakıyor, Asle gökyüzünde, orada Asle, Alida rüzgarı hissediyor, rüzgar Asle, Asle orada rüzgarın ta kendisi, varlığı buralarda değilse bile o artık esen rüzgar, sonra Asle’ nin buradayım diyen sesini işitiyor, orada olduğunu görüyor, denize bakıyor orada, gökyüzüne bakıyor orada, denizde açıklara bakıyor Alida.",
            "2023 Nobel Edebiyat Ödülü Alida Asle’yle halâ iki sevgili olduklarını düşünüyor, ikisi birlikteler, Alida Asle’yle, Asle Alida’yla beraber, Alida Asle’nin içinde, Asle Alida’nın içinde, Alida uzaklara, denize ve gökyüzüne doğru bakıyor, Asle gökyüzünde, orada Asle, Alida rüzgarı hissediyor, rüzgar Asle, Asle orada rüzgarın ta kendisi, varlığı buralarda değilse bile o artık esen rüzgar, sonra Asle’ nin buradayım diyen sesini işitiyor, orada olduğunu görüyor, denize bakıyor orada, gökyüzüne bakıyor orada, denizde açıklara bakıyor Alida.",
            "2023 Nobel Edebiyat Ödülü Alida Asle’yle halâ iki sevgili olduklarını düşünüyor, ikisi birlikteler, Alida Asle’yle, Asle Alida’yla beraber, Alida Asle’nin içinde, Asle Alida’nın içinde, Alida uzaklara, denize ve gökyüzüne doğru bakıyor, Asle gökyüzünde, orada Asle, Alida rüzgarı hissediyor, rüzgar Asle, Asle orada rüzgarın ta kendisi, varlığı buralarda değilse bile o artık esen rüzgar, sonra Asle’ nin buradayım diyen sesini işitiyor, orada olduğunu görüyor, denize bakıyor orada, gökyüzüne bakıyor orada, denizde açıklara bakıyor Alida.",
            "2023 Nobel Edebiyat Ödülü Alida Asle’yle halâ iki sevgili olduklarını düşünüyor, ikisi birlikteler, Alida Asle’yle, Asle Alida’yla beraber, Alida Asle’nin içinde, Asle Alida’nın içinde, Alida uzaklara, denize ve gökyüzüne doğru bakıyor, Asle gökyüzünde, orada Asle, Alida rüzgarı hissediyor, rüzgar Asle, Asle orada rüzgarın ta kendisi, varlığı buralarda değilse bile o artık esen rüzgar, sonra Asle’ nin buradayım diyen sesini işitiyor, orada olduğunu görüyor, denize bakıyor orada, gökyüzüne bakıyor orada, denizde açıklara bakıyor Alida.",
        };


            int toplamFiyat = 0;
            for (int i = 0; i < sepettekiUrunler.Length; i++)
            {

                urunler.InnerHtml += "<div style='width:100%; text-align:left; clear:both; border:1px solid grey;'><div style='float:left; width:10%;'><img src='img/resim" + sepettekiUrunler[i] + ".jpg'  style='width:50px;'></div>" +
                    "<div style='float:left; width:80%;'>" + kitaplar[Convert.ToInt32(sepettekiUrunler[i]) - 1] + "<br>açıklamalr<br> " + kitapAciklamalari[Convert.ToInt32(sepettekiUrunler[i]) - 1] + "</div>" +
                    "<div style='float:left; width:10%;'>" + kitapFiyatlari[Convert.ToInt32(sepettekiUrunler[i]) - 1] + "</div></div>";    //GÖZÜKSÜN DİYE ALT SATIRA GEÇTİM DİVLERİN YANINDA Kİ ARTILAR BU YÜZDEN VAR


            }


            lblToplamFiyat.Text += toplamFiyat.ToString() + "₺";
        }
            

        

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["sepet"] = "boş";
        Response.Redirect("sepet.aspx");
    }
}