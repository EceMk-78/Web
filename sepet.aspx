<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sepet.aspx.cs" Inherits="sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div style="min-height:500px;padding:30px;">
    <div Id="urunler" runat="server"></div>

      
        <br />
        <br />
        <br />
        Toplam Ödenecek Miktar: <asp:Label ID="lblToplamFiyat" runat="server" Text="0₺"></asp:Label><br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sepeti Boşalt</asp:LinkButton>

        </div>
</asp:Content>

