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
