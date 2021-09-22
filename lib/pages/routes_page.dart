import 'package:flutter/material.dart';
import 'package:gb_app_ui/data/my_routes_list.dart';
import 'package:gb_app_ui/models/my_route.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  List<MyRoute> myRouteList = MyRouteList().myRoutesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
          child: _buildRouteList()
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
      ),
      title: Center(child: Text('Keşfedeceğiniz Rotalar', style: TextStyle(fontFamily: 'Poppins', fontSize: 14.5, fontWeight: FontWeight.bold))),
    );
  }

  ListView _buildRouteList() {
    return ListView.builder(
        itemCount: myRouteList.length,
        itemBuilder: (BuildContext context, int index){
          return Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                padding: EdgeInsets.only(left: 4.0, right: 4.0),
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(myRouteList[index].imageUrl, fit: BoxFit.fill),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width ,
                height: 150,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  padding: EdgeInsets.only(left: 4.0, right: 4.0),
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                  ),
                )
              ),
            ],
          );
        });
  }

}
