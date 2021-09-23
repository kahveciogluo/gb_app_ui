import 'package:flutter/material.dart';
import 'package:gb_app_ui/data/my_routes_list.dart';

class BottomLineWidget extends StatelessWidget {
  List myRouteList = MyRouteList().myRoutesList;
  int index;
  BottomLineWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5.0, left: 5.0, right: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add_location_alt_outlined, color: Colors.white, size: 15.0,),
                Text((myRouteList[index].destinationCount).toString()+" Nokta",style: TextStyle(color: Colors.white, fontSize: 9.0)),
              ],
            ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.rule, color: Colors.white, size: 15.0,),
                Text((myRouteList[index].distance.amount).toString()+" "+(myRouteList[index].distance.unit),style: TextStyle(color: Colors.white, fontSize: 9.0)),
              ],
            ),
         _buildStep(),
         _buildCalories(),
        ],
      ),
    );
  }

  Widget _buildDurationTime() {
    if (myRouteList[index].durationTime.amount != null){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.timelapse_outlined, color: Colors.white, size: 15.0,),
          Text((myRouteList[index].durationTime.amount).toString()+" "+(myRouteList[index].durationTime.unit),style: TextStyle(color: Colors.white, fontSize: 9.0)),
        ],
      );
    };
    return Text("");
  }

  Widget _buildStep() {
    if (myRouteList[index].step != null){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.workspaces_outline, color: Colors.white, size: 15.0,),
          Text((myRouteList[index].step).toString()+" Adım",style: TextStyle(color: Colors.white, fontSize: 9.0)),
        ],
      );
    };
    return Text("");
  }

  Widget _buildCalories() {
    if (myRouteList[index].step != null){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.local_fire_department_outlined, color: Colors.white, size: 15.0,),
          Text((myRouteList[index].step).toString()+" Kalori",style: TextStyle(color: Colors.white, fontSize: 9.0)),
        ],
      );
    };
    return Text("");
  }

}
