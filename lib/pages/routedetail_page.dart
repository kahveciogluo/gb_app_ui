import 'package:flutter/material.dart';
import 'package:gb_app_ui/models/my_route.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBarForRouteDetailPage(myRoute: myRoute),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildButtons(),
                SizedBox(height: 10.0),
                Container(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(myRoute.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)))),
                SizedBox(height: 5.0),
                Container(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(myRoute.description,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal)))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildButtons() {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
      child: Row(
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
                onPressed: () {},
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
                onPressed: () {},
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
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
