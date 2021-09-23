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
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                return ListTile(
                  leading: Container(
                      padding: EdgeInsets.all(8),
                      width: 100,
                      child: Placeholder()),
                  title: Text('Place ${index + 1}', textScaleFactor: 2),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
