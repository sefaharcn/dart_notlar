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
