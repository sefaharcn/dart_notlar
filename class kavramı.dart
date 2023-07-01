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
  :super(degisken) // üst sınıfa değişken göndermek için kullanılır.Yapıcı methot çağırır. üst klasın ilgili metodunu kullandığınızı belirtmiş oluyorsunuz
Static num esyaSayisi=0; // bu degisken bir kere üretilir.farklı classlarda olurturulsada ikinci bir degisken oluşturulmaz yani hangi classtan çağırırsanız çağırız aynı değişken değeri üzerinde oynama yapar.global değişken gibi.

