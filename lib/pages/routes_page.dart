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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 2.0),
                        _buildRouteTypeIcon(index),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text((myRouteList[index].rate).toString(), style: TextStyle(color: Colors.white, fontSize: 12.0),),
                            Icon(Icons.star, color: Colors.orangeAccent,),
                          ],
                        ),
                        SizedBox(width: 2.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(myRouteList[index].name, style: TextStyle(color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_location_alt_outlined, color: Colors.white, size: 15.0,),
                            Text((myRouteList[index].destinationCount).toString()+' Nokta',style: TextStyle(color: Colors.white, fontSize: 9.0)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.rule, color: Colors.white, size: 15.0,),
                            Text((myRouteList[index].distance.amount).toString()+' '+(myRouteList[index].distance.unit),style: TextStyle(color: Colors.white, fontSize: 9.0)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }

  Icon _buildRouteTypeIcon(int index) {
    if(myRouteList[index].myRouteType == MyRouteType.bike){
      return Icon(Icons.directions_bike_rounded, color: Colors.white,);
    }
    else if(myRouteList[index].myRouteType == MyRouteType.car){
      return Icon(Icons.car_rental, color: Colors.white,);
    }
    return Icon(Icons.directions_walk_rounded, color: Colors.white);
  }

}
