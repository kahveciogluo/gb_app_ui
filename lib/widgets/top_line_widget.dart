import 'package:flutter/material.dart';
import 'package:gb_app_ui/data/my_routes_list.dart';
import 'package:gb_app_ui/models/my_route.dart';

class TopLineWidget extends StatelessWidget {
  List myRouteList = MyRouteList().myRoutesList;
  int index;
  TopLineWidget({Key? key, required this.index}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildRouteTypeIcon(index),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text((myRouteList[index].rate).toString(), style: TextStyle(color: Colors.white, fontSize: 12.0),),
              Icon(Icons.star, color: Colors.orangeAccent,),
            ],
          ),
        ],
      ),
    );
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
