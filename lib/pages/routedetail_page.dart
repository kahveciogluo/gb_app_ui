import 'package:flutter/material.dart';
import 'package:gb_app_ui/models/my_route.dart';
import 'package:gb_app_ui/widgets/buttons_for_routedetailpage.dart';
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

  final _controller = TextEditingController();
  String? val;

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
                  ButtonsForRouteDetailPage(),
                  SizedBox(height: 10.0),
                  _buildRouteName(),
                  SizedBox(height: 5.0),
                  _buildRouteDescription(),
                  SizedBox(height: 10.0),
                  _buildComment(),
                  SizedBox(height: 15.0,),
                  _buildCommentForm(),
                ],
              ),
          )
        ],
      ),
    );
  }

  Container _buildCommentForm() {
    return Container(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Material(
                    elevation: 5.0,
                    shadowColor: Colors.black54,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: TextField(
                      controller: _controller,
                      onChanged: (val) {
                        val = _controller.text.toString();
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(30),
                          hintText: "Yorum Yaz...",
                          hintStyle: TextStyle(color: Colors.black54, fontSize: 12.0),
                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(10.0)
                          )
                      ),
                    ),
                  ),
                );
  }

  Container _buildComment() {
    return Container(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: "Yorum ",
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                          children: <TextSpan>[
                            TextSpan(text: "(0)",
                                style: TextStyle(
                                    color: Colors.black26, fontSize: 14.0)
                            )]),
                    ),
                  ),
                );
  }

  Container _buildRouteDescription() {
    return Container(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(myRoute.description,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal))));
  }

  Container _buildRouteName() {
    return Container(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(myRoute.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold))));
  }

}
