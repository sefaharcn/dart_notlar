Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                //kutu dekorasyonu

                image: DecorationImage(
                    fit: BoxFit.cover, // resmi  çerçeveye sığdır.
                    image: NetworkImage("https://picsum.photos/200/300"))),
          ),

Containerlara şekil vermek içinkullanılınır.
Transform
ColoredBox(
            color: Colors.black,
            child: Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: const Color(0xFFE8581C),
                child: const Text('Apartment for rent!'),
              ),
Nesnenelara animasyon ekleme vb.bunun için o widget transfom özelliği varmı bir bak
