<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="programlama.aspx.cs" Inherits="master_page.programlama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-4">
            <div class="bolum">
                <div class="center">
                    <img src="/sss/images/c-sharp.jpg" height="85" width="100" />
                </div>
                <div class="card-body">
                    <h5>C# Programlama Dili</h5>
                    <p>
                        C# (C-Sharp), Microsoft tarafından geliştirilen ve .NET Framework üzerinde çalışan bir programlama dilidir.
                        <br />
                        <br />
                        C#, web uygulamaları, masaüstü uygulamaları, mobil uygulamalar, oyunlar ve çok daha fazlasını geliştirmek için kullanılır.
                    </p>
                    <asp:Button ID="btnc" Text="Detaylar >>>" runat="server" OnClick="btncsharp_Click" />
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="bolum">
                <div class="center">
                    <img src="/sss/images/react.png" height="85" width="100" />
                </div>
                <div class="card-body">
                    <h5>React Native</h5>
                    <p>
                        React Native, aynı kod tabanını kullanarak iOS, Android ve web uygulamaları gibi birden çok platformda uygulamalar oluşturmak için tasarlanmış açık kaynaklı bir JavaScript çerçevesidir . React'e dayanıyor ve tüm ihtişamını mobil uygulama geliştirmeye getiriyor.
                    </p>
                    <asp:Button ID="btnReact" Text="Detaylar >>>" runat="server" OnClick="btnReact_Click" />
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="bolum">
                <div class="center">
                    <img src="/sss/images/python.jpg" height="85" width="100" />
                </div>
                <div class="card-body">
                    <h5>Python</h5>
                    <p>
                        Python, nesne yönelimli, yorumlamalı, birimsel ve etkileşimli yüksek seviyeli bir programlama dilidir.
                    </p>
                    <asp:Button ID="btnPython" Text="Detaylar >>>" runat="server" OnClick="btnPython_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
