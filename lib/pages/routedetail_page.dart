import 'package:flutter/material.dart';
import 'package:gb_app_ui/models/my_route.dart';
import 'package:gb_app_ui/widgets/about_button_widget.dart';
import 'package:gb_app_ui/widgets/detail_button_widget.dart';
import 'package:gb_app_ui/widgets/sliverappbar_for_routedetailpage.dart';

class RouteDetailPage extends StatefulWidget {
  MyRoute myRoute;
  RouteDetailPage({Key? key, required this.myRoute}) : super(key: key);

  @override
  _RouteDetailPageState createState() => _RouteDetailPageState(myRoute);
}

class _RouteDetailPageState extends State<RouteDetailPage> {
  MyRoute myRoute;
  _RouteDetailPageState(this.myRoute);

  String _currentButtonString = "Hakkında";

  @override
  Widget build(BuildContext context) {
    print(_currentButtonString);

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBarForRouteDetailPage(myRoute: myRoute),
          SliverFillRemaining(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
                    child: _buildButtons(context),
                  ),
                  (_currentButtonString=="Hakkında")? AboutButtonWidget(myRoute: myRoute) : DetailButtonWidget(myRoute: myRoute),
                ],
              ),
          )
        ],
      ),
    );
  }

  Row _buildButtons(BuildContext context) {
    return Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0))),
                            color: Color(0xffdac286),
                            elevation: 10,
                            child: Text("Hakkında",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0)),
                            onPressed: () {
                              setState(() {
                                _currentButtonString= "Hakkında";
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0))),
                            color: Color(0xff00b194),
                            elevation: 10,
                            child: Text("Başla",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11.0)),
                            onPressed: () {showAlertDialog(context);},
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0))),
                            color: Color(0xffe66931),
                            elevation: 10,
                            child: Text("Detaylar",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0)),
                            onPressed: () {
                              setState(() {
                                _currentButtonString= "Detaylar";
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  );
  }

  showAlertDialog(BuildContext context) {
    String alertMessage = "Hoş geldin kredini kullanmanın tam zamanı. Bu rotayı deneyimlemek için hesabınıza ücretsiz olarak tanımladığımız kredinizi kullanabilirsiniz.";

    Widget button1 = TextButton(
      child: Text("Kredi Kullan (1)", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0)),
      onPressed:  () {Navigator.pop(context);},
    );
    Widget button2 = TextButton(
      child: Text("Şimdi Değil", style: TextStyle(color: Colors.white, fontSize: 12.0)),
      onPressed:  () {Navigator.pop(context);},
    );

    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      backgroundColor: Theme.of(context).primaryColor,
      title: Row(
        children: [
          Icon(Icons.add_alert, color: Colors.white, size: 16.0,),
          SizedBox(width: 5,),
          Text("İlk Rotayı Deneyimlemeye Az Kaldı", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0)),
        ],
      ),
      content: Text(alertMessage, style: TextStyle(color: Colors.white, fontSize: 13.0)),
      actions: [
        button1,
        button2,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}
