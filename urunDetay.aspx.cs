using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class urunDetay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] kitaplar = { "Üçleme", "Sabahtan Akşama", "Toz", "İktidar ve Teknoloji" };
        string[] kitapAciklamalari = {
            "2023 Nobel Edebiyat Ödülü Alida Asle’yle halâ iki sevgili olduklarını düşünüyor, ikisi birlikteler, Alida Asle’yle, Asle Alida’yla beraber, Alida Asle’nin içinde, Asle Alida’nın içinde, Alida uzaklara, denize ve gökyüzüne doğru bakıyor, Asle gökyüzünde, orada Asle, Alida rüzgarı hissediyor, rüzgar Asle, Asle orada rüzgarın ta kendisi, varlığı buralarda değilse bile o artık esen rüzgar, sonra Asle’ nin buradayım diyen sesini işitiyor, orada olduğunu görüyor, denize bakıyor orada, gökyüzüne bakıyor orada, denizde açıklara bakıyor Alida.",
            "2023 Nobel Edebiyat Ödülü Alida Asle’yle halâ iki sevgili olduklarını düşünüyor, ikisi birlikteler, Alida Asle’yle, Asle Alida’yla beraber, Alida Asle’nin içinde, Asle Alida’nın içinde, Alida uzaklara, denize ve gökyüzüne doğru bakıyor, Asle gökyüzünde, orada Asle, Alida rüzgarı hissediyor, rüzgar Asle, Asle orada rüzgarın ta kendisi, varlığı buralarda değilse bile o artık esen rüzgar, sonra Asle’ nin buradayım diyen sesini işitiyor, orada olduğunu görüyor, denize bakıyor orada, gökyüzüne bakıyor orada, denizde açıklara bakıyor Alida.",
            "2023 Nobel Edebiyat Ödülü Alida Asle’yle halâ iki sevgili olduklarını düşünüyor, ikisi birlikteler, Alida Asle’yle, Asle Alida’yla beraber, Alida Asle’nin içinde, Asle Alida’nın içinde, Alida uzaklara, denize ve gökyüzüne doğru bakıyor, Asle gökyüzünde, orada Asle, Alida rüzgarı hissediyor, rüzgar Asle, Asle orada rüzgarın ta kendisi, varlığı buralarda değilse bile o artık esen rüzgar, sonra Asle’ nin buradayım diyen sesini işitiyor, orada olduğunu görüyor, denize bakıyor orada, gökyüzüne bakıyor orada, denizde açıklara bakıyor Alida.",
            "2023 Nobel Edebiyat Ödülü Alida Asle’yle halâ iki sevgili olduklarını düşünüyor, ikisi birlikteler, Alida Asle’yle, Asle Alida’yla beraber, Alida Asle’nin içinde, Asle Alida’nın içinde, Alida uzaklara, denize ve gökyüzüne doğru bakıyor, Asle gökyüzünde, orada Asle, Alida rüzgarı hissediyor, rüzgar Asle, Asle orada rüzgarın ta kendisi, varlığı buralarda değilse bile o artık esen rüzgar, sonra Asle’ nin buradayım diyen sesini işitiyor, orada olduğunu görüyor, denize bakıyor orada, gökyüzüne bakıyor orada, denizde açıklara bakıyor Alida.",
        };



        if (Request.QueryString.Count < 1)
        {
            Response.Redirect("default.aspx");
        }
        else if (Request.QueryString["id"] == "" || Request.QueryString["id"] == null)
        {
            Response.Redirect("default.aspx");
        }


        string urunId = Request.QueryString["id"].ToString();

        if (urunId =="1")
        {
            Image1.ImageUrl = "img/resim"+urunId+".jpg";
            lblKİtapAdi.Text = kitaplar[Convert.ToInt32(urunId)-1];
            lblAciklamalar.Text = kitapAciklamalari[Convert.ToInt32(urunId)-1];
            lblEskiFiyat.Text = "150₺";
            lblYayinevi.Text = "MONOKL YAYINLARI";
            lblYazar.Text = "Jon Fosse";
            lblYeniFiyat.Text = "75₺";


        }
        else if(urunId =="2")
        {
            Image1.ImageUrl = "img/resim" + urunId + ".jpg";
            lblKİtapAdi.Text = kitaplar[Convert.ToInt32(urunId)-1];
            lblAciklamalar.Text = kitapAciklamalari[Convert.ToInt32(urunId)-1];
            lblEskiFiyat.Text = "200₺";
            lblYayinevi.Text = "MONOKL YAYINLARI";
            lblYazar.Text = "Jon Fosse";
            lblYeniFiyat.Text = "100₺";

        }
        else if (urunId == "3")
        {
            Image1.ImageUrl = "img/resim" + urunId + ".jpg";
            lblKİtapAdi.Text = kitaplar[Convert.ToInt32(urunId)-1];
            lblAciklamalar.Text = kitapAciklamalari[Convert.ToInt32(urunId)-1];
            lblEskiFiyat.Text = "300₺";
            lblYayinevi.Text = "MONOKL YAYINLARI";
            lblYazar.Text = "Jon Fosse";
            lblYeniFiyat.Text = "150₺";

        }
        else if (urunId == "4")
        {
            Image1.ImageUrl = "img/resim" + urunId + ".jpg";
            lblKİtapAdi.Text = kitaplar[Convert.ToInt32(urunId)-1];
            lblAciklamalar.Text = kitapAciklamalari[Convert.ToInt32(urunId)-1];
            lblEskiFiyat.Text = "150₺";
            lblYayinevi.Text = "MONOKL YAYINLARI";
            lblYazar.Text = "Jon Fosse";
            lblYeniFiyat.Text = "75₺";



        }
        else
        {
            Response.Redirect("default.aspx");
        }



    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["sepet"]=="boş")
        {
         Session["sepet"] = Request.QueryString["id"] + "^";
        lblBilgi.Text = "Bu Ürün Sepetinize Eklendi<br/><a href='sepet.aspx'>Sepetinize Gitmek İçin Tıklayınız</a>";
        }
        else
        {
            Session["sepet"] += Request.QueryString["id"] + "^";
            lblBilgi.Text = "Bu Ürün Sepetinize Eklendi<br/><a href='sepet.aspx'>Sepetinize Gitmek İçin Tıklayınız</a>";
        }

       


    }
}