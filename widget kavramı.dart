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
