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
