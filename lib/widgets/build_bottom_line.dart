import 'package:flutter/material.dart';
import 'package:gb_app_ui/data/my_routes_list.dart';

class BuildBottomLine extends StatelessWidget {
  final MyRouteList myRouteList;
  const BuildBottomLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );;
  }
}
