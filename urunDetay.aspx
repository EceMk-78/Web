<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="urunDetay.aspx.cs" Inherits="urunDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .sepet:hover{
            transform:scale(1.1);
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="min-height:640px;">
        <br />
        <br />
    <div style="float:left; width:20%; height:250px;">
        <asp:Image ID="Image1" runat="server" style="max-width:150px;" />
    </div>
    <div style="float:left; width:60%; height:250px; text-align:left;">
        <b>Kitap Adı:</b>
        <asp:Label ID="lblKİtapAdi" runat="server" Text=""></asp:Label><br />
         <b>Yazar:</b>
 <asp:Label ID="lblYazar" runat="server" Text=""></asp:Label><br />
         <b>Yayınevi:</b>
 <asp:Label ID="lblYayinevi" runat="server" Text=""></asp:Label><br />
       <br /> <br />  <b>Açıklamalar</b>
        <hr />  
        <div style="text-align:justify;">
 <asp:Label ID="lblAciklamalar" runat="server" Text=""></asp:Label><br /></div>
    </div>
    <div style="float:left; width:20%; height:250px;">
        <br />
        <br />
        <strike>
            <asp:Label ID="lblEskiFiyat" runat="server" Text=""></asp:Label></strike><br />
        <span style="background-color:yellow;color:red;font-size:25px;"><br />
            <asp:Label ID="lblYeniFiyat" runat="server" Text=""></asp:Label></span><br /><br />
        <asp:ImageButton ID="ImageButton1" class="sepet" runat="server" ImageUrl="img/sepet.jpg" Style="width: 100px;"
            OnClick="ImageButton1_Click" /><br />
        <asp:Label ID="lblBilgi" ForeColor="Red" runat="server" Text=""></asp:Label>
    </div>

        </div>


</asp:Content>

