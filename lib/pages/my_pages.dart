import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:gb_app_ui/pages/destination_page.dart';
import 'package:gb_app_ui/pages/home_page.dart';
import 'package:gb_app_ui/pages/more_than_page.dart';
import 'package:gb_app_ui/pages/routes_page.dart';


class MyPages extends StatefulWidget {
  const MyPages({Key? key}) : super(key: key);

  @override
  _MyPagesState createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  Widget _currentScreen =  RoutePage();
  int _bottomNavIndex = 1;

  final iconList = <IconData>[
    Icons.home,
    Icons.alt_route_outlined,
    Icons.location_on_outlined,
    Icons.read_more,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentScreen,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        height: 50,
        activeColor: Theme.of(context).primaryColor,
        inactiveColor: Colors.black87,
        backgroundColor: Colors.white,
        notchSmoothness: NotchSmoothness.softEdge,
        gapLocation: GapLocation.none,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index){
          setState(() {
            _bottomNavIndex = index;
            if ((index==0)) {
              _currentScreen = HomePage();
            } else if((index==1)) {
              _currentScreen = RoutePage();
            } else if((index==2)) {
              _currentScreen = DestinationPage();
            }
            else {
              _currentScreen = MoreThanPage();
            }
          });
        },
        //other params
      ),
    );
  }
}
