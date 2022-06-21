<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="webSitesi2._default" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Görsel eğitim</title>
    <link href="/style.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-2.0.3.min.js"></script>


    <script type="text/javascript">
        $("document").ready(function () {
            $("header nav ul li.konular-wrap").mouseover(function () {
                $("header nav ul li.konular-wrap .konular").css("display", "block")
            })
            $("header nav ul li.konular-wrap").mouseleave(function () {
                $("header nav ul li.konular-wrap .konular").css("display", "none")
            })
        })
    </script>


</head>
<body>
    <form id="form1" runat="server">

        <div id="wrapper">

            <header>


                <div class="logo">
                    LOGO
                </div>

                <nav>
                    <ul>
                        <li>
                            <a href="default.aspx">Anasayfa</a>
                        </li>
                        <li class="konular-wrap">
                            <a href="#">Konular</a>
                            <div class="konular">
                                <ul>
                                    <li>Programlama</li>
                                    <li>Web tasarım</li>
                                </ul>
                            </div>

                        </li>
                        <li>
                            <a href="default.aspx">Duyurular</a>

                        </li>
                        <li>
                            <a href="default.aspx">İletişim</a>

                        </li>
                    </ul>
                </nav>
                <div class="aramaKismi">
                    <asp:TextBox ID="txtArama" CssClass="txtArama" runat="server" placeholder="arama" />
                    <asp:Button ID="btnarama" CssClass="btnarama" Text="Ara" runat="server" />
                </div>
            </header>

            <div class="banner">
                Programlama ve Web Tasarım
            </div>

            <div class="icerik">
                içerik
            </div>
            <div class="solTaraf">

                <div class="hizli-kayit">
                    <div class="ust">
                        Hızlı Kayıt Ol
                    </div>

                    <div class="alt">
                        <div class="kullanici">
                            <span>Kullanıcı adı</span>
                            <asp:TextBox ID="txtKullaniciAdi" CssClass="txtbox" runat="server" />
                        </div>
                        <div class="sifre">
                            <span>Şifre</span>
                            <asp:TextBox ID="txtsifre" CssClass="txtbox" runat="server" />
                        </div>
                        <asp:Button ID="btnKayit" CssClass="btnKayit" Text="Kaydol" runat="server" OnClick="btnKayit_Click" />

                        <asp:Label ID="lblSonuc" Text="" runat="server" />
                    </div>

                </div>

                <div class="duyurular">
                    <div class="ust">
                        Duyurular
                    </div>

                    <div class="alt">
                        <asp:ListView ID="lstDuyuru" runat="server">
                            <ItemTemplate>
                                <div class="dururu-wrap">
                                    <asp:Label Text='<%#Eval("baslik") %>' runat="server" /><br />
                                    <asp:Label Text='<%#Eval("duyuru") %>' runat="server" /><br />
                                    <asp:Label Text='<%#Eval("tarih") %>' runat="server" /><br />
                                 
                                </div>
                            </ItemTemplate>
                        </asp:ListView>


                    </div>

                </div>
            </div>

            <footer>
                tasarımı yapılmıştır.
            </footer>

        </div>




    </form>
</body>
</html>
