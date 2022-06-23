<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="iletişim.aspx.cs" Inherits="master_page.iletişim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #Submit1 {
            width: 140px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="iletisim">

        <div class="ustTaraf">
            <h1>BİZE ULAŞIN</h1>

            <br />
            <div>
                <a href ="mailto:ayyizdizsoftware@gmail.com">ayyizdizsoftware@gmail.com</a> adresime e-posta gönderebilirsiniz veya aşağıdaki iletişim formu ile mesajınızı bırakabilirsiniz.
            </div>
            <br />

            <div class="iletisimiAlt">
                <div>
                    <asp:Label Text="Adınız(gerekli)" runat="server" />
                    <br />
                    <asp:TextBox ID="txtAdi" CssClass="txtAdi" runat="server" />
                </div>
                <div>
                    <asp:Label Text="Email(gerekli)" runat="server" />
                    <br />
                    <asp:TextBox ID="txtEmail" CssClass="txtAdi" runat="server" TextMode="Email" />
                </div>
                <div>
                    <asp:Label Text="Konu(gerekli)" runat="server" />
                    <br />
                    <asp:TextBox ID="txtKonu" CssClass="txtAdi" runat="server" />
                </div>
                <div>
                    <asp:Label Text="İletiniz(gerekli)" runat="server" />
                    <br />

                    <asp:TextBox ID="comments" CssClass="txtIletiniz" runat="server" Wrap="true" TextMode="MultiLine" />
                </div>
                <div class="gonder">
                    <br />
                    <asp:Button ıd="sendButoon" CssClass="sendButoon" Text="Gönder" runat="server"  ToolTip="Submit" OnClick="Unnamed_Click"/>
                    <asp:Label ID="durum" Text="" runat="server" />
                    <input id="Submit1" type="submit" value="submit"/><br />
                  
                </div>
            </div>


        </div>

    </div>

</asp:Content>
