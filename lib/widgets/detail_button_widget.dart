import 'package:flutter/material.dart';
import 'package:gb_app_ui/models/my_route.dart';

class DetailButtonWidget extends StatelessWidget {
  MyRoute myRoute;
  DetailButtonWidget({Key? key, required this.myRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),
        _buildRouteName(),
        SizedBox(height: 15.0),
        _buildInfo()
      ],
    );
  }

  Container _buildInfo() {
    return Container(
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Nokta",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0)),
                    Text(myRoute.destinationCount.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0)),
                  ],
                ),
              ),
            ),
            SizedBox(width: 5.0),
            Expanded(
              flex: 1,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Mesafe",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0)),
                    Text(myRoute.distance.amount.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0)),
                  ],
                ),
              ),
            ),
            SizedBox(width: 5.0),
            Expanded(
              flex: 1,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Kalori",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0)),
                    Text(myRoute.calorie.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0)),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
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
