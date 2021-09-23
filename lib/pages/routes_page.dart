import 'package:flutter/material.dart';
import 'package:gb_app_ui/data/my_routes_list.dart';
import 'package:gb_app_ui/models/my_route.dart';
import 'package:gb_app_ui/widgets/build_bottom_line.dart';
import 'package:gb_app_ui/widgets/build_top_line.dart';

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
      title: Center(child: Text("Keşfedeceğiniz Rotalar", style: TextStyle(fontFamily: "Poppins", fontSize: 14.5, fontWeight: FontWeight.bold))),
    );
  }

  ListView _buildRouteList() {
    return ListView.builder(
        itemCount: myRouteList.length,
        itemBuilder: (BuildContext context, int index){
          return Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0, top: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0) ,
                    image: DecorationImage(
                        image: AssetImage(myRouteList[index].imageUrl),
                        fit: BoxFit.fill
                    )
                ),
              ),
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0, top: 4.0),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10.0) ,
                      ),
                  ),
                ),
              Positioned(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BuildTopLine(index: index),
                    SizedBox(height: 10.0),
                    Text(myRouteList[index].name, style: TextStyle(color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.0),
                    BuildBottomLine(index: index)
                  ],
                ),
              ),
            ],
          );
        });
  }

}
