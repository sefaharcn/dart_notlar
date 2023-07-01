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
