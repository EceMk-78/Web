<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

    <style>
        .urunBilgi:hover {
            background-color: aliceblue;
            transform: scale(1.05);
        }
    </style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--Geçişli resimler başlangış -->

    <div style="max-width: 1000px;">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="img/kay1.png" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="img/kay2.png" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="img/kay3.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!--Geçişli resimler bittiş -->

        <!--Ürünlü resimler başlangış -->

        <div style="color: red; font-size: 25px; font-weight: bold; border-bottom: 2px solid grey;
            margin-top: 30px;">
            Yeni Yıl Kampanyaları
           
        </div>
        <div>

            <div id="carouselExampleIndicators1" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators1" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators1" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators1" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">

                        <div>
                            <a href="urunDetay.aspx?id=1" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim1.jpg" style="width: 100px;" /><br />
                                    Üçleme<br />
                                    <strike>150₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 75₺</span>

                                </div>

                            </a>
                            <a href="urunDetay.aspx?id=2" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim2.jpg" style="width: 100px;" /><br />
                                    Sabahtan Akşama<br />
                                    <strike>200₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 100₺</span>

                                </div>

                            </a>
                            <a href="urunDetay.aspx?id=3" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim3.jpg" style="width: 100px;" /><br />
                                    Toz<br />
                                    <strike>300₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 150₺</span>

                                </div>

                            </a>
                            <a href="urunDetay.aspx?id=4" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim4.jpg" style="width: 100px;" /><br />
                                    İktidar ve Teknoloji<br />
                                    <strike>60₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 30₺</span>

                                </div>



                            </a>


                        </div>

                    </div>
                    <div class="carousel-item">
                        <div>
                            <a href="urunDetay.aspx?id=1" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim1.jpg" style="width: 100px;" /><br />
                                    Üçleme<br />
                                    <strike>150₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 75₺</span>

                                </div>

                            </a>
                            <a href="urunDetay.aspx?id=2" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim2.jpg" style="width: 100px;" /><br />
                                    Sabahtan Akşama<br />
                                    <strike>200₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 100₺</span>

                                </div>

                            </a>
                            <a href="urunDetay.aspx?id=3" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim3.jpg" style="width: 100px;" /><br />
                                    Toz<br />
                                    <strike>300₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 150₺</span>

                                </div>

                            </a>
                            <a href="urunDetay.aspx?id=4" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim4.jpg" style="width: 100px;" /><br />
                                    İktidar ve Teknoloji<br />
                                    <strike>60₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 30₺</span>

                                </div>



                            </a>


                        </div>

                    </div>
                    <div class="carousel-item">
                        <div>
                            <a href="urunDetay.aspx?id=1" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim1.jpg" style="width: 100px;" /><br />
                                    Üçleme<br />
                                    <strike>150₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 75₺</span>

                                </div>

                            </a>
                            <a href="urunDetay.aspx?id=2" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim2.jpg" style="width: 100px;" /><br />
                                    Sabahtan Akşama<br />
                                    <strike>200₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 100₺</span>

                                </div>

                            </a>
                            <a href="urunDetay.aspx?id=3" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim3.jpg" style="width: 100px;" /><br />
                                    Toz<br />
                                    <strike>300₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 150₺</span>

                                </div>

                            </a>
                            <a href="urunDetay.aspx?id=4" style="text-decoration: none; color: black;">
                                <div class="urunBilgi" style="width: 230px; margin: 10px; height: 250px; float: left;">
                                    <img src="img/resim4.jpg" style="width: 100px;" /><br />
                                    İktidar ve Teknoloji<br />
                                    <strike>60₺</strike><br />
                                    <span style="background-color: yellow; color: red; font-size: 25px;">%50 indirim - 30₺</span>

                                </div>



                            </a>


                        </div>

                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators1" role="button"
                    data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators1" role="button"
                    data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>


        </div>
        <!--Ürünlü resimler bittiş -->
    </div>

</asp:Content>

