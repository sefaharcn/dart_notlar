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
