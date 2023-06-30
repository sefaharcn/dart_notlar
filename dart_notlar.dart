Statesless widget geriye text button döndürüyor
class YeniButton extends StatelessWidget {
  final String buttonText;
  final Increment buttonFunction;

  const YeniButton({
    Key? key,
    required this.buttonText,
    required this.buttonFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(buttonText),
      onPressed: () {
        buttonFunction(3);
      },
    );
  }
}
Statesless widget geriye text button döndürüyor 
YeniButton(
              buttonText: "Yeni Button",
              buttonFunction: (int volume) {
                _counter += volume;
                setState(() {});
                _incrementCounter; // bu şekilde yazıldığında işlem tetiklenmez
              },
            ),






* Inheritance: “kalıtım demek” classleri birbirine bağlama 

Extends : Eklenen Classın tüm özellikleri alır.

abstract Class: içi boş değerler üretir ancak extend edildiğinde oradaki methodlar oluşturulmak zorundadir.
@override edilmesi gerekir.
abstract Class madde{ 
Kutle(); // boş method, Abstract method
Hacim();
Bool renklimi(g_deger){return g_deger;}
// bu method override edilmesine gerek yok içi dolu.
  
}
Class Esya entends madde {
String marka;
@override
 Kutle(){}
 //TODO implement kutle
@override
 Hacim(){}
//TODO implement hacim
}

Class Kapi extends Esya{
String Renk;
String uretimYılı;}
*extends ettiğiniz methodların soyut olmayan methodları override etmek zorunda değilsiniz
*fakat implement ettiğiniz zaman bütün methodları @override etmek zorundasınız.





Static Kavramı
:super(degisken) // üst sınıfa değişken göndermek için kullanılır.Yapıcı methot çağırır. üst klasın ilgili metodunu kullandığınızı belirtmiş oluyorsunuz
Static num esyaSayisi=0; // bu degisken bir kere üretilir.farklı classlarda olurturulsada ikinci bir degisken oluşturulmaz yani hangi classtan çağırırsanız çağırız aynı değişken değeri üzerinde oynama yapar.global değişken gibi.
<Generic> Kavramı
Tip koruması sağlar yani bu liste string değerdan başka değer alamaz.
List<String> isimListesi=[“ahmet”,”cafer”];
isimListesi[0];
Map<String, String> ahmet={
“isim”:”ahmet””,
”soyisim”:”yıldız”};
“babaadı”:”mehmet”};
List oluştururken bir classıda liste halinde tanımlayabiliriz.
List<Pencere> evinPencereleri = [mutfakPenceresi, kapıPenceresi];
evinPercereleri[0].malzeme;
// mutfak penceresi classın malzeme değişkenine ulaşır.
Fonsiyon

Void main{
beniCagır(55);
}
beniCagır(int x){
print(‘gelen sayi $x’);
}



const final kavramı
const sabit=’bu değişken daha sonra değiştirilece’;
final sonhaldekiDegisken=’bu değişkenide daha sonradan değiştiremeyiz’;
Değişken çeşitleri
kaçış operatörü
int= 10;
double= 3.15;
var= “ali”; var= 65.12;
String=”bu bir ‘metin’ değişkenidir”;
String=”Ahmet \’ Ben artık eve gelmeyeceğim\’ dedi”; //ters slashlar burada kaçış operatörüz $ işareti basmak içinde kullanılabailir.
String=””” bu çok satırlı string oluşturmadır alt satıra geçilebilir 3 tırnak kullanılır”””;
Print(‘$a $b $c’); bu şekilded değişkenleri toplayabilirsiniz stringleri;
Bool kapiAcikmi = false // boolen doğru yanlış kavramı.2 seçenek alır.
Liste oluşturma []
List sinifListesi= [‘ali’,’veli’,33];
List<int> numaralar=[33,23,66];
//Generic yapınca değişkenler generic tipinde olmaz zorundadır.
List<String> isimler=[‘ali’,’veli’];
Map oluşturma{}
var kimlik={2:’ahmet’,3:’mehmet’};
print(kimlik[2]); // ekrana ahmet basar





Operatörler
+ topla
- çıkar
* çarpma
/ bölme 
~/ //tam sayı bölme “alt+ü” tuşu
% //mod alma kalanı hesaplar 5%2=1
X=3;
Y=++x; // burada X e bir ekler y ye atar
İlişkilsel Operatörler
İf (x==y) // x ye y eşit ise
İf(x!=y) // x ye ye eşit değil ise
İf(x>y) // x y den büyük mü
İf(x>=y) // x yden büyük veya eşitmi
Atama Operatörleri
X=3
X+=3 // x=x+3 demek
Locikal Operatörler
İf (x||y) // x veya y demek “alt-“ tuşuna bas
İf (x && y) // x ve y demek
() fonksiyon oluşturma
[] liste oluşturma
. sınıfların elemanlarına ulaşma
? koşul operatörü
?? null mu kontrol et
x??=3; // eğer x e önceden bi değer atanmadı ise 3 olarak ata
if koşul
if(x==9){} // x dokuza eşit ile işlem yap
if(x!=9){} // x dokuza eşit değil ise işlem yap
kısa if yazımı
x==0 ? print(“sayı sıfır”):print(“sayı 0 değil”) // x>y?komut1:komut2
for döngüsü
for(int i=0;i<=9;i++){
} // i sıfırdan başlat 9 kere dön süs parantez içindeki kodları 9 kere döndürür
While döngüsü
While(x<10){
}//x 9 dan küçük olduğu müddetçe dön
Do While döngüsü
Do{
}While(x<10) //x 9 dan küçük olduğu müddetçe dön
Break; // bu kod döngüden çıkar
Continue;// bu başka bir döndü varsa oraya çıkar

Switch case 
Switch(gün){
Case 1: print(‘pazartesi’);break;
Case 2:print(‘salı’);break;
Default: print(‘böyle bir gün yok’);}
Throw try catch
Throw print(‘sunucuya ulaşilamadı’); //hata mesajı vermek için kullanılır
Try{
//Hata olabilecek kod bloğu
}catch(hata){
//hata olunca yapılacak kod bloğu
}
//uygulamayı çökmekten kurtarır


Class Nesne Oluşturma 
Class kapi{
String renk;
String malzeme;,
kapiyiAc(){}
}
kapi girisKapisi=new kapi();// giris kapısı adından kapi clasından türetilme değişken.
girisKapisi.renk=”beyaz”; //classta tanımlanan özellikleri direk çeker
girisKapisi.kapiciAc();//class içinde tanımlanan methodlara bu şekilde ulaşılabilir.
Class pencere{
String adi;
int boyutu;
pencere(this.adi,this.boyutu){} // bu yapıcı method
perncere.olustur()// buda eksara method
{
this.adi=”pimapen”;
this.boyutu=22;}
}
Getter – setter (oku-yaz)
Class pencere{
String adi;
int boyutu;
pencere(this.adi,this.boyutu){}
String getAdi(){return adi;}
int getBoyut(){return boyutu;}
String setAdi(g_ad){this.ad=g_ad;}
int setBoyut(g_boyut){this.boyut=g_boyut}
String kisagetAdi()=> adi; // bu getter kısa yazımı
int kisagetBoyut()=>boyutu; // kısa getter
kisasetAdi(g_adi)=>this.adi=g_adi;// kısa setter
kisasetBoyut(g_boyut)=>this.boyutu=g_boyut;
}

Main{
Pencere banyoPencere = new pencere(‘fırat pen’,22);
banyoPencere.getAdi()
banyoPencere.setAdi(‘pima pen’)
}
Kütüphane İşleri
import ‘../lib/dosya1.dart’;
import ‘../lib/dosya1.dart’ as selamver; //classlara ulaşmak için as ifadesi kullanılıyor
* alt + shift + f > kodları düzenlemek için


Widget Kavramına Giriş 
Her widget flutterda bir objedir
MVC= “models view controller” proje klasörlerini kategorilere göre ayırma tarzı bişey

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(5),
      child: Container(
        child: Text('yeni yazı'),
      ),
    );
  }
}

//bu staslessWidget main materialApp body’sine hello adında bir widget göndermektetir. Marginler dış boşlukPaddinglar iç boşluğu ifade eder.
Row-Column Widgeti
Row(
          mainAxisAlignment:
              MainAxisAlignment.start, //dizilecek widgetler soldan başlar
          mainAxisSize:
              MainAxisSize.max, //objelerin ne kadar yer kaplayacağı minimum yer
          crossAxisAlignment: CrossAxisAlignment.center, //yatayda hizalama
          textDirection: TextDirection.ltr, //yazının yönünü belirler-letf to right
          verticalDirection: VerticalDirection.up, //nesnelerin dikeyde nereden başlayacağını belirler
          textBaseline: TextBaseline.alphabetic,//alfebetik karakter altını hizalamak için
          children: <Widget>[Text('merhaba')],
        ),

  



Material App 
void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(appBar: AppBar(), body: rowText()),
  ));
}
// örnekde görüldüğü gibi materialApp direk runApp de çalıştırabiliyoruz.
GridView Kullanımı
https://dogukancaglakpinar.medium.com/flutterda-gridview-kullanımı-ve-çeşitleri-cd3a6267787b
//bu linkte çok açıklayıcı bir şekilde anlatmış




BuildContext Kavramı
Command 
open dart:openDevtools >
Open widget ispector page // yaparak widget agaçı görebiliyoruz.
Context bir widget haberleşmek için kullanılır.
Contex kapa bir widget builder widgeti içine alara contex oluşturabiliriz ya da bir stateless widget oluşturarak yapabiliriz.
Bir nesne oluştururken statesless widget vb oluşturulam hepbir değişken için constructor ister
Context hiyerarşik olarak üstündeki widgetlara ulaşabilir.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { /
    return MaterialApp(
bu context MyApp aittir. 
Widget build(BuildContext context) // widgetların ekrana çizildiği yerdir.burası mevcut verilerle çalışır.bitmiş kodların ekrana çizildiği yerdir burada server sorgu işlemleri yapılmaz çünkü buranın amacı widget çizmek
Stateless Widget
Statelesswidgetta değişken tanımlarken program sizden final ister çünkü değerlerin sabit olmasını bekler sürekli değişen işlemler istemez yapısı gereği.değişkeni tanımlarken değer vermezseniz onu constrocter eklemenizi ister.

Statefull Widget
class ornek extends StatefulWidget { // burası sabit olan kısım sabitlerin tanındığı kısım
  const ornek({super.key});

  @override
  State<ornek> createState() =>// state fonksiyon olarak çalışıyor.
      _ornekState(); //stafull widget olduğu için durum oluştur.
}

class _ornekState extends State<ornek> {
//burası kullanıcı etkileşimi ile değişşebilir.Adı üzerinde “State” kısmı
  int artanSayi = 0;

  sayiArtir() {
    setState(() {// set state bütün ekranı yeniler
      artanSayi++;
    });
  }

  sayiAzalt() {
    setState(() {// set state bütün ekranı yeniler
      artanSayi--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: sayiArtir,
          tooltip: '++++',
        ),
        FloatingActionButton(
          onPressed: sayiAzalt,
          tooltip: '----',
        ),
        Text('$artanSayi'),
      ],
    );
  }
}


Statefull widget yaşam döngüsünü bu linkten görebilirsiniz.
https://www.didierboelens.com/images/blog/state_diagram.png

bu konuya daha sonra ekleme yapılacakdır

Rotalar kavramı
void main() {
  runApp(const MaterialApp(
    initialRoute: '/', //bu ana rota yani ilk rota / işareti yani ben rotaları / işaretinden sonra gidicem
    routes: {
      "/":(context) => sayfa1();  //context burada ana yer demek. Ana root gibi birşey.
      "/sayfa2:(context) => sayfa2(); 
      "/sayfa3:(context) => sayfa3(); 
  }, ));}

 onPressed:()=>Navigator.pushNamed(context,'/sayfa2'),// çağırmak için bir fonksiyon tetikleme işlemi

GestureDetector
//tek tıklama çifk tıklama sürükleme üzerine gelme vb işlemlere tetikleme atamak için kullanılır. Bir widget sarmalanarak kullanılabilir.

Container Decoration
Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                //kutu dekorasyonu

                image: DecorationImage(
                    fit: BoxFit.cover, // resmi  çerçeveye sığdır.
                    image: NetworkImage("https://picsum.photos/200/300"))),
          ),

Containerlara şekil vermek içinkullanılınır.
Transform
ColoredBox(
            color: Colors.black,
            child: Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: const Color(0xFFE8581C),
                child: const Text('Apartment for rent!'),
              ),
Nesnenelara animasyon ekleme vb.bunun için o widget transfom özelliği varmı bir bak
TextField
https://www.yazilimdili.net/flutter-programlama/flutter-widget-class-sinif/flutter-textfield-widget-class/
bu linkte textFieldla ilgibi detaylı açıklama var
https://www.yazilimdili.net/flutter-dersleri/
bu sitete çok detaylı dökümanlar var
AlertView
Alert widget lazım olunca bakalım
Çerez Kullanımı
Uygulama içine çerez kaydetmek için önce
shared_preferences 2.1.2
paketini eklemek lazım


class ceresKontrol extends StatefulWidget {
  const ceresKontrol({super.key});

  @override
  State<ceresKontrol> createState() => _ceresKontrolState();
}

class _ceresKontrolState extends State<ceresKontrol> {
  final isimKontrol = TextEditingController();
  final soyIsimKontrol = TextEditingController();
  String isimStr = '';
  String soyIsimStr = '';
  bool kayitDurum = false;
  int kayitNo = 0;

  //global key
  final genelKontrol = GlobalKey<FormState>();
  @override
  // uygulamanın kapandığı yer
  void dispose() {
    isimKontrol.dispose();
    soyIsimKontrol.dispose();

    super.dispose();
  }

//async demek bişey bekleyecek o gelince işlem yapacak demek;
  kayitYap(String gIsim, String gSoyisim) async {
    //await beklemek için yapılır.
    //SharedPreferences.getInstance() oluştuğu anda fonksion çalışmaya başlıyor.
    final kayitAraci = await SharedPreferences.getInstance();

    //formun kontrol mekanizmaları geçilmişse yani validate olmuşsa.yani isim soy isim 3 haften büyükmü
    if (genelKontrol.currentState!.validate()) {
      //bu setbool shared_preferences paketinden gelme
      //setBool parametresini 'durum' olarak kayıt ediyoruz herhangi bir yerden getBool 'durum' diğer kağırılınca bunu getirecek
      kayitAraci.setBool('durum', true);
      kayitAraci.setInt('kayitNo', 1);
      //kayit yap fonksiyonundan gelen isim değişkeni
      kayitAraci.setString('isim', gIsim);
      kayitAraci.setString('soyisim', gSoyisim);
    }
  }

  void kayitGoster() async {
    final kayitAraci = await SharedPreferences.getInstance();
    bool? kDurum = kayitAraci.getBool('durum');
    String? kIsim = kayitAraci.getString('isim');
    String? SoyIsim = kayitAraci.getString('soyisim');
    
  }

  void kayitSil() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('sfsdffffffffffffffffffsdff'),
          Form(
            key: genelKontrol,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    validator: (deger) {
                      if (deger!.length < 3) {
                        return 'lütfen isminizi en az 3 harf olacak şekilde yazınız';
                      }
                    },
                    controller: isimKontrol,
                    decoration:
                        InputDecoration(hintText: 'lütfen isminizi giriniz'),
                  ),
                  TextFormField(
                    validator: (deger) {
                      if (deger!.length < 3) {
                        return 'lütfen Soy isminizi en az 3 harf olacak şekilde yazınız';
                      }
                    },
                    controller: soyIsimKontrol,
                    decoration: InputDecoration(
                        hintText: 'lütfen soy isminizi giriniz'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //expanded widget bulunduğu alanı kopmple kaplar
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () =>
                              kayitYap(isimKontrol.text, soyIsimKontrol.text),
                          child: Text('kaydet'),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('getir'),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('sil'),
                        ),
                      ))
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Text('isim $isimStr'),
                          Text('soyisim $soyIsimStr'),
                          Text('kayıt durumu $kayitDurum'),
                          Text('kayıt sırası $kayitNo'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

ValueNotifier, ValueListenableBuilder 
class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  // valuenatufier değer verme işlemi direk 0 değeri veremezsin çünkü bu değişken int değil
// tanımlama şekli
ValueNotifier<int> _counter = ValueNotifier<int>(0);
  void _incrementCounter() {
    _counter.value++; // arttıma şekli
    print(_counter.value);
  }
//gördüğünüz gibi text widget valuelistenable widget sarmalamamız gerekiyor.**stream builder sarmalayarak daha sonra value listenable kolayca döndürülebilir.
ValueListenableBuilder<int>(
                valueListenable: _counter,
                builder: (context, listenCounter, child) {
                  print('builder çalışıryor');
                  return Text(
                    '$listenCounter',
                    style: Theme.of(context).textTheme.bodyLarge,
                  );
                }),

  color: listenCounter > 0 ? Colors.green : Colors.red,
if olarak kullanmama izin vermiyor ama bu şekilde izin veriyor
Get_it service locator
Oluşturduğumuz arka planda çalışması gereken kodlarımı ‘mesela sınıflar’widgetlara enjakte etmek için kullanılır.
