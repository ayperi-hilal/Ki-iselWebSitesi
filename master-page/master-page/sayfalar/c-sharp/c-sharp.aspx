<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="c-sharp.aspx.cs" Inherits="master_page.sayfalar.c_sharp.c_sharp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Günümüz bilişim dünyasında programlama dillerinin etkisi oldukça yüksektir. Bilgisayarlar, akıllı telefonlar ve
    diğer elektronik cihazlarda kullanılan diller sayesinde bahsedilen cihazların kontrolü sağlanmaktadır. 
    Bundan dolayı programlama dilleri teknolojik aygıtlar için önemlidir.

Bu yazımızda bilgisayar programlama dillerinden olan C# nedir nerelerde kullanılır sorusunun cevabını arayacağız.

C# Nedir Ne İşe Yarar?
Yeni nesil programlama dili olan C sharp programlama konusunda yenilikleri de beraberinde getirmektedir. C# sunucu ve
  gömülü sistemleri için tasarlanmıştır. Microsoft tarafından geliştirilen C# .NET ortamında kullanılmak üzere geliştirilmiştir. 
    Dilin tasarlanmasında Anders Hejlberg öncülük etmiştir. Zamanla gelişen bu programlama dili artık gerek masaüstü olsun gerek 
    web uygulamaları olsun çoğu yerde kullanılmaktadır.


C sharp for döngüsü

C#’ın C, C++ ve Java İle Bağlantısı Var mıdır?
Her ne kadar isim benzerliği olsa da C ile pek benzer yanlarının olduğu söylenemez. Aralarındaki en büyük fark nesne 
    yönelimli programlamadır.

C# nesne yönelimli programlamayı desteklerken, C nesne yönelimli programlamayı desteklememektedir. Ortak yanlarından belki 
    de en önemlisi benzer sözdizimine sahip olmalarıdır. Ana yapıları itibariyle C# programlama C ile programlamaya göre 
    daha farklıdır. Bu konuda çok fazla detaya girmeyeceğiz.

C++ dili ile ise nesne yönelim programlama özellikleri aynıdır. Ayrıca sözdizimleri de benzerlik göstermektedir.

C# daha çok Java ve C++ programlama dillerinden esinlenerek oluşturulmuştur. Birebir aynı olmasa da çoğu özellikleri 
    benzerlik taşımaktadır.

C# İle Web Programlama
C# nedir konusunda merak duyan herkes için başlangıç seviyesinde hazırlanan bu yazımızda genel hatlarıyla C# örnekleri 
    sizlerle buluşturulacaktır. Böylece bu konuya bir giriş niteliğinde olan yazımızla C# dünyasına giriş yapmış olacaksınız.

C# ile yazılan programların çalışması için ‘.NET Kütüphaneleri’nin bulunduğu bilgisayarlarda bu sistemle uyumlu kütüphane 
    ve derleyicinin olması yeterlidir. Bu kütüphane ve derleyici ‘.NET Framework’ da olabilir ECMA standartlarına sahip 
    olan farklı bir kütüphane ya da derleyici de olabilir.

C# makine diline yakın olmasından ötürü orta seviyeli dil olarak kabul edilirken, insan algısına yakınlığı popüler olmasını 
    sağlamıştır. Burada orta seviyeli dil hakkında bir cümlelik de olsa açıklama yapmak yerinde olacaktır. Çünkü bu kavram 
    yanlış anlaşılmalara neden olabilmektedir.

Orta seviyeli dil o dilin güç seviyesini değil, makine diline olan seviyesini göstermektedir. Yani kodlama yapısı makine 
    diline ne kadar yakınsa seviye ona nispeten düşmektedir. Aynı şekilde yüksek seviyeli bir dil demek, o dilin insan 
    konuşma diline yakınlığıyla alakalıdır.

C# Nedir ve Özellikleri
Masaüstü uygulamalarının dışında C# web programlama konusunda da oldukça güçlü projeler geliştirilebilir. Aşağıda C# 
    dilinin genel özellikleri gösterilmiştir.

Basit ve genel amaçlı

Kullanımı kolay modern bil dil

%100 Nesneye yönelik programlama dili

Güçlü tip kontrolü

Platform bağımsızlığı

Dizin sınır kontrolü

Artık veri toplama

Ve bunlar gibi daha birçok özelliği kapsamaktadır.

C# konusunda belki de uygulama geliştiricilerin bilmesi gereken önemli noktalardan biri ‘using’ komutuyla eklenecek referansların bilinmesi konusudur. Çünkü program içerisinde bazı fonksiyonların kullanılabilmesi için ilgili kütüphane dosyalarının eklenmesi gerekmektedir. İlerleyen aşamalarda bu konuda bir önek verileceğiz fakat genel ‘using’ kullanımı aşağıda gösterilmiştir.

using System;

Örnekte de görüldüğü gibi ‘using’ yazdıktan sonra eklemek istediğimiz referans yazılarak uygulama yazmaya devam edilir.

C# Dersleri
C# nedir sorusuna vereceğimiz en iyi cevaplardan biri sanırım bir örnek uygulama olacaktır. Örnek uygulamalarımızı yaparken bilgisayarlarda Microsoft Visual Studio programının yüklü olduğunu varsayıyoruz. Programı açıp File -> New -> Project diyerek yeni bir konsol projesi açıyoruz.


C Sharp proje açılımı 

Aşağıdaki komutları kod alanına yazıyoruz.

using System;

namespace ilk_konsol_projemiz

class ilk_konsol_projemiz

{

static void Main ( string[] , args)

{

Console .WriteLine( “ilk konsol projemiz!” );

Console .ReadKey();

}

}

}

F5 tuşu ile uygulamayı çalıştırıyoruz. Aşağıda konsoldaki ekran çıktısı görünmektedir.


c shap konsol çıktı 1

Dikkat edilirse komutumuz ‘using’ parametresi ile başlıyor ve uygulama kod alanına ‘System’ kütüphanesini ekliyoruz. Çünkü Console fonksiyonlarını ‘using’ ile eklediğimiz ‘System’ kütüphanesi sayesinde kullanabiliyoruz.

Projeyi oluştururken projeye verdiğimiz isin otomatik olarak namespace’e verilmiştir. ‘Namespace’ başlı başına farklı bir konu olduğu için bu yazımızda bahsedilmeyecektir. Şimdilik proje adı oluşturulunca namespace ile aynı ada sahip olacağını bilmek yeterli olacaktır.

Burada bizim için önemli olan kısım, yani komutların bize daha yakın olan bölümü ‘Main’ içerisinde yer alan kodlardır. Her ne kadar main dışında da kod kullanımı olsa da biz örnek uygulamalarımızda komutlarımızı main içerisine yazacağız. “Console.WriteLine” komutu ile parantez içlerine yazdığımız değer ekranda yazdırılır ardından imleç bir alt satıra geçer. İçerisine çok farklı değerler alabilen bu komutta parantez içine “ ” simgeleri ile yazılan değerler birebir ekranda yazdırılmaktadır. İlk örneğimiz bu şekildedir. İsterseniz farklı bir örnekle diğer kullanım türüne göz atalım.

using System;

namespace ilk_konsol_projemiz

class ilk_konsol_projemiz

{

static void Main ( string[] args)

{

İnt sayi1 = 2, int sayi2 = 5, int sonuc = 0;

sonuc = sayi1 + sayi2;

Console .WriteLine( “Sonuc: ” + sonuc);

Console .ReadKey();

}

}

}

Yine F5 tuşu ile uygulamayı çalıştırıyoruz. Komutlarımızı yine main içerisine yazdığımıza dikkat çekmek istiyorum. İkinci uygulamamızın birincisinden farkı öncelikle değişken kullanmamızdır. Aşağıda çalışan uygulamanın ekran çıktısı sunulmuştur.


c shap konsol çıktı 2

Bu örnekte ‘sayi1, sayi2, sonuc’ değişkenleri oluşturuldu ve her birine ilk değer ataması yapıldı. İkinci aşamada sayi1 ile sayi2 toplanıp sonuc değişkenine atıldı. Bundan sonrası, ilk örnekte öğrendiğimiz Console.WriteLine komutu kullanımıdır. Fakat burada durum biraz farklı, “ “ işaretlerinden sonra bir artı (+) işareti koyduk ve sonuc değişkeninin adını yazdık.

C# ’ta kullanılan değişkenleri ekrana yazdırırken değişken adını direk olarak yazabiliyoruz. Bu aşamada bilinmesi gereken önemli bir noktada istersek sayıların değerlerini kullanıcılardan alıp sonucu değişken yapabiliriz. Şimdilik bu örnek giriş seviyesi için yeterli olacaktır. Bu örneğin ekran çıktısı aşağıdaki gibidir.

Visual C# Nedir?
İlk konsol uygulamamızdan sonra bir tane de görsel uygulama yaparak yazımızı sonlandıralım. File -> New -> Project diyerek yeni bir Windows Forms Application oluşturuyoruz. Karşımıza çıkan Form1 içerisine sol tarafta yer alan Toolbox kısmında bir tane Button’u sürükle bırak yapıyoruz. (Eğer Toolbox sol tarafta yoksa üst menüden View -> Toolbox diyerek açabiliriz.) Form ekranına gelen butona tıklayarak sağ tarafta yer alan Properties’te yer alan Text kısmını ‘ Değer Göster’ olarak değiştiriyoruz.


c shap button ekleme

Bu aşamaya kadar herhangi bir sorun yoksa butona çift tıklıyoruz ve kod ekranına geçiş yapıyoruz. Görüldüğü üzere bu kısım biraz daha farklı parametreleri barındırıyor. Bu ekranda bizim için önemli olan button1_Click kısmıdır.


c sharp forum kodu

Çok fazla detaya girmeden hemen kodlarımızı yazmaya başlayalım. Bu uygulamamızda komutlarımızı button1_Click içerisine yazıyoruz. İlk başta konsoldan farklı olduğunu görüyoruz. Aşağıdaki komutları yazıp yine F5 tuşu ile uygulamayı çalıştırabilirsiniz.

MessageBox .Show( “İlk form uygulamamız…” );

Burada ekrana yazdırma komutumuz değişti. MessageBox.Show komutu sayesinde ekrana istediğimiz yazıyı yazdırabilmemiz mümkündür.


c shap uyarı

Yukarıda hem konsol hem de form uygulamaları ile C# için başlangıç seviyesinde bir giriş yapmış olduk. Bu uygulamaları kendiniz de uygulayarak daha farklı olasılıkları uygulamalarınızda kullanabilirsiniz.

C# Nedir Son Sözler
C# nedir konulu yazımızla, sizlerde C# konusunda farkındalık oluşması amaçlanmıştır. Burada sunulan örnek uygulamalar giriş seviyesinde olup daha ileri seviye uygulamalar için daha fazla araştırma yapıp bilgi sahibi olmak gerekmektedir.

Yazılım dünyasında birçok programlama dili bulunmaktadır. Her dilin kendine özgü özellikleri bulunmaktadır. C# deyince aklımıza asp-net nedir, sql nedir soruları da gelmektedir. Son zamanlarda mobil programlama nedir konusu da sık araştırılan konular arasındadır.

Uygulama geliştiriciler açısından C sharp programlama dilinin yeri farklıdır. Microsoft Visual Studio programıyla birlikte uygulama yazmak daha eğlenceli hale gelmektedir. Siz de C# bilginizi ilerilere taşıyarak yazılım konusunda aranan ve bilgisine başvurulan kimseler arasındaki yerinizi alabilirsiniz.
</asp:Content>
