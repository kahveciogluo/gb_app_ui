import 'package:gb_app_ui/models/my_route.dart';

class MyRouteList {
  List<MyRoute> myRoutesList = [
    //Route1
    MyRoute(name: "Tarihi Yarımadanın Asırlık Lezzetleri",
        myRouteType: MyRouteType.walk,
        imageUrl: "assets/pics/1.png",
        rate: 4.8,
        destinationCount: 12,
        distance: Distance(amount: 5, unit: "Km"),
        step: 6749,
        calorie: 206,
        description: "İstanbul'un en gözde tarihi mekanlarına ve "
            "en güzel müzelerine birlikte gidelim mi? Çeşmesinden dikilitaşına,"
            "müzesinden sarnıcına kadar pek çok yer keşfetme imkanımızın olacağı"
            "bu rotamızda size unutamayacağınız bir gün yaşatacağız."
    ),
    //Route2
    MyRoute(name: "Sürüş Keyfiniz Bol, Yolunuz Düz Olsun",
      myRouteType: MyRouteType.car,
      imageUrl: "assets/pics/2.jpg",
      rate: 4.7,
      destinationCount: 13,
      distance: Distance(amount: 35, unit: "Km"),
      durationTime: DurationTime(amount: 23, unit: "Dakika"),
        description: "İstanbul'un en gözde tarihi mekanlarına ve "
            "en güzel müzelerine birlikte gidelim mi? Çeşmesinden dikilitaşına,"
            "müzesinden sarnıcına kadar pek çok yer keşfetme imkanımızın olacağı"
            "bu rotamızda size unutamayacağınız bir gün yaşatacağız."
    ),
    //Route3
    MyRoute(name: "Tarihin ve Müzenin Şehri: İstanbul",
      myRouteType: MyRouteType.walk,
      imageUrl: "assets/pics/3.jpg",
      rate: 4.7,
      destinationCount: 20,
      distance: Distance(amount: 4, unit: "Km"),
      step: 5497,
      calorie: 168,
        description: "İstanbul'un en gözde tarihi mekanlarına ve "
            "en güzel müzelerine birlikte gidelim mi? Çeşmesinden dikilitaşına,"
            "müzesinden sarnıcına kadar pek çok yer keşfetme imkanımızın olacağı"
            "bu rotamızda size unutamayacağınız bir gün yaşatacağız."
    ),
    //Route4
    MyRoute(name: "Beyoğlu'nun Arka Sokakları",
      myRouteType: MyRouteType.walk,
      imageUrl: "assets/pics/4.jpg",
      rate: 4.7,
      destinationCount: 16,
      distance: Distance(amount: 3, unit: "Km"),
      step: 4030,
      calorie: 123,
        description: "İstanbul'un en gözde tarihi mekanlarına ve "
            "en güzel müzelerine birlikte gidelim mi? Çeşmesinden dikilitaşına,"
            "müzesinden sarnıcına kadar pek çok yer keşfetme imkanımızın olacağı"
            "bu rotamızda size unutamayacağınız bir gün yaşatacağız."
    ),
    //Route5
    MyRoute(name: "Kadıköy'e Buyur Bir de Buradan Bak",
      myRouteType: MyRouteType.walk,
      imageUrl: "assets/pics/5.jpg",
      rate: 4.5,
      destinationCount: 8,
      distance: Distance(amount: 3, unit: "Km"),
      step: 10345,
      calorie: 315,
        description: "İstanbul'un en gözde tarihi mekanlarına ve "
            "en güzel müzelerine birlikte gidelim mi? Çeşmesinden dikilitaşına,"
            "müzesinden sarnıcına kadar pek çok yer keşfetme imkanımızın olacağı"
            "bu rotamızda size unutamayacağınız bir gün yaşatacağız."
    ),
    //Route6
    MyRoute(name: "Bisikletin Şehri: İstanbul",
      myRouteType: MyRouteType.bike,
      imageUrl: "assets/pics/1.png",
      rate: 4.5,
      destinationCount: 15,
      distance: Distance(amount: 16, unit: "Km"),
      durationTime: DurationTime(amount: 48, unit: "Dakika"),
      calorie: 544,
        description: "İstanbul'un en gözde tarihi mekanlarına ve "
            "en güzel müzelerine birlikte gidelim mi? Çeşmesinden dikilitaşına,"
            "müzesinden sarnıcına kadar pek çok yer keşfetme imkanımızın olacağı"
            "bu rotamızda size unutamayacağınız bir gün yaşatacağız."
    ),
    //Route7
    MyRoute(name: "Kasr-ı İstanbul",
      myRouteType: MyRouteType.car,
      imageUrl: "assets/pics/2.jpg",
      rate: 4.4,
      destinationCount: 10,
      distance: Distance(amount: 47, unit: "Km"),
      durationTime: DurationTime(amount: 31, unit: "Dakika"),
        description: "İstanbul'un en gözde tarihi mekanlarına ve "
            "en güzel müzelerine birlikte gidelim mi? Çeşmesinden dikilitaşına,"
            "müzesinden sarnıcına kadar pek çok yer keşfetme imkanımızın olacağı"
            "bu rotamızda size unutamayacağınız bir gün yaşatacağız."
    ),
    //Route8
    MyRoute(name: "İstanbul Boğazı'nın Manevi Muhafızları",
      myRouteType: MyRouteType.car,
      imageUrl: "assets/pics/3.jpg",
      rate: 4.4,
      destinationCount: 9,
      distance: Distance(amount: 82, unit: "Km"),
      durationTime: DurationTime(amount: 55, unit: "Dakika"),
        description: "İstanbul'un en gözde tarihi mekanlarına ve "
            "en güzel müzelerine birlikte gidelim mi? Çeşmesinden dikilitaşına,"
            "müzesinden sarnıcına kadar pek çok yer keşfetme imkanımızın olacağı"
            "bu rotamızda size unutamayacağınız bir gün yaşatacağız."
    ),
    //Route9
    MyRoute(name: "Sahili Pedalla Geç",
      myRouteType: MyRouteType.bike,
      imageUrl: "assets/pics/4.jpg",
      rate: 4.4,
      destinationCount: 18,
      distance: Distance(amount: 12, unit: "Km"),
      durationTime: DurationTime(amount: 36, unit: "Dakika"),
      calorie: 408,
        description: "İstanbul'un en gözde tarihi mekanlarına ve "
            "en güzel müzelerine birlikte gidelim mi? Çeşmesinden dikilitaşına,"
            "müzesinden sarnıcına kadar pek çok yer keşfetme imkanımızın olacağı"
            "bu rotamızda size unutamayacağınız bir gün yaşatacağız."
    ),
    //Route10
    MyRoute(name: "İstanbul'un Nostaljisi: Kuzguncuk",
      myRouteType: MyRouteType.walk,
      imageUrl: "assets/pics/5.jpg",
      rate: 4.4,
      destinationCount: 13,
      distance: Distance(amount: 2, unit: "Km"),
      step: 2544,
      calorie: 78,
        description: "İstanbul'un en gözde tarihi mekanlarına ve "
            "en güzel müzelerine birlikte gidelim mi? Çeşmesinden dikilitaşına,"
            "müzesinden sarnıcına kadar pek çok yer keşfetme imkanımızın olacağı"
            "bu rotamızda size unutamayacağınız bir gün yaşatacağız."
    ),
  ];
}