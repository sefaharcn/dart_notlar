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
