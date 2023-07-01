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
