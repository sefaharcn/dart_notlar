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
